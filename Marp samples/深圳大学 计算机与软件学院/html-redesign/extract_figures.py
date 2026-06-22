"""Extract teaser + result figures from each paper's source folder.

Converts PDFs to high-res PNGs via PyMuPDF (fitz), or copies PNG/JPG directly.
Outputs to figures/ next to this script.
"""

from __future__ import annotations

import shutil
import sys
from pathlib import Path

import fitz  # PyMuPDF
from PIL import Image


BASE        = Path(__file__).parent
SRC_ROOT    = BASE / "_extracted"
SRC_TOPROOT = Path(r"D:\research  tasks\selected paper sources")
OUT         = BASE / "figures"
OUT.mkdir(exist_ok=True)

# Force UTF-8 stdout so Chinese paths don't crash cp1252 consoles
if sys.stdout.encoding and sys.stdout.encoding.lower() != "utf-8":
    try:
        sys.stdout.reconfigure(encoding="utf-8")
    except Exception:
        pass


# (source_folder, source_relpath, output_name)
FIGURES = [
    # ── Direction 1 ──
    ("Is It Still You_",            "assets/integration_combined.pdf", "p1a_teaser.png"),
    ("Is It Still You_",            "assets/s1_results.pdf",           "p1a_result.png"),
    ("ACL camera ready",            "latex/method.png",                "p1b_teaser.png"),
    ("ACL camera ready",            "latex/Fig3_publicness_and_intensity.pdf", "p1b_result.png"),

    # ── Direction 2 ──
    ("When Help Hurts",             "assets/design.pdf",               "p2a_teaser.png"),
    ("When Help Hurts",             "assets/rq1_tlx_time_combo(1).pdf","p2a_result.png"),
    ("__TOPROOT__",                 "ai_pair_programming_method_pipeline.png", "p2b_teaser.png"),
    ("__TOPROOT__",                 "ai_pair_programming_results_profile.png", "p2b_result.png"),

    # ── Direction 3 ──
    ("FSE final CR",                "method_tradeoff_feas_innov_no_title.pdf", "p3a_teaser.png"),
    ("FSE final CR",                "forest_validated_uplift_no_title.pdf", "p3a_result.png"),
    ("Icml2026 Graph-RLHF final",   "figures/overview.png",            "p3b_teaser.png"),
    ("Icml2026 Graph-RLHF final",   "figures/figure_main.pdf",         "p3b_result.png"),

    # ── Direction 4 ──
    ("Camera ready WWW Final web4good- Audit-of-Audits for the Web",
                                    "Figures/piplineaudit.pdf",        "p4a_teaser.png"),
    ("Camera ready WWW Final web4good- Audit-of-Audits for the Web",
                                    "Figures/fig_voi_bars.pdf",        "p4a_result.png"),
    ("AAAI 26 Reply Gap",           "Piplines_01.png",                 "p4b_teaser.png"),
    ("AAAI 26 Reply Gap",           "combined_balance_hte_no_title_02_01.png", "p4b_result.png"),

    # ── Teaching awards (h 获奖) ──
    ("__TOPROOT__", "h 获奖/计算机教育 全国大会 最佳论文.jpg", "award1_cpec_paper.png"),
    ("__TOPROOT__", "h 获奖/计算机教育 全国 最佳报告.jpg",    "award2_cpec_report.png"),
    ("__TOPROOT__", "h 获奖/CHI2026_certificate_HM_203.pdf",   "award3_chi_hm.png"),
]


def resize_if_huge(path: Path, max_dim: int = 1600) -> None:
    """Down-scale very large images to keep PPTX manageable."""
    try:
        img = Image.open(path)
        w, h = img.size
        if max(w, h) <= max_dim:
            return
        scale = max_dim / max(w, h)
        new_size = (int(w * scale), int(h * scale))
        img = img.convert("RGB") if img.mode in ("P", "RGBA", "LA") else img
        img.thumbnail(new_size, Image.LANCZOS)
        img.save(path, optimize=True)
        print(f"  resized {path.name} -> {new_size[0]}×{new_size[1]}")
    except Exception as e:
        print(f"  resize failed for {path.name}: {e}")


def pdf_to_png(pdf_path: Path, out_path: Path, scale: float = 3.0) -> None:
    """Render first page of a PDF to a high-res PNG with a white background."""
    doc = fitz.open(str(pdf_path))
    page = doc.load_page(0)
    matrix = fitz.Matrix(scale, scale)
    pix = page.get_pixmap(matrix=matrix, alpha=False)
    pix.save(str(out_path))
    doc.close()


def copy_or_convert(src: Path, dst: Path) -> None:
    if not src.exists():
        print(f"  MISSING: {src.relative_to(SRC_ROOT)}")
        return
    # Specific image overrides that need rotation
    ROTATE_90 = {"award1_cpec_paper.png", "award2_cpec_report.png"}

    suffix = src.suffix.lower()
    if suffix == ".pdf":
        pdf_to_png(src, dst)
        print(f"  PDF -> {dst.name}")
    elif suffix in (".png", ".jpg", ".jpeg"):
        # Convert JPGs to PNG for consistent embedding; copy PNGs as-is
        if suffix in (".jpg", ".jpeg"):
            img = Image.open(src).convert("RGB")
            if dst.name in ROTATE_90:
                img = img.rotate(90, expand=True)
                print(f"  rotated +90 for {dst.name}")
            img.save(dst, "PNG", optimize=True)
            print(f"  JPG -> {dst.name}")
        else:
            shutil.copy2(src, dst)
            print(f"  COPY -> {dst.name}")
        resize_if_huge(dst)
    else:
        print(f"  UNKNOWN type: {src.name}")


def main() -> None:
    print(f"Output dir: {OUT}")
    print()
    for folder, relpath, out_name in FIGURES:
        if folder == "__TOPROOT__":
            src = SRC_TOPROOT / relpath
        else:
            src = SRC_ROOT / folder / relpath
        dst = OUT / out_name
        print(f"[{folder}]")
        copy_or_convert(src, dst)
    print()
    extracted = sorted(OUT.glob("*"))
    print(f"Done. {len(extracted)} files in figures/:")
    for f in extracted:
        size_kb = f.stat().st_size / 1024
        print(f"  {f.name:30s}  {size_kb:7.1f} KB")


if __name__ == "__main__":
    main()
