# Repository Guidelines

## Project Structure & Module Organization
This repo is a static, single-page portfolio.
- `index.html` is the app: HTML markup, embedded CSS, and inline JavaScript live here.
- `assets/` stores static assets, including the 3D avatar file `assets/avatar.glb` loaded by Three.js.
- `CV_Rudy_Willoquet.pdf` and `README.md` are supporting documents.

## Build, Test, and Development Commands
There is no build system or package manager. Run locally in one of two ways:
1. Open `index.html` directly in a browser for quick edits.
2. Start a simple local server (recommended for asset loading):
```bash
python -m http.server 8000
```
Then visit `http://localhost:8000`.

External libraries are loaded from CDNs in `index.html` (Three.js and GSAP). If you change versions, update the script tags and verify the page still loads.

## Coding Style & Naming Conventions
- Indentation: 2 spaces in HTML, CSS, and JS.
- CSS: keep theme and sizing values in `:root` variables; prefer consistent naming with existing classes.
- JS: keep behavior in the inline script block near the bottom of `index.html`; use `const`/`let` and clear, descriptive identifiers.
- Assets: place new files in `assets/` and use lowercase, readable names (for example, `hero-shot.jpg`).

## Testing Guidelines
No automated tests are configured. After changes, manually verify:
- The page renders without console errors.
- The 3D avatar loads and animates on scroll.
- Search/filter interactions still work.
- Layout looks correct on desktop and mobile widths.

## Commit & Pull Request Guidelines
Git history is not available in this environment, so follow existing team conventions if you have them. If not, use concise, imperative commit subjects (for example, "Update hero copy" or "Refine project cards").

For PRs, include:
- A short summary of changes.
- Before/after screenshots or a short screen recording for UI changes.
- Notes about updated assets or CDN versions.
