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

![Cryostat Mechanical Design](/images/projects/cryostat/cryostat_overview_design.png)

## Core Technical Challenges

- Minimizing parasitic radiative and conductive heat loads while maintaining low-noise electrical breakout lines.
- Achieving stable thermal equilibrium and predictable cooldown times using finite-difference numerical modeling.

## Key Engineering Contributions

- **3D Mechanical & Vacuum Architecture:** Designed the complete mechanical assembly, vacuum shroud, and gold-plated radiation shields in FreeCAD using cryogenic-compatible materials (OFHC copper, PEEK thermal isolation, vacuum feedthroughs).
- **Thermal Finite-Difference Modeling:** Implemented 2D finite-difference transient heat transfer simulations in Python to optimize cold-finger dimensions, thermal decoupling breaks, and predict cooldown rates.
- **Custom Instrumentation Hardware:** Designed multi-channel cryogenic sample breakout PCBs with integrated Pt100 RTD temperature sensors and low-noise triaxial signal routing.
- **System Integration:** Assembled the vacuum testbed, calibrated temperature sensors, and performed high-vacuum pumping and leak checks.

![Cryostat Prototype System](/images/projects/cryostat/cryostat_system_photo.png)

## Outcomes & Current Status

Operational characterization instrument deployed at the Laboratory of Advanced Materials and Application (USTH), enabling temperature-dependent electrical transport measurements for nanoscale thin films and memristive crossbars.
