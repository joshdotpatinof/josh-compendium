// template.typ

#let conf(title, year: "2026", doc) = {
  // ==== CONFIGURATION & STYLING ====
  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2.5cm),
    header: align(right, text(fill: gray.darken(20%), size: 9pt)[CS Knowledge Compendium]),
    footer: context [
      // Fixed: 'context' lets Typst safely inspect and display the dynamic page number!
      #set text(fill: gray, size: 9pt)
      #grid(
        columns: (1fr, 1fr),
        align(left)[Year #year],
        align(right)[Page #counter(page).display()]
      )
    ]
  )

  set text(
    font: "Liberation Sans",
    size: 11pt,
    fill: rgb("2d3748")
  )

  show heading: set text(fill: rgb("1a365d"))

  show heading.where(level: 1): it => block(width: 100%, below: 1.5em)[
    #set text(size: 18pt, weight: "bold")
    #it.body
    #v(0.2em)
    #line(length: 100%, stroke: 1.5pt + rgb("3182ce"))
  ]

  show heading.where(level: 2): it => block(below: 1em, above: 1.5em)[
    #set text(size: 14pt, weight: "semibold", fill: rgb("2b6cb0"))
    #it.body
  ]

  // Main Document Title Layout
  align(center)[
    #text(size: 22pt, weight: "bold", fill: rgb("1a365d"))[#title]
  ]
  v(1em)

  doc
}

// Custom Callout Box for Pitfalls/Warnings
#let pitfall(content) = block(
  fill: rgb("fff5f5"),
  stroke: (left: 4pt + rgb("e53e3e")),
  inset: 12pt,
  radius: (right: 4pt),
  width: 100%,
  [
    #text(weight: "bold", fill: rgb("c53030"))[⚠️ Common Pitfall / Bug Alert:] \
    #v(0.2em)
    #content
  ]
)