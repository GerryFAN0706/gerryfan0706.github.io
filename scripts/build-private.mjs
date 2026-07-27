// Renders _private_src/private.md -> _private_build/index.html (plain, styled HTML).
// The npm "private:build" script then runs StaticCrypt on that file to produce the
// AES-encrypted, committed page at private/index.html.
import { marked } from "marked";
import { readFileSync, writeFileSync, mkdirSync } from "fs";

const md = readFileSync("_private_src/private.md", "utf8");
const body = marked.parse(md);

const html = `<!doctype html>
<html lang="en"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="noindex, nofollow">
<title>Notes</title>
<style>
  body{max-width:900px;margin:2rem auto;padding:0 1.1rem;
       font:16px/1.65 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Noto Sans SC",sans-serif;color:#222;background:#fff}
  h1,h2{border-bottom:1px solid #e5e7eb;padding-bottom:.3rem}
  h1{font-size:1.7rem} h2{font-size:1.3rem;margin-top:2rem}
  h3{font-size:1.05rem;color:#374151}
  table{border-collapse:collapse;width:100%;margin:1rem 0;font-size:.94em}
  td,th{border:1px solid #d1d5db;padding:6px 10px;text-align:left;vertical-align:top}
  th{background:#f3f4f6}
  code{background:#f3f4f6;padding:1px 5px;border-radius:4px;font-size:.9em}
  blockquote{border-left:3px solid #d1d5db;margin-left:0;padding:.2rem 1rem;color:#555;background:#fafafa}
  a{color:#4c51bf}
</style></head><body>
${body}
</body></html>`;

mkdirSync("_private_build", { recursive: true });
writeFileSync("_private_build/index.html", html);
console.log("built _private_build/index.html (" + html.length + " bytes)");
