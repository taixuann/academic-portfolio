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

Investigating emergent quantum mechanisms and low-temperature resistive switching requires low-vibration, variable-temperature transport down to liquid nitrogen temperatures ($77\text{ K}\text{--}350\text{ K}$). This project developed an open-architecture cryogenic characterization platform featuring modular sample holders, radiation shielding, hermetic feedthroughs, and automated thermal-electrical acquisition.

Use the **Interactive CAD Subassembly Explorer** above to toggle between **Assembly**, **Exploded View** (separating the top feedthrough, central cold column, outer vacuum chamber, and Cu stage), and **Thermal Cooldown Mode** ($300\text{ K} \to 77\text{ K}$).

## Core Research Questions

- How can a compact cryostat minimize parasitic thermal leaks and electromagnetic noise while supporting modular PCB sample mounting for multi-terminal device characterization?
- What thermal decoupling and radiation shield geometry achieves rapid cooldown and sub-Kelvin temperature stability under high-vacuum conditions?

## Research Roles & Supervision

- **Primary Role:** Project Group Leader / Lead Instrumentation Engineer (Nov 2025 – Mar 2026)
- **Host Laboratory:** Laboratory of Advanced Materials and Application (LAMA), University of Science and Technology of Hanoi (USTH)
- **Supervisor:** Dr. Nguyen Van Quyen

---

## 1. Mechanical Subassemblies & Material Selection

The cryostat architecture was designed using parametric 3D CAD modeling, structured into five decoupled functional subsystems with strict material zoning:

1. **Top Feedthrough & Structural Mount (AISI 304 & Gold):**
   - $\varnothing 130\text{ mm}$ top flange with integrated KF-25 roughing/turbopump vacuum port and Pirani sensor coupling.
   - Hermetic glass-ceramic sealed 25-pin D-sub (DB-25) feedthrough with gold-plated pins, anchoring directly onto the central column.
2. **Central Cold Finger & Thermal Column (OFHC Cu 99.99%):**
   - Solid $\varnothing 20\text{ mm}$ high-purity copper rod serving as the primary cryogenic thermal conduit from the liquid nitrogen bath.
   - Equipped with three spaced copper radiation disc baffles to intercept $300\text{ K}$ blackbody radiation down the neck.
   - Copper anchor bobbin for heat-sinking $36\text{ AWG}$ phosphor-bronze measurement leads.
3. **Demountable Vacuum Chamber & Shroud (AISI 304 Stainless):**
   - Cylindrical outer jacket ($\varnothing 114\text{ mm}$ OD, $3\text{ mm}$ wall) providing thermal vacuum insulation ($< 2 \times 10^{-5}\text{ mbar}$).
   - Demountable lower flange connection allowing the outer chamber to slide downward, fully exposing the internal sample stage.
4. **Cryogenic Sample Stage & Modular Carrier (Cu-OFHC / FR-4 / Pt100):**
   - High-mass copper block ($40 \times 50 \times 30\text{ mm}$) in direct mechanical contact with the cold finger tip.
   - Embedded Pt100 RTD resistance thermometer coupled with Apiezon N cryogenic thermal grease.
   - $50\text{ W}$ stainless cartridge heater for closed-loop PID temperature control ($77\text{ K} - 350\text{ K}$).
   - Modular green FR-4 PCB carrier with gold-plated contact pads and spring-loaded beryllium-copper Z-spring contact pins.
5. **Cryogen Dewar & Superinsulation Vessel:**
   - Double-walled stainless steel dewar ($\varnothing 384\text{ mm}$, $H = 600\text{ mm}$) containing 30 layers of aluminized Mylar Multi-Layer Insulation (MLI) in pervacuum.

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
