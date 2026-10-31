#set page(
  paper: "a0",
  flipped: true,
  margin: (top: 1.8cm, bottom: 1.8cm, left: 2.2cm, right: 2.2cm),
  fill: rgb("#f8fafc")
)

#set text(
  font: ("Helvetica Neue", "Arial"),
  size: 15pt,
  fill: rgb("#0f172a")
)

#let navy = rgb("#0a2540")
#let blue = rgb("#1d4ed8")
#let slate = rgb("#475569")
#let cardbg = rgb("#ffffff")
#let bordercolor = rgb("#cbd5e1")

// --- HEADER BLOCK ---
#block(
  fill: cardbg,
  stroke: 1.5pt + bordercolor,
  radius: 12pt,
  inset: (x: 2cm, y: 1.2cm),
  width: 100%
)[
  #grid(
    columns: (170pt, 1fr, 190pt),
    align: (center + horizon, center + horizon, center + horizon),
    image("usth_logo.png", width: 140pt),
    [
      #text(size: 32pt, weight: "bold", fill: navy)[
        Design and Fabrication of Low-Temperature Continuous-Flow Cryostat System
      ]
      #v(0.4em)
      #text(size: 19pt, weight: "bold", fill: rgb("#1e293b"))[
        Nguyen Xuan Tai, Nguyen Tien Dat, Tran Phan Sang, Nguyen Minh Tam
      ]
      #v(0.3em)
      #text(size: 15pt, fill: slate)[
        Department of Advanced Materials Science and Nanotechnology, University of Science and Technology of Hanoi (USTH) \
        #text(size: 13.5pt, style: "italic")[Instructors: Dr. Nguyen Van Quyen (AMSN, USTH) • Nguyen Van Huan (An Tai Loc Co., Ltd.)]
      ]
    ],
    [
      #block(
        fill: rgb("#eff6ff"),
        stroke: 1pt + rgb("#bfdbfe"),
        radius: 8pt,
        inset: 10pt
      )[
        #text(size: 12pt, weight: "bold", fill: blue)[USTH AMSN]\
        #text(size: 11pt, fill: slate)[Cryogenic Instrumentation Lab]\
        #text(size: 11pt, weight: "bold", fill: navy)[Group Project 2026]
      ]
    ]
  )
]

#v(0.8cm)

// --- CARD MACRO ---
#let poster-card(title, body) = block(
  fill: cardbg,
  stroke: 1.2pt + bordercolor,
  radius: 10pt,
  inset: 1.1cm,
  width: 100%,
  [
    #block(
      fill: rgb("#0a2540"),
      inset: (x: 14pt, y: 7pt),
      radius: 4pt,
      [#text(size: 17pt, weight: "bold", fill: white)[#title]]
    )
    #v(0.6em)
    #body
  ]
)

