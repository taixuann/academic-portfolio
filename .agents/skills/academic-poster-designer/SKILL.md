---
name: academic-poster-designer
description: Design, generate, audit, and convert high-impact academic and scientific conference posters (CVPR, ECCV, NeurIPS, APS, MRS, IEEE) from research papers, LaTeX/Overleaf sources, FreeCAD/Blender figures, and experimental data. Produces print-ready A0/Arch E PDF/PNG and interactive web poster viewers. Triggers on "make poster", "academic poster", "conference poster", "research poster", "poster design", "poster template", "poster layout", "scientific poster", or when presenting research projects as conference posters.
---

# Academic Poster Designer

A specialized skill for creating rigorous, publication-grade academic and conference posters. It integrates best practices from top-tier conference poster architectures ([jindongwang/poster_template](https://github.com/jindongwang/poster_template)) and interactive web poster engines ([ethanweber/posterskill](https://github.com/ethanweber/posterskill)), adhering to strict anti-slop scholarly standards.

---

## 1. Core Principles: The 2-Minute Scannability Law

A scientific poster is **not** an enlarged paper. Conference attendees scan posters from 1–2 meters away while walking:
1. **Headline & 2-Minute Flow:** The main conclusion or innovation must be immediately clear within 10 seconds.
2. **Visual Dominance (>60% Visuals):** Use real experimental data, high-resolution CAD schematics, and vector graphs. Text must be structured in concise bullets rather than continuous prose paragraphs.
3. **Strict Information Hierarchy:**
   - **Level 1 (Title/Header):** Readable from 5 meters away (72–100 pt font).
   - **Level 2 (Section Headers & Punchlines):** Bold and distinct (36–48 pt font).
   - **Level 3 (Body Text & Figure Captions):** Legible from 1 meter away (20–28 pt font). Never go below 18 pt on an A0 print.
4. **Anti-UI-Slop Compliance:** No generic clipart, fake isometric cartoons, or decorative fluff. Every visual must represent real physical apparatus, mathematical models, or empirical data.

---

## 2. Poster Architecture & Column Layouts

Standard poster formats follow 3-column or 4-column balanced grids. Choose based on content type:

### A. The 3-Column Experimental/Engineering Grid (Recommended for Hardware & Physics)
- **Column 1: Background & Physics Foundation**
  - Problem statement & experimental motivation.
  - Governing thermodynamic or physical equations ($\dot{Q}_{cond} = \frac{A}{L}\int k(T)dT$, $\dot{Q}_{rad} = \epsilon \sigma A (T_H^4 - T_C^4)$).
  - Target design parameters and functional requirements.
- **Column 2: System Architecture & Hardware Implementation**
  - Dominant visual: High-resolution CAD 3D cutaway or exploded assembly.
  - Subsystem breakdown: Vacuum chamber, cryogenic feedthroughs, OFHC copper sample stages, PID heater matrix.
  - Material selection & thermal-contact engineering table.
- **Column 3: Thermal Simulations, Empirical Validation & Benchmark**
  - Finite-difference / FEM temperature distribution maps.
  - Cooldown curves: Liquid Nitrogen ($77\text{ K}$) and Liquid Helium ($4.2\text{ K}$).
  - Vacuum pump-down characteristics & PID temperature stability records ($\pm 0.05\text{ K}$).
  - Key technical specifications table & conclusion.

### B. The 4-Column Modular Grid (CVPR / ECCV / ML / Computational Style)
Based on `jindongwang/poster_template`:
- **Col 1:** Problem definition & intuitive teaser diagram.
- **Col 2:** Theoretical formulation & pipeline architecture.
- **Col 3:** Quantitative benchmarks, ablation tables, and performance curves.
- **Col 4:** Qualitative examples, real-world deployment, and future outlook.

---

## 3. Dimensions & Print Standards

| Standard | Width × Height (mm) | Aspect Ratio | Typical Use Case |
| :--- | :--- | :--- | :--- |
| **ISO A0 Landscape** | $1189 \times 841\text{ mm}$ | $\sim 1.414$ | Major European & Asian Conferences (APS, MRS, IEEE) |
| **ISO A0 Portrait** | $841 \times 1189\text{ mm}$ | $\sim 0.707$ | Standard poster boards with vertical orientation |
| **Arch E Landscape** | $48 \times 36\text{ inches}$ ($1219 \times 914\text{ mm}$) | $4:3$ | US Conferences & North American symposia |
| **16:9 Widescreen** | $1920 \times 1080\text{ pt}$ | $16:9$ | Virtual poster sessions, e-posters, Gatherly |

Print outputs must be rendered at **300 DPI** or higher. Always use PDF vector text or lossless PNG.

---

## 4. Interactive Web Poster Delivery

When presenting research posters on portfolio websites or project hubs (inspired by `posterskill`):
1. **Never dump a static, unreadable thumbnail:** Users on mobile or laptops cannot read 24pt text scaled down to 400px.
2. **Provide an Interactive Poster Viewer:**
   - Responsive container with crisp high-DPI canvas or SVG rendering.
   - **Click-to-Zoom / Fullscreen Modal:** Allow panning and inspection of fine CAD details and simulation plots.
   - **Direct Download Button:** One-click download for the full-resolution print PDF.
   - **QR Code Integration:** Connect the physical printed poster to the interactive web demo and source code.

---

## 5. Asset Extraction Workflow from LaTeX & CAD

1. **LaTeX Source Ingestion:**
   - Scan `.tex` files for project title, authors, affiliations, funding acknowledgments, and key captions.
   - Extract equations directly into KaTeX or vector SVG math blocks.
2. **Figure Conversion:**
   - For PDF figures: Convert to high-resolution PNG using `pdftoppm` or macOS `sips`:
     ```bash
     pdftoppm -png -r 300 input_figure.pdf figure_300dpi
     # or
     sips -s format png input_figure.pdf --out figure_highres.png -Z 3000
     ```
3. **Aspect Ratio Optimization (Zero-Waste Layout):**
   - Measure each figure's aspect ratio ($W/H$).
   - Fit wide figures across multi-column spans (or teaser headers).
   - Place tall figures (e.g. FreeCAD side elevations) in single column slots to eliminate blank whitespace.

---

## 6. References & Tooling

- [jindongwang/poster_template](https://github.com/jindongwang/poster_template) — Classic CVPR/ECCV conference templates with modular multi-column cards.
- [ethanweber/posterskill](https://github.com/ethanweber/posterskill) — Interactive HTML conference poster generator with live card layout and visual tweaking.
- See `references/` for detailed template analysis and structural recipes.
