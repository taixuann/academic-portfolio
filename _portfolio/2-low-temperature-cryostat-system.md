---
layout: project-detail
title: "Low-Temperature Cryostat System"
purpose: "Developing an open-architecture, low-vibration cryogenic characterization platform for precision electronic transport measurements across 77 K–350 K."
excerpt: "Engineered a modular low-temperature electrical measurement platform with custom PCB breakout and thermal decoupling."
collection: portfolio
order: 2
role: "Lead Instrumentation Engineer"
status: "Operational Instrument"
status_class: "status-operational"
hero_figure_placeholder: "FreeCAD 3D cross-sectional assembly showing vacuum shroud, cold finger, and radiation shield"
hero_caption_title: "Figure 1"
hero_caption: "Cross-sectional architecture of the modular cryogenic measurement stage."
tags:
  - Cryostat Architecture
  - FreeCAD 3D CAD
  - Thermal FDM Modeling
  - Custom PCB Design
  - Low-Noise Instrumentation
  - Vacuum Integration
---

## Research Question & Purpose
How can a compact cryostat minimize parasitic thermal leaks and electromagnetic noise while supporting modular PCB sample mounting for multi-terminal device characterization?

## Project Summary
Precision investigation of emergent quantum and memristive switching mechanisms requires reliable variable-temperature transport down to liquid nitrogen temperatures. This project establishes an open-architecture, low-vibration cryogenic testing platform featuring modular PCB sample holders, gold-plated radiation shields, and automated thermal-electrical acquisition.

## My Contribution
* Designed the complete 3D mechanical assembly, vacuum shroud, and radiation shielding in FreeCAD using cryogenic-compatible materials (OFHC copper, PEEK thermal isolation, gold plating).
* Developed 2D finite-difference thermal models (FDM) in Python to optimize cold-finger thermal gradient isolation and predict cooldown dynamics.
* Designed custom multi-channel cryogenic sample breakout PCBs with integrated Pt100 RTD temperature sensors and low-noise triaxial signal lines.
* Executed system assembly, vacuum feedthrough integration, chamber pumping, and thermal stage calibration.

---

## 1. Mechanical & Vacuum Architecture
Parametric 3D CAD modeling of the cryostat body, thermal decoupling breaks, and gold-plated radiation shields to minimize radiative heat loads.

<div class="scientific-figure-slot">
  <div class="figure-slot-body">
    <div class="figure-slot-placeholder">
      [REAL FIGURE REQUIRED: Detailed mechanical CAD views of sample stage, flange interfaces, and vacuum seals]
    </div>
  </div>
  <div class="figure-slot-caption">
    <strong>Fig 2</strong> | Mechanical assembly and vacuum component layout.
  </div>
</div>

<!-- Future Visualization Slot (Task 5) -->
<div class="model-3d-slot">
  <div class="figure-slot-body">
    <div class="figure-slot-placeholder">
      [FUTURE VISUALIZATION SLOT: Interactive 3D CAD Exploded View of Cryostat Stage]
    </div>
  </div>
  <div class="figure-slot-caption">
    <strong>3D Interactive Model</strong> | Exploded mechanical CAD viewer (to be enabled when GLB/STL model is connected).
  </div>
</div>

---

## 2. Thermal Modeling & Finite-Difference Simulation
Steady-state and transient finite-difference thermal simulations in Python to evaluate temperature distribution across the cold stage and sample interface.

<div class="scientific-figure-slot">
  <div class="figure-slot-body">
    <div class="figure-slot-placeholder">
      [REAL FIGURE REQUIRED: 2D FDM temperature gradient contour map illustrating thermal isolation at 77 K]
    </div>
  </div>
  <div class="figure-slot-caption">
    <strong>Fig 3</strong> | Steady-state 2D thermal finite-difference simulation confirming stage isolation.
  </div>
</div>

---

## 3. Cryogenic PCB & Electronic Interfacing
Design of custom sample mounting boards with matched trace impedances, low-temperature solder connections, and triaxial feedthrough integration for high-impedance measurements.

<div class="scientific-figure-slot">
  <div class="figure-slot-body">
    <div class="figure-slot-placeholder">
      [REAL FIGURE REQUIRED: Cryogenic PCB schematic, routing layout, and assembled testbed photograph]
    </div>
  </div>
  <div class="figure-slot-caption">
    <strong>Fig 4</strong> | Custom cryogenic breakout board layout and sample mounting topology.
  </div>
</div>

---

## Outcome & Status
* **Status**: Operational experimental instrumentation platform and modular device testing testbed.
* **Application**: Used for variable-temperature electrical characterization of thin-film memristors and nanomaterials from 77 K to 350 K.
