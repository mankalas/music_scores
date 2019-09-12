santuzza = \relative c' {
  \global
  % Music follows here.
  R1. * 16

  \bar "||"
  \time 4/4
  R1 * 5

  \bar "||"
  \time 12/8
  r2. r4 r8 d4 d8

  \bar "||"
  \time 12/8
  b'2.~ b8 g a b c\( d |
  b4.~ b4 a8 g4.\) g4 g8 |
  e'2.~ e8 c d e f g\( |
  e4.~ e4 d8 c4.\) c8\( d e |
  f e f d2.\) d8\( e f\) |
  g fs! g e4.~\( e8 e fs g fs e\) |
  d2.~ d8 r4 r r8 |
  R1. * 2 |
  r2. r4 r8 fs,4 fs8 |
  d'2.~ d8 b\( c d e f\) |
  e8 ds e g4.~ g8\( fs e\) d4 r8 |
  r1. |
  e8\( ds\) e8 g2.~ g8 fs e |
  d!2.~ d8 a c b a b |
  g r r r4 r8 r2. |
  r2. r4 r8 gf4 gf8 |
  ef'2.~ ef8 cf df ef! f gf |
  f f f f4.~ f8 f f f4.~ |

  \bar "||"
  \time 6/8
  f4. ef4 ef8 |

  \bar "||"
  \time 12/8
  f4. f4.\( af~\) af4 g8 |
  f8( ef) g, d'4 c8 c8( bf ef,) bf'4 af8 |
  g r r r4 r8 r2. |
  r1. | r | r |

  \bar "||"
  \time 6/8
  r2. |

  \bar "||"
  \time 12/8
  r2. r4 r8 d4 d8 |
  b'2.~ b8 g a b c d |
  b4.~ b4 a8 g4. g4 g8 |
  e'2.~ e8 c d e f g |
  e4.~ e4( d8) c4. c8 d e |
  f e f d2. d8 e f |
  g fs! g e2. r4 r8 |
  r2. r4 r8 a,\( b\) c

  \bar "||"
  \time 6/8
  d cs d e fs! g |

  \bar "||"
  \time 12/8
  g4 r8 d4.~^> d8 a b c b a |
  g4. r4 r8 r4 r8^\p g'4\(^"espress." g8\) |
  fs4.~ fs8 r r r4 r8 f4\( f8 |
  e4.~\) e8 r8 r r4 r8 ef4\( ef8 |
  d\) r r r4 r8 r2. |
  r1. | r | r |
  r2. r4 r8 d4 d8 |
  <<
    { \voiceOne { \tieDown \stemDown e2.~ e4. e | g2.~ g4.~ g4 } }
    \new Voice { \voiceTwo { \tieUp \stemUp \teeny g2.~ g4. a | b2.~ b4.~ b4 } }
  >> \oneVoice
  r8

  \bar "|."
}

verseSantuzza = \lyricmode {
  O re -- joice __ that the Lord has a -- ris -- \skip8 en
  He has burst __ thro' the gates of the pri -- \skip8 son,
  He has a -- ris -- en in glo -- ry,
  in His glo -- ry to save __
  in His glo -- ry to save __

  O re -- joice __ that the Lord has a -- ris -- en,
  a -- ris -- \skip8 \skip8 en
  ris -- en in glo __ ry to save __ in His glo -- ry to
  save O re -- joice __ that the Lord has a -- ris -- en
  a -- ris -- en in glo -- ry to save,
  ris -- en __ has
  ris -- en in His glo -- ry to save
  O re -- joice __ that the Lord has a -- ris -- \skip8 en,
  O re -- joice __ that the Lord has a -- ris -- en,
  He has a -- ris -- en in glo -- ry, in His glo -- ry to save
  He has a -- ris -- en in glo -- ry to save
  ah! __ in his glo -- ry to save
  O re -- joice __ in the Lord __ O re -- joice
  in the Lord __ the Lord __
}
