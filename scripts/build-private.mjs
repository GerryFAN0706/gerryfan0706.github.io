// Renders each _private_src/pages/<slug>.md -> _private_build/<slug>.html (styled),
// injecting a shared top nav bar. The npm "private:build" script then runs StaticCrypt
// on all of them (one shared salt via .staticrypt.json) so a single login unlocks every
// subpage. Output goes to the committed, AES-encrypted private/ directory.
import { marked } from "marked";
import { readFileSync, writeFileSync, mkdirSync } from "fs";

marked.setOptions({ gfm: true, breaks: false });

// Top-nav pages (rendered from _private_src/pages/<slug>.md).
export const PAGES = [
  { slug: "index", label: "🏠 Hub" },
  { slug: "status", label: "📊 Status" },
  { slug: "pipeline", label: "📚 Pipeline" },
  { slug: "career", label: "🧭 Career" },
  { slug: "projects", label: "🏗️ Projects" },
  { slug: "positions", label: "💼 Positions" },
  { slug: "links", label: "🔗 Links" },
];

// One page per project (rendered from _private_src/projects/<src>.md). Reached from the
// Status board, not the top nav. Output file is proj-<src>.html.
export const PROJECTS = [
  "traffic", "trust", "hai", "comm", "gnn",
  "platform-a", "platform-b", "nsfc", "indep",
];

