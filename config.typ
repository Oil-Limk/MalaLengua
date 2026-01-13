// Bookcover
#let bookcover(title, author) = {
  set page(
    fill: rgb("#201106"),
  )
  set text(
    font: "Noto Sans Old",
    fill: rgb("#ecb500"),
    size: 25pt,
  )

  align(center + horizon, heading(level: 1, title))
  align(center + horizon, author)
}

// Novel
#let novel(title, author, dedication, chapters) = {
  set page(paper: "us-letter", numbering: none)

  bookcover(title, author)

  set par(justify: true, first-line-indent: (amount: 1.5em, all: true))
  set text(font: "Noto Sans Old", size: 10pt)

  show outline: it => {
    show heading: set align(center)
    it
  }

  outline(target: heading.where(level: 2))

  pagebreak(weak: true)
  align(right + horizon,
    for phrase in dedication {
      emph(phrase)
      linebreak()
    }
  )

  set page(paper: "us-letter", numbering: "1")
  counter(page).update(1)

  for chapter in chapters {
    pagebreak(weak: true)
    include "chapters/"+chapter
  }
}

// Chapters
#let chapter(title, verses, doc) = {
  align(center, heading(level: 2, title))

  align(left, (emph(
    for verse in verses {
      linebreak()
      verse
    }
  ),[...]).join())
  linebreak()

  doc
}
