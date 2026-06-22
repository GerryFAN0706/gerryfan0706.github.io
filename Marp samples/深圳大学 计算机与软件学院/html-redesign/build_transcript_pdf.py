"""Convert transcript.md → transcript.html (styled) → transcript.pdf via Chrome."""

import subprocess
import sys
from pathlib import Path

import markdown

if sys.stdout.encoding and sys.stdout.encoding.lower() != "utf-8":
    try:
        sys.stdout.reconfigure(encoding="utf-8")
    except Exception:
        pass

BASE = Path(__file__).parent
MD   = BASE / "transcript.md"
HTML = BASE / "transcript.html"
PDF  = BASE / "transcript.pdf"

CHROME_CANDIDATES = [
    r"C:\Program Files\Google\Chrome\Application\chrome.exe",
    r"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",
    r"C:\Program Files\Microsoft\Edge\Application\msedge.exe",
    r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
]


CSS = """
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Noto+Sans+SC:wght@400;500;600;700;800&family=Noto+Serif+SC:wght@400;500;600;700&display=swap');

@page {
  size: A4;
  margin: 22mm 20mm 22mm 20mm;
}

* { box-sizing: border-box; }

body {
  font-family: "Noto Sans SC", "Inter", "PingFang SC", sans-serif;
  font-size: 11.5pt;
  line-height: 1.7;
  color: #0a0a0a;
  max-width: 170mm;
  margin: 0 auto;
  letter-spacing: 0.005em;
}

h1 {
  font-family: "Noto Sans SC", "Inter", sans-serif;
  font-weight: 800;
  font-size: 22pt;
  line-height: 1.2;
  color: #0a0a0a;
  letter-spacing: -0.01em;
  margin: 0 0 8pt;
  padding-bottom: 8pt;
  border-bottom: 2px solid #0d9488;
}

h1 + p strong:first-child {
  font-size: 12pt;
}

h2 {
  font-family: "Noto Sans SC", "Inter", sans-serif;
  font-weight: 700;
  font-size: 14pt;
  line-height: 1.3;
  color: #0a0a0a;
  letter-spacing: -0.005em;
  margin: 22pt 0 8pt;
  padding-bottom: 4pt;
  border-bottom: 1px solid #d4d4d4;
  page-break-after: avoid;
}

h2 em {
  font-style: italic;
  font-weight: 500;
  font-size: 10.5pt;
  color: #71717a;
  font-family: "Inter", sans-serif;
  letter-spacing: 0.01em;
}

p {
  margin: 6pt 0;
}

p em {
  font-style: italic;
  color: #71717a;
  font-size: 10.5pt;
}

strong {
  color: #0d9488;
  font-weight: 700;
}

blockquote {
  margin: 6pt 0 6pt 0;
  padding: 6pt 0 6pt 14pt;
  border-left: 3px solid #0d9488;
  color: #1f2937;
  font-family: "Noto Serif SC", "Noto Sans SC", serif;
  font-size: 11.5pt;
  line-height: 1.85;
  background: transparent;
}

blockquote p {
  margin: 6pt 0;
}

blockquote strong {
  color: #0d9488;
  font-weight: 700;
}

blockquote em {
  font-family: "Inter", sans-serif;
  font-style: italic;
  color: #71717a;
  font-size: 10pt;
  font-weight: 500;
}

hr {
  border: none;
  border-top: 1px solid #e5e5e5;
  margin: 18pt 0;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin: 10pt 0;
  font-size: 10.5pt;
  font-family: "Inter", "Noto Sans SC", sans-serif;
  page-break-inside: avoid;
}

th, td {
  text-align: left;
  padding: 6pt 10pt;
  border-bottom: 1px solid #e5e5e5;
}

th {
  font-weight: 800;
  color: #0a0a0a;
  background: #f4f4f5;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-size: 9.5pt;
}

td {
  font-variant-numeric: tabular-nums;
}

td:nth-child(2),
td:nth-child(3),
th:nth-child(2),
th:nth-child(3) {
  text-align: right;
}

.footer-mark {
  font-size: 9pt;
  color: #71717a;
  font-style: italic;
}
"""


def find_chrome() -> str:
    for c in CHROME_CANDIDATES:
        if Path(c).exists():
            return c
    raise SystemExit("Chrome or Edge not found.")


def md_to_html(md_text: str) -> str:
    body = markdown.markdown(
        md_text,
        extensions=["tables", "fenced_code", "sane_lists"],
        output_format="html5",
    )
    html = f"""<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <title>樊光瑞 · 演讲稿</title>
  <style>{CSS}</style>
</head>
<body>
{body}
</body>
</html>
"""
    return html


def print_to_pdf(chrome: str, html_path: Path, pdf_path: Path) -> None:
    url = "file:///" + str(html_path.resolve()).replace("\\", "/")
    cmd = [
        chrome,
        "--headless=new",
        "--disable-gpu",
        f"--print-to-pdf={pdf_path}",
        "--print-to-pdf-no-header",
        "--virtual-time-budget=15000",
        "--run-all-compositor-stages-before-draw",
        "--no-pdf-header-footer",
        url,
    ]
    subprocess.run(cmd, check=False, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)


def main() -> None:
    chrome = find_chrome()
    md_text = MD.read_text(encoding="utf-8")
    HTML.write_text(md_to_html(md_text), encoding="utf-8")
    print(f"Built: {HTML.name}")
    print_to_pdf(chrome, HTML, PDF)
    if PDF.exists():
        size_kb = PDF.stat().st_size / 1024
        print(f"Built: {PDF.name} ({size_kb:.1f} KB)")
    else:
        print("PDF generation failed.")


if __name__ == "__main__":
    main()
