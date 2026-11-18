"""Build the public (web) editions of the CV from the private LaTeX sources.

The master CV lists date of birth and mobile number. The web edition drops both
and keeps everything else identical, then writes:
    files/guangrui-fan-cv-en.pdf
    files/guangrui-fan-cv-cn.pdf

Usage (from the repository root, XeLaTeX required):
    python scripts/build_web_cv.py ["path/to/main  CV used"]
"""
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

REPO = Path(__file__).resolve().parents[1]
DEFAULT_SRC = REPO.parent / "gerryfan0706-private" / "CV" / "main  CV used"

# (source tex, output pdf, [(pattern, replacement)])
EDITIONS = [
    (
        "Guangrui_Fan_CV_Concise_EN.tex",
        "guangrui-fan-cv-en.pdf",
        [
            (r"Date of Birth:[^\\\n]*\\quad\s*", ""),
            (r"\s*\\quad\s*Mobile:[^\\\n]*", ""),
        ],
    ),
    (
        "Guangrui_Fan_CV_Concise_CN.tex",
        "guangrui-fan-cv-cn.pdf",
        [
            (r"出生年月：[^\\\n]*\\quad\s*", ""),
            (r"\s*\\quad\s*手机：[^\\\n]*", ""),
        ],
    ),
]

PRIVATE_MARKERS = ["Date of Birth", "Mobile:", "出生年月", "手机："]


def build(src_dir: Path) -> None:
    out_dir = REPO / "files"
    with tempfile.TemporaryDirectory() as tmp:
        tmp = Path(tmp)
        for tex_name, pdf_name, subs in EDITIONS:
            text = (src_dir / tex_name).read_text(encoding="utf-8")
            for pattern, repl in subs:
                text, n = re.subn(pattern, repl, text, count=1)
                if n != 1:
                    sys.exit(f"{tex_name}: pattern not found: {pattern}")
            leftovers = [m for m in PRIVATE_MARKERS if m in text]
            if leftovers:
                sys.exit(f"{tex_name}: private fields still present: {leftovers}")
            web_tex = tmp / tex_name
            web_tex.write_text(text, encoding="utf-8")
            for _ in range(2):  # second pass resolves "Page x of y"
                subprocess.run(
                    ["xelatex", "-interaction=nonstopmode", "-halt-on-error", tex_name],
                    cwd=tmp, check=True, stdout=subprocess.DEVNULL,
                )
            shutil.copyfile(web_tex.with_suffix(".pdf"), out_dir / pdf_name)
            print(f"wrote files/{pdf_name}")


if __name__ == "__main__":
    build(Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_SRC)
