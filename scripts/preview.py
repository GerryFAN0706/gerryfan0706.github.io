"""Build the website locally and serve it at http://localhost:4000.

Usage (from the website folder):
    python scripts/preview.py            # build, then serve on port 4000
    python scripts/preview.py 4123       # use another port

Edits are not picked up automatically: stop with Ctrl+C and run it again.
Nothing is published; this only reads the source and writes _site/.
"""
import functools
import glob
import http.server
import os
import pathlib
import subprocess
import sys
import tempfile

ROOT = pathlib.Path(__file__).resolve().parent.parent
RUBY_HOME = pathlib.Path(os.environ.get("RUBY_HOME", r"C:\Ruby33-x64"))
PORT = int(sys.argv[1]) if len(sys.argv) > 1 else 4000


def find_jekyll() -> pathlib.Path:
    hits = sorted(glob.glob(str(RUBY_HOME / "lib/ruby/gems/*/gems/jekyll-3.*")))
    if not hits:
        sys.exit(f"Jekyll 3.x not found under {RUBY_HOME}. Set RUBY_HOME to your Ruby folder.")
    return pathlib.Path(hits[-1])


def build() -> None:
    jekyll = find_jekyll()
    env = dict(os.environ)
    env["PATH"] = str(RUBY_HOME / "bin") + os.pathsep + env.get("PATH", "")
    env["JEKYLL_NO_BUNDLER_REQUIRE"] = "true"
    with tempfile.NamedTemporaryFile("w", suffix=".yml", delete=False) as fh:
        fh.write(f'url: "http://localhost:{PORT}"\n')
        override = fh.name
    try:
        cmd = [str(RUBY_HOME / "bin" / "ruby"), "-I", str(jekyll / "lib"), str(jekyll / "exe" / "jekyll"),
               "build", "--config", f"_config.yml,{override}"]
        subprocess.run(cmd, cwd=ROOT, env=env, check=True)
    finally:
        os.unlink(override)


class Handler(http.server.SimpleHTTPRequestHandler):
    """Serve /page as /page.html, the way GitHub Pages does."""

    def translate_path(self, path):
        local = super().translate_path(path)
        if not os.path.exists(local) and os.path.exists(local + ".html"):
            return local + ".html"
        return local

    def log_message(self, fmt, *args):
        pass


def serve() -> None:
    handler = functools.partial(Handler, directory=str(ROOT / "_site"))
    with http.server.ThreadingHTTPServer(("127.0.0.1", PORT), handler) as httpd:
        print(f"Preview: http://localhost:{PORT}/  (Ctrl+C to stop)", flush=True)
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            pass


if __name__ == "__main__":
    build()
    serve()
