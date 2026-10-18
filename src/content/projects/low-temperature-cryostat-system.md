---
title: "Low-Temperature Cryostat System"
description: "Design and fabrication of an open-architecture, low-vibration cryogenic characterization platform for electrical transport measurements down to 77 K."
tags:
  - "Cryogenics"
  - "Instrumentation"
  - "Thermal Modeling"
  - "FreeCAD"
  - "Python"
  - "Custom PCB"
image: "/images/projects/cryostat/cryostat_overview_design.png"
---

## Project Overview

Investigating emergent quantum mechanisms and low-temperature resistive switching requires low-vibration, variable-temperature transport down to liquid nitrogen temperatures ($77\text{ K}\text{--}350\text{ K}$). This project developed an open-architecture cryogenic testing platform featuring modular sample holders, radiation shielding, and automated thermal-electrical acquisition.

![Cryostat Mechanical Assembly](/academic-portfolio/images/projects/cryostat/cryostat_overview_design.png)
*3D CAD mechanical assembly showing vacuum shroud, cold finger, and modular sample stage.*

## Core Research Questions

- How can a compact cryostat minimize parasitic thermal leaks and electromagnetic noise while supporting modular PCB sample mounting for multi-terminal device characterization?
- What thermal decoupling and radiation shield geometry achieves rapid cooldown and sub-Kelvin temperature stability under high-vacuum conditions?

## Research Roles & Supervision

- **Primary Role:** Project Group Leader / Lead Instrumentation Engineer (Nov 2025 – Mar 2026)
- **Host Laboratory:** Laboratory of Advanced Materials and Application (LAMA), University of Science and Technology of Hanoi (USTH)
- **Supervisor:** Dr. Nguyen Van Quyen

---

## 1. Mechanical & Vacuum Architecture

Parametric 3D CAD modeling of the cryostat body, thermal decoupling breaks, and gold-plated radiation shields to minimize radiative heat loads.

- **Cryogenic Material Selection:** Utilized oxygen-free high thermal conductivity (OFHC) copper for cold fingers, PEEK spacers for thermal isolation, and gold-plated copper radiation shields.
- **Vacuum Integration:** Configured KF/CF high-vacuum feedthroughs, pumping ports, and low-outgassing O-ring seals.

![Cryostat Prototype System](/academic-portfolio/images/projects/cryostat/cryostat_system_photo.png)
*Assembled cryostat instrumentation overview and vacuum testbed during experimental calibration.*

---

## 2. Thermal Modeling & Finite-Difference Simulation

Steady-state and transient finite-difference thermal simulations in Python to evaluate temperature distributions across the cold stage and sample interface.

- **Conduction & Radiation Decoupling:** Modeled non-linear thermal conductivity $k(T)$ and Stefan-Boltzmann radiation exchange.
- **Cooldown Dynamics:** Predicted cold-stage cooldown times and temperature gradients to optimize stage mass and thermal isolation necking.

![Cryostat Thermal Simulation](/academic-portfolio/images/projects/cryostat/cryostat_thermal_sim.png)
*Python-based transient finite-difference thermal modeling and gas-cooling heat dissipation profile.*

---

## 3. Cryogenic PCB & Electronic Interfacing

Designed custom sample breakout PCBs with matched trace impedances, low-temperature solder connections, and triaxial feedthrough integration for low-noise high-impedance device characterization.

![Custom Cryogenic PCB](/academic-portfolio/images/projects/cryostat/cryostat_pcb_front.png)
*Custom cryogenic breakout board layout and multi-terminal sample mounting topology designed in KiCad.*

![Sample Stage Assembly](/academic-portfolio/images/projects/cryostat/cryostat_sample_assembly.png)
*Close-up of sample mounting assembly, integrated Pt100 RTD sensor, and low-temperature wiring.*

---

## Outcomes & Current Status

- **Operational Status:** Fully operational cryogenic measurement platform deployed at the Laboratory of Advanced Materials and Application (USTH).
- **Experimental Applications:** Directly utilized for variable-temperature electrical characterization ($77\text{ K}\text{--}350\text{ K}$) of thin-film memristors, oxide semiconductors, and nanomaterial crossbar arrays.
