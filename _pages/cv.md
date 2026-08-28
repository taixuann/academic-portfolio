---
layout: archive
title: "Curriculum Vitae"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

<p><a href="{{ base_path }}/files/academic-cv.pdf" class="btn btn--primary" target="_blank" rel="noopener noreferrer"><i class="fa fa-download" aria-hidden="true"></i> Download Full CV (PDF)</a></p>

## Education
* **B.S. in Materials Science & Nano-Engineering**, 2024
  * University of Science and Technology of Hanoi (USTH)

## Research Experience
* **Researcher / Research Assistant** (2024 – Present)
  * Focus: Polydopamine memristive junctions, cryogenic transport instrumentation, and nanophotonic modeling.
  * Lead author on first-author manuscript submitted to *Journal of the American Chemical Society* (JACS).

## Core Technical Competencies
* **Device Fabrication & Chemistry**: Thin-film electropolymerization, crossbar device microfabrication, surface functionalization.
* **Electrical Characterization**: DC I–V hysteresis, variable-temperature electronic transport, fast-pulse characterization, STP/PPF synaptic plasticity, endurance/retention testing.
* **Materials Characterization**: XPS (core-level peak deconvolution), Raman spectroscopy, UV–Vis spectrophotometry, AFM.
* **Instrumentation & Engineering**: FreeCAD 3D parametric mechanical design, cryogenic system architecture (77 K–350 K), custom PCB design, LabVIEW automation.
* **Computational Modeling**: Lumerical FDTD (3D electrodynamics), Lumerical HEAT (photothermal finite element analysis), Python thermal finite-difference modeling (FDM).

## Publications & Preprints
<ul>{% for post in site.publications reversed %}
  {% include archive-single-cv.html %}
{% endfor %}</ul>
