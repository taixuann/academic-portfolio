---
name: cad-poster-svg
description: Design, construct, and animate precision interactive CAD blueprints, technical engineering drawings, and scientific poster SVGs for project showcases and scientific portfolios. Converts real CAD models, mechanical assemblies, and nanoscale device architectures into interactive vector graphics with exploded views, cross-section hatching, dimensioning lines, and live parameter simulations (temperature, voltage pulses, optical resonance). Use whenever building or upgrading project visuals, CAD schematics, technical posters, blueprints, or interactive hardware explainers without pre-rendered videos.
---

# CAD Poster SVG

A specialized skill for authoring **interactive, precision CAD blueprints and technical poster SVGs** for scientific devices, cryogenic systems, microelectronics, and hardware engineering.

---

## 1. Core Philosophy: The Interactive CAD Blueprint

Unlike passive pre-rendered videos (which cannot be interacted with and add heavy bandwidth) or generic abstract diagrams, a **CAD Poster SVG** is an interactive, vector-based technical artifact:

1. **Precision Vector Engineering:** Exact proportions, ISO/ASME technical drawing standards, dimension extension lines, section cutaways (Section A-A), and engineering title blocks.
2. **Interactive Motion, Not Video:** Real-time state toggling (Assembly $\leftrightarrow$ Cross-Section $\leftrightarrow$ Exploded View), component hover highlighting, and slider-driven physical simulations (e.g., cooling down to 80 K, injecting voltage pulses).
3. **Zero Overhead:** 100% web-native SVG + CSS + minimal TypeScript/Vanilla JS. Loads in milliseconds, razor-sharp on 4K/Retina displays, and dynamically adapts to Light/Dark modes.

---

## 2. Technical Drawing Standards (ISO 5457 / ASME Y14)

Every technical poster SVG must incorporate authentic engineering drafting grammar:

### Line Weight Hierarchy
- **Visible Outlines (Thick):** `stroke-width="1.5px"` (Dark: `#e2e8f0` / Light: `#0f172a`). Defines outer geometry and main structural boundaries.
- **Internal / Sub-assembly Lines (Medium):** `stroke-width="1.0px"` (Dark: `#94a3b8` / Light: `#475569`).
- **Centerlines & Symmetry (Thin Dash-Dot):** `stroke-width="0.6px" stroke-dasharray="12 3 3 3"` (Dark: `#38bdf8` / Light: `#0284c7`).
- **Hidden / Internal Channels (Thin Dashed):** `stroke-width="0.8px" stroke-dasharray="4 3"` (Dark: `#64748b` / Light: `#94a3b8`).
- **Dimension & Extension Lines (Ultra-Thin):** `stroke-width="0.5px"` with `marker-end="url(#arrow)"` and engineering tick marks.

### Section Cutaways & Hatching Patterns
Use standard SVG `<pattern>` elements for material hatching:
* **Metals (Steel / Copper / Aluminum):** 45° diagonal hatching (`<line x1="0" y1="8" x2="8" y2="0" stroke="currentColor" stroke-width="0.8"/>`).
* **Polymers / Dielectrics:** Cross-hatching or stippling patterns.
* **Vacuum / Free Space:** Clean fill with subtle radial gradient.

### Engineering Title Block (Bottom-Right or Header)
Include standard metadata block:
```xml
<g class="title-block" font-family="monospace" font-size="9">
  <rect x="750" y="520" width="230" height="65" fill="var(--bg-card)" stroke="var(--border-line)"/>
  <text x="760" y="535" font-weight="bold">DWG NO: USTH-CRYO-2026-001</text>
  <text x="760" y="550">TITLE: MODULAR 80 K CRYOSTAT</text>
  <text x="760" y="565">MAT: Cu-OFHC / SUS304  | SCALE: 1:2</text>
  <text x="760" y="578">ENGINEER: TAI NGUYEN XUAN | REV: 02</text>
</g>
```

---

## 3. Interactive Motion Architecture

All motion is achieved through CSS custom properties and SVG coordinate transforms—no heavy dependencies.

### 1. View State Transitions (Assembly vs. Cutaway vs. Exploded View)
Define component groups with data-driven CSS transitions:

```css
.cad-part {
  transition: transform 0.6s cubic-bezier(0.16, 1, 0.3, 1), opacity 0.3s ease;
}

/* Exploded View Offsets along mechanical axes */
[data-view="exploded"] .part-shroud {
  transform: translateY(-80px);
}
[data-view="exploded"] .part-shield {
  transform: translateY(-40px);
}
[data-view="exploded"] .part-cold-finger {
  transform: translateY(0px);
}
[data-view="exploded"] .part-sample-stage {
  transform: translateY(50px);
}
```

