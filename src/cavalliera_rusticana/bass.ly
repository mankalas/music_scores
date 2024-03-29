bass = \relative c {
  \global
  % Music follows here.
  r2. d2^\p d4 |
  b'4. b4 b8 g4. g4 g8 |
  d'2. d4. d4 d8 |
  a4. a4 a8 f4. f4 f8 |
  c'2.~ c4. c4 c8 |
  c4. c4 c8 c4. c4 c8 |
  b2. bf4. bf4 bf8 |
  a4. a4.~ a8 a a a a a |
  d,2.~ d4. c'!4^\p c8 |
  b4. b4 b8 g4. g4 g8 |
  d'2. d4. d4 d8 |
  a4. a4 a8 f4. f4 f8 |
  c'2.~ c4. c4 c8 |
  a4. a4 a8 g4. g4 g8 |
  f2.\( c4.\) cs4 cs8 |
  d4.
  <<
    { \voiceOne e4 e8 e4. d4 d8 | d2.~ d8 }
    \new Voice { \voiceTwo c!4 b8 a4. d4 d8 | g,2.~ g8 }
  >> \oneVoice
  r8 r4 r |

  \bar "||"
  \time 4/4
  R1 * 5

  \bar "||"
  \time 12/8
  R1.

  \bar "||"
  \time 12/8
  R1. * 6 |
  r2. r8 fs'8 g a g e |
  d2.~ d8 r r4 r |
  r1. | r1. |
  r2. r8 r4 g4 g8 |
  c4. b4 c8 a4. b4. |
  c4. b4\( c8\) a4. b4 b8 |
  c4. b4 c8 a4. a,4 a8 |
  d4. g8\( fs e\) d d d d d d |
  g4. fs4\( g8\) d2.( |
  a'4.) gs4 a8 fs4.\( gf4.\) |
  cf4. bf4 cf8 af4. af4 af8 |
  df4. c!4 df8 bf4. af4 bf8 |

  \bar "||"
  \time 6/8
  gf4. gf4 gf8

  \bar "||"
  \time 12/8
  f4. f4.\( bf,4.~\) bf4 bf8 |
  bf4. bf4 bf8 bf4. bf4 bf8 |
  b!8 r r r4 r8 r g' g g fs! g |
  af4 r4 r r2. |
  r1. | r1. |

  \bar "||"
  \time 6/8
  r2.

  \bar "||"
  \time 12/8
  r8 d,8 d d d d d' c a fs e d |
  g4. fs4 g8 e4. ef4. |
  d4.~ d4 d8 e!4. d4 d8 |
  c4. b4 c8 a4. af4. |
  g4.~ g4 g8 a!2. |
  d4. c4 d8 b2. |
  e4. d4 e8 c4. c4. |
  f4. e4. d4. c4. |

  \bar "||"
  \time 6/8
  b4. a4. |

  \bar "||"
  \time 12/8
  d4 r8 d'4.~^> d8 a b c b a |
  g4. g4 g8 e2. |
  d4. d4 d8 d2. |
  c4. c4 c8 c2. |
  d8 <<
    \new Voice = "bassUpper" {
      \voiceOne
      r4 r4 r4 fs8 fs fs fs fs |
      g4 r8 r4 r8 r8 g g g g g |
      gs4 r8 r4 r8 r gs gs gs gs gs |
      a4 r8 r gs gs a4 r8 r gs gs |
      a8
    }
    {
      \voiceTwo {
        d,8 d d d d d2.~ |
        d8 d d d d d d2.~ |
        d8 d d d d d d2.~ |
        d8 d d d4.~ d8 d d d4.~ |
        d8
      }
    }
  >> \oneVoice
  r2. r4 d'4 d8 |
  c2.~ c4. c |
  <<
    { \voiceOne b2.~ b4.~ b4 }
    \new Voice { \voiceTwo g2.~ g4.~ g4 }
  >> \oneVoice r8

  \bar "|."
}

verseBassUpper = \lyricmode {
 O re -- joice in the Lord   
 O re -- joice in the Lord   
 O sing prai -- ses to Him,
 O re -- joice in the Lord
}

verseBass = \lyricmode {
  % Lyrics follow here.
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en __ in His glo -- ry to save __
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in glo -- ry to save. __
  in His glo -- ry to save __
  He has ris -- en has ris -- en ris -- en
  has ris -- en in glo -- ry, in glo -- ry,
  in glo -- ry, \skip8 to save in His glo -- ry to save.
  O re -- joice __ O re -- joice re -- joice that
  the Lord has a -- ris -- sen a -- ris -- en in
  glo -- ry to save, ris -- en __ has
  ris -- en in glo -- ry to save
  O re -- joice in the Lord
  O re -- joice in the Lord O re -- joice in the Lord
  O re -- joice re -- joice __ re -- joice that the Lord
  has a -- ris -- en
  in __ the Lord He has a -- ris -- en in His glo -- ry in His glo -- ry
  save to save ah! __ in His glo -- ry to save.
  Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord __
  O re -- joice in the Lord __
  in the Lord __ in the Lord __
  in the Lord __ the Lord __
}
