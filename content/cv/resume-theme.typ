// ============================================================
// resume-theme.typ
// Converted from CSS stylesheet for use with pandoc
// Usage: pandoc input.md -o output.pdf --pdf-engine=typst \
//            --template=resume-theme.typ
// Or as an #import in a wrapper .typ file (see bottom comments)
// ============================================================

#let resume(doc) = {

  // ── Page geometry (mirrors body { width:800px; margin:auto; padding:10px })
  set page(
    paper: "a4",
    margin: (top: 0.5cm, bottom: 0.5cm, left: 0.5cm, right: 0.5cm),
    fill: white,
  )

  // ── Base typography (body { font-family: Verdana; font-size: 14px })
  // Typst ships "Libertinus Serif" by default; swap for any sans you have.
  // Verdana isn't bundled, so we fall back to the closest available sans-serif.
  set text(
    font: ("Helvetica"),
    size: 10pt,           // ≈ 14px at 96 dpi
    fill: black,
    hyphenate: true,
  )

  set par(
    justify: false,
    spacing: 7pt,         // mirrors p { margin-bottom: 7px }
    first-line-indent: 0pt,
  )

  // ── H1 — resume name/title
  // h1 { font-size:50px; color:#757575; text-align:center; margin-bottom:15px }
  show heading.where(level: 1): it => {
    set align(center)
    set text(size: 38pt, fill: rgb("#757575"), weight: "bold")
    block(below: 15pt, it.body)
  }

  // ── H2 — section headings with decorative bar before them
  // h2 { color:#800000 }
  // h2:before { width:16%; height:10px; background:#757575; margin-right:1% }
  show heading.where(level: 2): it => {
    set text(size: 13pt, fill: rgb("#800000"), weight: "bold")
    block(above: 14pt, below: 6pt)[
      // decorative bar (≈16% of 800px = 128px → ~3.4cm)
      #box(
        width: 3.4cm,
        height: 8pt,
        fill: rgb("#757575"),
      )
      #h(0.25cm)   // margin-right:1%
      #it.body
    ]
  }

  // ── H3 — centred sub-heading / front sentence
  // h3 { text-align:center }
  show heading.where(level: 3): it => {
    set align(center)
    set text(size: 12pt, weight: "bold")
    block(above: 8pt, below: 6pt, it.body)
  }

  // ── Blockquote → centred
  // blockquote { text-align:center }
  show quote: it => {
    set align(center)
    set text(style: "italic")
    block(inset: (left: 1cm, right: 1cm), it)
  }

  // ── Links
  // a { color:#800000; text-decoration:none }
  show link: it => {
    set text(fill: rgb("#800000"))
    it   // no underline, colour only
  }

  // ── Horizontal rule
  // hr { color:#A6A6A6 }
  show line: it => it   // passthrough; rule() calls below honour the colour

  // ── Tables
  // table { width:100% }
  set table(
    stroke: 0.5pt + rgb("#A6A6A6"),
    fill: none,
    inset: 5pt,
    align: left,
  )

  // ── Definition lists (dt/dd pattern)
  // dt { float:left; width:17%; font-weight:bold }
  // dd { margin-left:17% }
  // Pandoc emits definition lists as grid-like content; style via terms:
  show terms: it => {
    for item in it.children [
      #grid(
        columns: (17%, 83%),
        gutter: 0pt,
        [*#item.term*],
        item.description,
      )
    ]
  }

  doc
}
