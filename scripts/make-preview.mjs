// Generates a lightweight CONTENT preview of the redesigned pages into _private_build/preview/.
// This is NOT the themed Jekyll site (sandbox can't run Jekyll/Docker) — it renders the actual
// source Markdown/HTML so the content and structure can be reviewed before commit.
import { marked } from "marked";
import { readFileSync, writeFileSync, mkdirSync, copyFileSync, existsSync } from "fs";

const R = "E:/gerryfan0706.github.io";
const OUT = `${R}/_private_build/preview`;
mkdirSync(OUT, { recursive: true });

const strip = (s) => s.replace(/^---\r?\n[\s\S]*?\r?\n---\r?\n/, "");
// drop Liquid tags so they don't show literally
const delid = (s) => s.replace(/\{%[\s\S]*?%\}/g, "").replace(/\{\{[\s\S]*?\}\}/g, "");

const CSS = `
<style>
 body{max-width:820px;margin:0 auto;padding:1.5rem 1.2rem 4rem;
   font:16px/1.65 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Noto Sans SC",sans-serif;color:#222}
 nav.top{position:sticky;top:0;background:#fff;border-bottom:1px solid #eee;padding:.7rem 0;margin-bottom:1.5rem;font-size:.95em}
 nav.top a{margin-right:1rem;text-decoration:none;color:#4c51bf;font-weight:600}
 h1,h2{border-bottom:1px solid #e5e7eb;padding-bottom:.3rem}
 h2{margin-top:2rem} a{color:#4c51bf}
 .banner{background:#fff7ed;border:1px solid #fed7aa;border-left:4px solid #f59e0b;padding:.8rem 1rem;border-radius:8px;margin-bottom:1.4rem;font-size:.92em;color:#7c2d12}
</style>`;

const NAV = `<nav class="top"><a href="index.html">▲ preview home</a>
<a href="about.html">Home</a><a href="research.html">Research</a>
<a href="publications-selected.html">Publications</a><a href="cv.html">CV</a>
<a href="private-content.html">🔒 Private (plaintext)</a></nav>`;

const BANNER = `<div class="banner"><strong>Content preview only.</strong> This shows the redesigned page copy rendered from source. It is NOT the themed site (sidebar, fonts, colors come from the Jekyll theme, which the sandbox can't run). Judge the <em>content &amp; structure</em> here.</div>`;

function page(title, inner) {
  return `<!doctype html><html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1"><title>${title} — preview</title>${CSS}</head>
<body>${NAV}${BANNER}${inner}</body></html>`;
}

// Home (about.md) and Research (research.md): strip front matter + Liquid, render markdown (inline HTML/CSS passes through)
writeFileSync(`${OUT}/about.html`, page("Home", marked.parse(delid(strip(readFileSync(`${R}/_pages/about.md`, "utf8"))))));
writeFileSync(`${OUT}/research.html`, page("Research", marked.parse(delid(strip(readFileSync(`${R}/_pages/research.md`, "utf8"))))));
writeFileSync(`${OUT}/cv.html`, page("CV", marked.parse(delid(strip(readFileSync(`${R}/_pages/cv.md`, "utf8"))))));

// Publications: extract the hand-built Selected block (style + div) from publications.html
const pub = readFileSync(`${R}/_pages/publications.html`, "utf8");
const a = pub.indexOf("<style>\n.selected-pubs");
const b = pub.indexOf("<!-- Navigation and Statistics -->");
const sel = a >= 0 && b > a ? pub.slice(a, b) : "<p>(selected block not found)</p>";
writeFileSync(`${OUT}/publications-selected.html`,
  page("Publications — Selected block", `<h1>Publications</h1><p>New block that appears above the existing stats/list:</p>${sel}`));

// Private content: render the plaintext (pre-encryption) so the private material is reviewable
const priv = existsSync(`${R}/_private_build/index.html`) ? readFileSync(`${R}/_private_build/index.html`, "utf8") : "<p>run npm run private:build first</p>";
writeFileSync(`${OUT}/private-content.html`, priv.replace("</head>", `${CSS}</head>`).replace("<body>", `<body>${NAV}${BANNER}`));

// Landing
writeFileSync(`${OUT}/index.html`, page("Redesign preview", `
<h1>Redesign preview</h1>
<p>Open each page and review the content. The public pages are content-only renders; the private page shows the plaintext that will be AES-encrypted behind your passphrase.</p>
<ul>
 <li><a href="about.html">Home / About</a> — new positioning + four directions</li>
 <li><a href="research.html">Research</a> — new page, four directions with "questions I ask"</li>
 <li><a href="publications-selected.html">Publications</a> — new Selected Publications block</li>
 <li><a href="cv.html">CV</a> — new positioning line</li>
 <li><a href="private-content.html">🔒 Private content</a> — what lives behind the password at <code>/private/</code></li>
</ul>`));

console.log("preview written to " + OUT);
