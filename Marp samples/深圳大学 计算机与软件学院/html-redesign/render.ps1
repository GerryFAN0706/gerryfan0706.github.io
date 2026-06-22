# Renders every slide HTML to a 1920x1080 PNG in renders/.
# Requires Google Chrome installed at the default Program Files path.

$ErrorActionPreference = "Continue"

$chrome = "C:\Program Files\Google\Chrome\Application\chrome.exe"
if (-not (Test-Path $chrome)) {
    $chrome = "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
}
if (-not (Test-Path $chrome)) {
    throw "Could not find Chrome or Edge. Install one or edit the path in render.ps1."
}

$base = $PSScriptRoot
$out  = Join-Path $base "renders"
if (-not (Test-Path $out)) { New-Item -ItemType Directory -Path $out | Out-Null }

$slides = Get-ChildItem -Path $base -Filter "*.html" | Sort-Object Name

Write-Host "Rendering $($slides.Count) slides to $out ..." -ForegroundColor Cyan

foreach ($slide in $slides) {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($slide.Name)
    $png  = Join-Path $out "$name.png"
    $url  = "file:///" + $slide.FullName.Replace('\','/')

    Write-Host ("  -> {0,-32} " -f $slide.Name) -NoNewline

    $chromeArgs = @(
        "--headless=new",
        "--disable-gpu",
        "--hide-scrollbars",
        "--window-size=1920,1080",
        "--screenshot=$png",
        "--virtual-time-budget=15000",
        "--run-all-compositor-stages-before-draw",
        $url
    )
    & $chrome @chromeArgs 2>$null | Out-Null

    if (Test-Path $png) {
        $size = [math]::Round((Get-Item $png).Length / 1KB, 1)
        Write-Host "[OK] $($size) KB" -ForegroundColor Green
    } else {
        Write-Host "[FAIL]" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Done. PNGs are in $out" -ForegroundColor Cyan
