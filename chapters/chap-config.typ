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