// --- 3-COLUMN LAYOUT ---
#columns(3, gutter: 1.8cm)[

  // ================= COLUMN 1 =================
  #poster-card("1. MOTIVATION & CRYOGENIC PHYSICS")[
    Cryogenic environments are critical for characterizing low-dimensional semiconductor devices, phase transitions, and quantum transport phenomena. Commercial turn-key cryostats are cost-prohibitive for flexible prototyping and laboratory education.

    #v(0.3em)
    #block(fill: rgb("#f1f5f9"), inset: 10pt, radius: 6pt)[
      *Core Objective:* Develop an accessible, modular continuous-flow cryostat operating between *77 K and 300 K* with high-vacuum thermal decoupling ($P < 10^{-4}$ mbar) and in-situ 4-probe electrical transport tracking.
    ]

    #v(0.5em)
    *Thermodynamic Heat Load Balance:*
    $ dot(Q)_"total" = dot(Q)_"cond" + dot(Q)_"rad" + dot(Q)_"conv" $

    - *Conduction Leakage:* Fourier's law with temperature-dependent conductivity $k(T)$:
      $ dot(Q)_"cond" = A/L integral_(T_C)^(T_H) k(T) d T $
    - *Radiation Transfer:* Stefan-Boltzmann relation with low-emissivity radiation shielding:
      $ dot(Q)_"rad" = epsilon sigma A (T_H^4 - T_C^4) $
    - *Molecular Flow Vacuum Regime:* At $P < 10^{-4}$ mbar, the gas molecular mean free path exceeds chamber dimensions: $dot(Q)_"conv" approx 0$.
  ]

  #v(0.8cm)

  #poster-card("2. MATERIALS & THERMAL COUPLING")[
    #align(center)[
      #image("cryostat_materials_properties.png", width: 90%)
      #text(size: 11pt, fill: slate, style: "italic")[Thermal conductivity $k(T)$ and electrical resistance across materials.]
    ]
    #v(0.3em)
    - *OFHC Copper (C10100):* Cold finger & sample stage ($k approx 390 "W/(m·K)"$ at 300 K; $k > 1000 "W/(m·K)"$ around 50 K) ensures rapid thermal equilibrium.
    - *SS304L Stainless Steel:* Outer vacuum shell minimizing conductive loss ($k approx 15 "W/(m·K)"$).
    - *Phosphor Bronze / Manganin:* Signal wiring reducing parasitic electrical lead heat load.
  ]

  #colbreak()

  // ================= COLUMN 2 =================
  #poster-card("3. MECHANICAL ARCHITECTURE & CAD")[
    #align(center)[
      #image("cryostat_design_overview.png", width: 90%)
      #text(size: 11pt, fill: slate, style: "italic")[Full 3D cross-sectional CAD assembly of the cryostat.]
    ]

    #v(0.4em)
    - *Modular Vacuum Enclosure:* SS304L body with standard KF-40 flanges, viton O-rings, and quick-release centering clamps.
    - *Cryogenic Delivery Tube:* Continuous liquid nitrogen delivery tube entering the cold head with minimal parasitic conductive bridges.
  ]

  #v(0.8cm)

  #poster-card("4. SAMPLE STAGE & 4-PROBE INTERFACE")[
    #grid(
      columns: (1fr, 1fr),
      gutter: 10pt,
      [
        #align(center)[
          #image("cryostat_holder_iso_3d.png", width: 100%)
          #text(size: 10.5pt, fill: slate)[3D OFHC sample stage.]
        ]
      ],
      [
        #align(center)[
          #image("cryostat_holder_front_cad.png", width: 100%)
          #text(size: 10.5pt, fill: slate)[FreeCAD drawing.]
        ]
      ]
    )

    #v(0.3em)
    - *L-Shaped Geometric Profile:* Optimizes conductive contact area with the cold finger while preserving optical and electrical top access.
    - *Electrical Contact Interface:* Gold-plated phosphor-bronze spring probes mounted on a low-outgassing PCB base for 4-probe van der Pauw measurements.
  ]

  #colbreak()

  // ================= COLUMN 3 =================
  #poster-card("5. SIMULATION & EXPERIMENTAL VALIDATION")[
    #grid(
      columns: (1fr, 1fr),
      gutter: 8pt,
      [
        #image("cryostat_cooling_curve.png", width: 100%)
        #align(center)[#text(size: 10.5pt, fill: slate)[Continuous-flow cooldown curve.]]
      ],
      [
        #image("cryostat_vacuum_curve.png", width: 100%)
        #align(center)[#text(size: 10.5pt, fill: slate)[Vacuum pump-down curve.]]
      ]
    )

    #v(0.3em)
    #align(center)[
      #image("cryostat_pid_stabilization.png", width: 92%)
      #text(size: 10.5pt, fill: slate, style: "italic")[PID thermal regulation ($plus.minus 0.4 "K"$) across multi-step setpoints.]
    ]

    #v(0.3em)
    - *Dynamic Thermal Tracking:* Åström-Hägglund relay auto-tuning with Tyreus-Luyben rules smoothly managed thermal inertia.
    - *Thermal Stability:* Maintained setpoints with $plus.minus 0.4 "K"$ fluctuation from 160 K to 300 K without sustained oscillation.
  ]

  #v(0.8cm)

  #poster-card("6. SPECIFICATIONS & CONCLUSION")[
    #table(
      columns: (1.4fr, 2fr),
      stroke: 0.5pt + rgb("#cbd5e1"),
      fill: (col, row) => if row == 0 { rgb("#f1f5f9") } else { none },
      inset: 6.5pt,
      [*Parameter*], [*Demonstrated Specification*],
      [Temperature Range], [160 K – 300 K (Tested) / 77 K (Baseline LN2)],
      [Temperature Stability], [$plus.minus 0.4 "K"$ steady-state fluctuation],
      [Base Vacuum], [$8.5 times 10^{-5}$ mbar (molecular flow)],
      [Sample Mount], [OFHC copper stage with 4-probe spring pins],
      [Control Loop], [Arduino PID + Python GUI with live telemetry]
    )

    #v(0.4em)
    *Conclusion:* Validated a robust, modular, accessible continuous-flow cryostat platform integrating high vacuum isolation, precision PID temperature control, and in-situ electrical resistivity characterization.
  ]
]
