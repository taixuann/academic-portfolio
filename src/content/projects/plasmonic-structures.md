---
title: "Simulation of Plasmonic Nanostructures"
description: "Numerical modeling of localized surface plasmon resonance (LSPR) and coupled photothermal dissipation in Au/Au@Ag core-shell nanosphere arrays using Lumerical FDTD and HEAT."
tags:
  - "Plasmonics"
  - "Lumerical FDTD"
  - "Photothermal Modeling"
  - "Electrodynamics"
  - "Nanotechnology"
---

## Project Overview

Localized surface plasmon resonance (LSPR) enables deep sub-diffraction optical field localization and photothermal conversion. This project investigates electrodynamic near-field enhancement and coupled nanoscale heat dissipation in $\text{Au}$ and $\text{Au@Ag}$ core-shell nanosphere arrays using 3D finite-difference time-domain (FDTD) and finite-element thermal modeling.

## Core Research Questions

- How do core-shell composition ratios and inter-particle gap geometries modulate near-field hotspot enhancement ($|E/E_0|^2$) in noble metal nanosphere dimer arrays?
- How does the optical absorption power density couple into steady-state and transient nanoscale thermal dissipation in surrounding dielectric media?

## Research Roles & Supervision

- **Primary Role:** Research Assistant / Computational Modeler (Sep 2024 – Jun 2025)
- **Host Institution:** University of Science and Technology of Hanoi (USTH)
- **Supervisors:** Dr. Hoang Thi Hong Cam, Assoc. Prof. Nguyen Van Quynh

---

## 1. 3D Electrodynamic Modeling & Near-Field Hotspots

- Built 3D full-wave electrodynamic models in Lumerical FDTD for homogeneous $\text{Au}$ and bimetallic core-shell $\text{Au@Ag}$ nanosphere dimers.
- Applied sub-nanometer conformal mesh refinement ($0.2\text{ nm}$) across the interparticle gap to accurately resolve localized surface plasmon resonance hotspots and charge distribution.

---

## 2. Spectral Tuning & Extinction Cross-Sections

- Calculated wavelength-dependent extinction, scattering, and absorption cross-sections ($C_{\text{ext}}$, $C_{\text{sca}}$, $C_{\text{abs}}$) across varying silver shell thicknesses ($1\text{--}10\text{ nm}$) and surrounding refractive indices ($n = 1.0\text{--}1.5$).
- Demonstrated systematic resonance blueshift and enhanced dipolar plasmonic cross-sections upon silver shell deposition around gold cores.

---

## 3. Coupled Photothermal Modeling

- Exported spatial electromagnetic power dissipation density profiles ($P_{\text{abs}} = \frac{1}{2}\omega \epsilon'' |E|^2$) from FDTD monitors directly into Lumerical HEAT finite-element solvers.
- Simulated steady-state and transient nanoscale temperature distributions under continuous-wave optical excitation, characterizing thermal boundary resistance and heat dissipation pathways.

---

## Outcomes & Numerical Design Framework

- Developed validated numerical design rules predicting how silver shell thickness controls near-field electric field confinement versus photothermal heating efficiency.
- Provided computational foundations for designing plasmon-enhanced optical sensors and photothermal transducers.
