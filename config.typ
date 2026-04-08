// Novel
#let novel(title, author, dedication, chapters, cover:none) = {
  set page(numbering: none)

  if cover == none {
    set page(
      fill: rgb("#0a466c"),
    )
    set text(
      font: "New Computer Modern",
      fill: rgb("#ffffff"),
      size: 25pt,
    )

    align(center + horizon, heading(level: 1, title))
    align(center + horizon, author)
  } else {
    set page(background: cover)
    pagebreak()
  }

  set par(justify: true, first-line-indent: (amount: 1.5em, all: true))
  set text(font: "New Computer Modern", size: 10pt)

  show outline: it => {
    show heading: set align(center)
    it
  }

  show outline.entry: it => {
    link(it.element.location(), it)
  }

  outline(target: heading.where(level: 2))

  pagebreak(weak: true)
  align(right + horizon, emph(dedication.join([ \ ])))

  set page(numbering: "1")
  counter(page).update(1)

  for ch in chapters {
    pagebreak(weak: true)
    align(center, heading(level: 2, ch))
    include "chapters/"+lower(ch).replace(" ", "_")+".typ"
  }
}
