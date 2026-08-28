# Academic Research Portfolio

Minimal, template-anchored academic research portfolio for PhD applications.

## Provenance & Attribution

This website is adapted from **Academic Pages** (an academic personal website template based on Jekyll and Minimal Mistakes).

- **Canonical Upstream Repository**: [https://github.com/academicpages/academicpages.github.io](https://github.com/academicpages/academicpages.github.io)
- **Pinned Upstream Commit**: `a4386d88512a52499f4cebff515a1bb9b310da9a`
- **Upstream License**: MIT License (retained in [LICENSE](LICENSE))

---

## V1 Information Architecture

The portfolio implements a clean, classical academic structure:

1. **About** (`/`): Academic biography, research focus, and core links.
2. **Research** (`/research/`): Overview of scientific research thrusts.
3. **Projects** (`/portfolio/`): Three verified scientific project case studies:
   - `Polydopamine-based Crossbar Devices` (Featured / Primary)
   - `Low-Temperature Cryostat System`
   - `Plasmonic Structures`
4. **Publications** (`/publications/`): Submitted manuscripts and peer-reviewed literature.
5. **CV** (`/cv/`): Curriculum Vitae summary with PDF download link (`files/academic-cv.pdf`).

> **Note on Scientific Figures & Visualizations**: In accordance with the V1 scientific integrity gate, no AI-generated, synthetic, or fictional plots/microscopy images are included. Missing real experimental figures are marked with explicit `[REAL FIGURE REQUIRED: ...]` placeholders. Interactive scientific visualization (Plotly, Canvas, Three.js) is deferred to future project-by-project issues once verified raw data is provided.

---

## Local Development & Preview

### Prerequisites
- Ruby & Bundler (or Docker)

### Run with Jekyll
```bash
bundle install
bundle exec jekyll serve
```
Open `http://localhost:4000/academic-portfolio/` in your browser.

### Run with Docker
```bash
docker compose up
```

---

## Content Organization Map

| Content Area | Configuration / File Location |
|---|---|
| Site Metadata & Author Profile | `_config.yml` |
| Top Navigation Menu | `_data/navigation.yml` |
| Research Projects | `_portfolio/*.md` |
| Publications & Preprints | `_publications/*.md` |
| About / Landing Page | `_pages/about.md` |
| Research Overview Page | `_pages/research.md` |
| CV Page & PDF Download | `_pages/cv.md`, `files/academic-cv.pdf` |

---

## GitHub Pages Deployment

This repository is configured for automatic deployment to GitHub Pages via standard Jekyll workflows.
