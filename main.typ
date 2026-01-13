#import "config.typ": novel
#set text(lang: "es")

// Personajes
#show: doc => {
  show "A1": "A1"
  show "A2": "A2"
  show "A3": "A3"
  show "B1": "B2"
  show "B2": "B2"
  show "B3": "B3"
  show "H1": "H1"
  show "H2": "H2"
  show "H3": "H3"
  doc
}

#novel(
  [Mala Legua],
  [Pseudónimo],
  (
    [Mala hierba nunca muere],
    [Mala hiedra nunca hiere],
    [Mala madre nunca tiene],
    [Mala lengua],
  ),
  (
    "0.typ",
    "1.typ",
    "2.typ",
    "3.typ",
  ),
)