const CSS = `
  :root{
    --ink:#1f2937; --muted:#6b7280; --line:#e5e7eb; --soft:#f9fafb;
    --accent:#4c51bf; --accent-soft:#eef2ff;
    --ok:#047857; --ok-bg:#ecfdf5; --rev:#1d4ed8; --rev-bg:#eff6ff;
    --warn:#b45309; --warn-bg:#fffbeb; --stop:#b91c1c; --stop-bg:#fef2f2;
    --idea:#7c3aed; --idea-bg:#f5f3ff;
  }
  *{box-sizing:border-box}
  body{margin:0;background:#f3f4f6;color:var(--ink);
    font:16px/1.6 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Noto Sans SC",sans-serif}
  .wrap{max-width:940px;margin:0 auto;padding:1rem 1.15rem 4rem;background:#fff;
    box-shadow:0 1px 3px rgba(0,0,0,.06);min-height:100vh}
  h1{font-size:1.6rem;margin:.4rem 0 .3rem}
  h2{font-size:1.28rem;margin:2rem 0 .8rem;padding-bottom:.35rem;border-bottom:2px solid var(--line)}
  h3{font-size:1.05rem;margin:1.3rem 0 .5rem;color:#374151}
  a{color:var(--accent);text-decoration:none} a:hover{text-decoration:underline}
  code{background:#f3f4f6;padding:1px 6px;border-radius:5px;font-size:.88em}
  hr{border:0;border-top:1px solid var(--line);margin:1.6rem 0}
  .updated{color:var(--muted);font-size:.9em;margin:0 0 1.2rem}

  /* sticky page nav bar */
  nav.pnav{display:flex;flex-wrap:wrap;gap:.4rem;margin:0 -0.15rem 1.4rem;padding:.6rem .7rem;
    background:var(--accent-soft);border-radius:12px;position:sticky;top:.4rem;z-index:5}
  nav.pnav a{padding:.34rem .8rem;border-radius:999px;font-size:.85em;font-weight:600;
    color:var(--accent);background:#fff;border:1px solid #dfe3f6}
  nav.pnav a.here{background:var(--accent);color:#fff}
  nav.pnav a:hover{background:var(--accent);color:#fff;text-decoration:none}
  .back{margin:.1rem 0 1rem;font-size:.9em}

  /* hub menu cards */
  .hub-menu{display:grid;grid-template-columns:repeat(auto-fit,minmax(250px,1fr));gap:.8rem;margin:1rem 0}
  .hub-menu a{display:block;border:1px solid var(--line);border-radius:12px;padding:1rem;background:var(--soft);color:var(--ink)}
  .hub-menu a:hover{border-color:var(--accent);box-shadow:0 3px 10px rgba(76,81,191,.12);text-decoration:none}
  .hub-menu a strong{display:block;color:var(--accent);margin-bottom:.25rem}
  .hub-menu a span{font-size:.9em;color:var(--muted)}

  /* at-a-glance cards */
  .cards{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:.8rem;margin:0 0 1.2rem}
  .card{border:1px solid var(--line);border-radius:12px;padding:.9rem 1rem;background:var(--soft)}
  .card .k{font-size:.78em;color:var(--muted);text-transform:uppercase;letter-spacing:.03em}
  .card .v{font-size:1.5rem;font-weight:700;margin-top:.15rem}
  .card.accent{background:var(--accent-soft);border-color:#dfe3f6}

  /* callouts */
  .callout{border-radius:10px;padding:.75rem 1rem;margin:1rem 0;border-left:4px solid}
  .callout.todo{background:var(--accent-soft);border-color:var(--accent)}
  .callout p{margin:.3rem 0}

  /* tables */
  table{border-collapse:collapse;width:100%;margin:.8rem 0;font-size:.93em}
  th,td{border:1px solid var(--line);padding:7px 10px;text-align:left;vertical-align:top}
  th{background:var(--soft);font-weight:600}
  tbody tr:nth-child(even){background:#fcfcfd}

  /* badges */
  .badge{display:inline-block;font-size:.74em;font-weight:700;padding:2px 8px;border-radius:999px;white-space:nowrap}
  .b-ok{background:var(--ok-bg);color:var(--ok)}
  .b-rev{background:var(--rev-bg);color:var(--rev)}
  .b-warn{background:var(--warn-bg);color:var(--warn)}
  .b-stop{background:var(--stop-bg);color:var(--stop)}
  .b-idea{background:var(--idea-bg);color:var(--idea)}
  .b-a{background:#eef2ff;color:#4338ca}

  /* collapsible */
  details{border:1px solid var(--line);border-radius:10px;margin:.8rem 0;background:#fff;overflow:hidden}
  details[open]{box-shadow:0 1px 4px rgba(0,0,0,.05)}
  summary{cursor:pointer;font-weight:700;padding:.7rem 1rem;background:var(--soft);list-style:none}
  summary::-webkit-details-marker{display:none}
  summary:before{content:"▸ ";color:var(--accent)}
  details[open] summary:before{content:"▾ "}
  details > *:not(summary){margin-left:1rem;margin-right:1rem}
  details > *:last-child{margin-bottom:1rem}

  blockquote{border-left:3px solid var(--line);margin:1rem 0;padding:.2rem 1rem;color:#555;background:var(--soft);border-radius:0 8px 8px 0}
`;

function navBar(current) {
  return `<nav class="pnav">` +
    PAGES.map((p) => `<a href="${p.slug}.html"${p.slug === current ? ' class="here"' : ""}>${p.label}</a>`).join("") +
    `</nav>`;
}

function wrap(navHtml, body) {
  return `<!doctype html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="noindex, nofollow">
<title>Notes</title>
<style>${CSS}</style></head><body><div class="wrap">
${navHtml}
${body}
</div></body></html>`;
}

mkdirSync("_private_build", { recursive: true });

// Top-nav pages
for (const p of PAGES) {
  const body = marked.parse(readFileSync(`_private_src/pages/${p.slug}.md`, "utf8"));
  const out = `_private_build/${p.slug}.html`;
  writeFileSync(out, wrap(navBar(p.slug), body));
  console.log("built " + out);
}

// Project pages (Status highlighted in nav + a back link)
for (const src of PROJECTS) {
  const body = marked.parse(readFileSync(`_private_src/projects/${src}.md`, "utf8"));
  const back = `<p class="back"><a href="status.html">← Back to Status Board</a></p>`;
  const out = `_private_build/proj-${src}.html`;
  writeFileSync(out, wrap(navBar("status"), back + body));
  console.log("built " + out);
}
