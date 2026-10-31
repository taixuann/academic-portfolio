# Jindong Wang Academic Poster Templates & Principles

Source: [https://github.com/jindongwang/poster_template](https://github.com/jindongwang/poster_template)

## Overview & Context
Jindong Wang's repository collects actual conference posters presented at premier computer vision and machine learning venues (CVPR'15, CVPR'17, CVPR'18, ECCV'18). These represent battle-tested conference posters designed to survive crowded, fast-paced poster sessions.

## Key Design Insights & Architectural Patterns

### 1. Typical Conference Print Geometry
- Standard poster board dimensions: ~1 meter height × 1.2 to 1.5 meter width (or ISO A0 landscape: $1189 \times 841\text{ mm}$).
- Physical viewing distance: Attendees stand 1 to 2 meters away.
- Virtual viewing (Gatherly, Zoom, Web): Requires **increased font scale** and lower card density compared to print.

### 2. Multi-Column Flow
Posters are split into 3 or 4 vertical columns with unified margins:
- **Header:**
  - Clear paper title (dark bold font on light background or reverse).
  - Authors with superscript affiliations.
  - Institutional badges/logos on the left and right corners.
  - Conference venue badge or project QR code.
- **Left Column:**
  - Problem Motivation: "Why does this matter?"
  - Key Limitations of Prior Art.
  - Core intuition / Teaser visual.
- **Center Column(s):**
  - Architecture / Methodology / Technical Blueprint.
  - High-res diagrams, FreeCAD/Blender hardware renderings, or pipeline schematics.
  - Theoretical formulation & governing equations.
- **Right Column:**
  - Quantitative & Qualitative Results.
  - Empirical curves, benchmark tables, ablation comparisons.
  - Summary of contributions & take-away messages.

### 3. Critical Failure Modes to Avoid
- **Excessive text density:** David Bau's CVPR'18 poster note: *"the font size is a bit small and the content is a bit too dense"*. Attendees will not read paragraphs. Use bulleted takeaways.
- **Low-contrast figures:** Ensure all axes, labels, and legends are legible at 100% scale.
- **Cluttered color palettes:** Stick to 2 primary accent colors (e.g. Navy `#0a2540` and Amber `#d97706`) plus neutral backgrounds.
