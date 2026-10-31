# Ethan Weber Posterskill Interactive Architecture

Source: [https://github.com/ethanweber/posterskill](https://github.com/ethanweber/posterskill)

## Key Concepts

### 1. The Living Editor Pattern
Traditional posters generated as static PDFs are hard to adjust: small text overflow or awkward aspect ratios break the design. `posterskill` introduces the concept of generating an **interactive HTML poster** directly:
- Every card is an entry in a `CARD_REGISTRY`.
- The layout is defined by `DEFAULT_LAYOUT` (columns, order of card keys).
- In-browser drag dividers allow interactive resizing of columns (width in mm) and card slots (height in mm).
- A single click on two card handles swaps them effortlessly.

### 2. Aspect Ratio Matching & Zero-Waste Layout
The #1 flaw in academic posters is dead whitespace ("waste"). Posterskill optimizes layout using figure aspect ratios:
- Wide panoramic figures (e.g., cross-sectional assembly drawings, multi-channel spectra) span across 2 or 3 columns.
- Tall vertical figures (e.g., sample holder cross-section, cryostat tube stack) fit naturally in single 1-column cards.
- Container elements use `width: 100%; height: 100%; object-fit: contain;`.

### 3. Web & Print Dual-Mode CSS
```css
@media screen {
  /* Interactive canvas with zoom, pan, and border guidelines */
}

@media print {
  @page {
    size: 1189mm 841mm landscape; /* A0 standard */
    margin: 0;
  }
  /* Strip out edit handles, dividers, and UI buttons */
  .poster-toolbar, .resize-handle {
    display: none !important;
  }
}
```

### 4. Direct Web Portfolio Integration
For web portfolios (like Astro, Next.js, or static HTML):
- Render a high-resolution canvas/SVG or crisp responsive vector container.
- Embed interactive zoom & pan so researchers can examine micron-level CAD details or simulation error bars without squinting.
- Offer direct download of the print-ready vector PDF.