### 2. Component Inspection & Hover HUD
Hovering over a component triggers active state:
- Dims neighboring components to `opacity: 0.3`.
- Accents target component stroke with high-contrast color (Cyan `#38bdf8` or Amber `#f59e0b`).
- Populates the HUD readout card with part name, material, tolerances, and function.

### 3. Physical State Simulations (Sliders & Triggers)
Connect web controls (input range sliders, action buttons) to SVG presentation:

* **Cryogenic Cooldown Simulation (300 K $\to$ 80 K):**
  - Dynamically updates linear gradient stops from ambient copper/gold (`#f59e0b`) to cryogenic deep blue/cyan (`#06b6d4`).
  - Animates heat flux arrow markers along the cooling finger toward the liquid nitrogen reservoir.
  - Updates digital readout: `T = 77.4 K | Pressure: 1.2e-5 mbar`.

* **Memristive Pulse Injection (Au/PDA/Pt Junction):**
  - Triggering a pulse animates an oscillating electric field vector (`<path stroke-dashoffset="...">`).
  - Translates proton markers (`H+`) across the active polydopamine layer into the bottom interface.
  - Dynamically updates conductance readout ($G/G_0$) and states (LRS/HRS).

---

## 4. Layout Structure for Project Showcases

A complete project showcase poster combines the visual CAD layout with interactive controls:

```html
<div class="cad-poster-container">
  <!-- 1. Top HUD / Toolbar -->
  <div class="cad-toolbar">
    <div class="view-toggles">
      <button data-action="assembly">Assembly</button>
      <button data-action="cutaway" class="active">Section A-A</button>
      <button data-action="exploded">Exploded</button>
    </div>
    <div class="simulation-controls">
      <label>Cooldown: <input type="range" min="77" max="300" value="80" id="temp-slider"> <span id="temp-val">80 K</span></label>
    </div>
  </div>

  <!-- 2. Master Interactive SVG Canvas -->
  <div class="cad-canvas">
    <svg viewBox="0 0 1000 600" class="cad-svg">
      <defs>
        <!-- Gradients, Markers, Hatching Patterns -->
      </defs>
      <!-- Engineering Border & Grid -->
      <!-- Mechanical Assemblies / Vector Groups -->
      <!-- Callouts & Leader Lines -->
      <!-- Title Block -->
    </svg>
  </div>

  <!-- 3. Component Telemetry & Inspector Card -->
  <div class="cad-inspector">
    <div class="inspector-title">Active Component</div>
    <div class="inspector-data">Hover over any part to inspect mechanical specifications.</div>
  </div>
</div>
```

---

## 5. Blueprint Recipes for Domain Applications

### Recipe A: Modular Low-Temperature Cryostat (Mechanical / Cryogenics)
- **Outer Shell:** Cylindrical vacuum shroud with KF-25 vacuum pumping port, electrical feedthroughs, and optical sapphire window.
- **Radiation Shield:** Highly polished copper cylinder with thermal anchor collars.
- **Cold Finger:** Solid Cu-OFHC oxygen-free copper core linking sample holder to liquid nitrogen chamber.
- **Sample Stage:** Gold-plated OFHC block with 36-AWG phosphor-bronze twisted-pair lead wires and PT100/Cernox sensor pocket.
- **Key Motion:** 
  1. Exploded view lifting the shroud and radiation shield.
  2. Cooldown slider animating temperature gradient and thermal contraction.

### Recipe B: Nanoscale Memristor Crossbar Junction (Microelectronics)
- **Layer Stack:** Substrate ($\text{SiO}_2/\text{Si}$) $\to$ Bottom Electrode ($\text{Pt}$, 50 nm) $\to$ Active Biopolymer ($\text{Polydopamine}$, 15 nm) $\to$ Top Electrode ($\text{Au}$, 50 nm).
- **Key Motion:**
  1. Micro-to-nano zoom transition from chip carrier to single junction.
  2. Pulse trigger animating vertical proton migration ($\text{PCET}$) and filament state change.

---

## 6. Verification Checklist

Before finalizing an Interactive CAD Poster SVG:
- [ ] Is every vector shape clean, scalable, and defined with appropriate line weights (1.5px visible, 0.6px centerline)?
- [ ] Are all dimensions, materials, and labels scientifically accurate against real project data?
- [ ] Does the SVG maintain full responsiveness and crisp rendering at 100% zoom and 400% zoom?
- [ ] Does the interactive mode toggle (Assembly / Section / Exploded) work smoothly without layout jumping?
- [ ] Are styles adapted for both Dark Theme and Light Theme via CSS custom properties?
- [ ] Is the entire component self-contained with zero external runtime dependencies?
