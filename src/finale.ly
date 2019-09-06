\version "2.18.2"
\language "english"

global = {
  \key g \major
  \time 12/8
  \tempo "L'istesso tempo" 4=60
  
}

sopranoOne = \relative c'' {
  \global
  % Music follows here.
}

sopranoTwo = \relative c'' {
  \global
  % Music follows here.
  d4. d4 d8 e4. e4 e8 |
  b2. b4. b4 b8 |
  c4. c4 c8 d4. d4 d8 |
  a2.~ a4. a4 a8 |
  a4. a4 a8 a4. b4 a8 |
  d2. d4. d4 e8 |
  fs e d d4.~ d4( cs16 b) cs4~ cs16 d |
  d2.~ d4. d,4^\p d8 |
  d'4. d4 d8 e4. e4 e8 |
  b2. b4. b4 b8 |
  c4. c4 c8 d4. d4 d8 |
  a2.~ a4. a4 a8 |
  a4. a4 a8 b4. b4 b8 |
  c2.\( c4.\) as!4 as8 |
  b4. g8 a b c4. c4 c8 |
  b2.~ b8 r r r4 r8 |
  
  \bar "||"
  \time 4/4
  R1 * 5 
  
  \bar "||"
  \time 12/8
  R1.
  
  \bar "||"
  \time 12/8
  R1. * 6 |
  r2. r8 fs g a g fs |
  d2.~ d8 r r r4 r8 |
  r1. | r | r | 
  r4 r8 d'!4 e8 c4.( b4) r8 |
  r1. |
  r4 r8 d!4 e8 c4. e,8\( ds\) e |
  g2.~ g8 fs fs fs fs fs |
  g8 r r r4 r8 r2. |
  r2. r4 r8 gf4 gf8 |
  ef'2.~ ef8 cf df ef! f gf |
  f f f f4.~ f8 f f f4.~ |
  
  \bar "||"
  \time 6/8
  f4. ef4 ef8 |
  
  \bar "||"
  \time 12/8
  f4. f4.\( d!4.~\) d4 d8 |
  f8( ef) g, d'4 c8 c8( bf ef,) bf'4 af8 |
  g r r r4 r8 r2. |
  r1. | r |
  r8 bf bf bf a bf b4 r8 r4 r8 
  
  \bar "||"
  \time 6/8
  r b! c c b c |
  
  \bar "||"
  \time 12/8
  c c c c c c c r r d,4 d8 |
  b'2.~ b8 g a b c d |
  b4.~ b4 a8 g4. g4 g8 |
  e'2.~ e8 c d e f g |
  e4.~ e4( d8) c4. c8 d e |
  f e f d2. d8 r r |
  r4 r8 b4 b8 b4.( bf8) r r |
  r2. r4 r8 a\( b\) c
  
  \bar "||"
  \time 6/8
  d cs d e fs! g |
  
  \bar "||"
  \time 12/8
  g4 r8 d4.~^> d8 a b c b a |
  g4. b4 b8 g2. |
  fs4. fs4 fs8 f2. |
  e4. e4 e8 ef2. |
  d8 r r r4 r8 r a' a a a a |
  bf4 r8 r4 r8 r bf bf bf bf bf |
  b!4 r8 r4 r8 r b b b b b |
  c4 r8 r b b c4 r8 r b b |
  c r r r4 r8 r4 r8 d4 d8 |
  e2.~ e4. e |
  d2.~ d4.~ d4 r8 
  
  \bar "|."
}

alto = \relative c'' {
  \global
  % Music follows here.
  g4. g4 g8 g4. g4 g8 |
  fs2. fs4. fs4 fs8 |
  f4. f4 f8 f4. f4 f8 |
  e2.~ e4. g4 g8 |
  fs!4. fs4 fs8 fs4. fs4 fs8 |
  a4.\( g2.\) g4 g8 |
  fs4. fs8 g a g4. g4 g8 |
  fs2.~ fs4. d4^\p d8 |
  g4. g4 g8 g4. g4 g8 |
  fs2. fs4. fs4 fs8 |
  f4. f4 f8 f4. f4 f8 |
  e2.~ e4. e4 e8 |
  f4. f4 f8 d4. d4 d8 |
  a'2.\( g4.\) g4 g8 |
  g4. g8 a b c4. a4 a8 |
  g2.~ g8 r r r4 r8 |
  
  \bar "||"
  \time 4/4
  R1 * 5 
  
  \bar "||"
  \time 12/8
  R1.
  
  \bar "||"
  \time 12/8
  R1. * 6 |
  r2. r8 fs g a g e |
  d2.~ d8 r r d4 d8 |
  b'2.~ b8 g\( a b c d\) |
  c4.\( c4\) r8 r2. |
  r1. |
  r4 r8 g4 g8 g4. g4 g8 |
  g4. g4 g8 g4. g4 g8 |
  g4. g4 g8 g4. g4 g8 |
  g2.~ g8 r r d4 d8 |
  b'2.~ b8 g\( a b cs d |
  cs4.\) cs4 r8 r2. |
  r1. |
  af4. a4. bf4. cf4 cf8 |
  
  \bar "||"
  \time 6/8
  bf4. bf4 bf8 |
  
  \bar "||"
  \time 12/8
  a!4. a4. af4.~ af4 af8 |
  g4 ef8 ef4 ef8 ef4. c4 d8 |
  d r r r4 r8 r2. |
  r2. r8 af'8 af af g af |
  a!4 r8 r4 r8 r2. |
  r1. |
  
  \bar "||"
  \time 6/8
  r2.
  
  \bar "||"
  \time 12/8
  r8 fs! fs fs fs fs fs r r r4 r8 |
  r4 r8 ds4 ds8 e8 r r r4 r8 |
  r4 r8 d!( e) fs g4 r8 r4 r8 |
  r4 r8 gs4 gs8 a r r r4 r8 |
  r4 r8 g!8(\( a) b c\) r r r4 r8 |
  r4 r8 f,4 f8 f4.~ f8 r r |
  r4 r8 g4 g8 g4.~ g8 r r |
  r1. |
  
  \bar "||"
  \time 6/8
  r4 r8 c!4. |
  
  \bar "||"
  \time 12/8
  b4 r8 d4.~^> d8 a b c b a |
  g4. r8 r4 r2. |
  r1. | r | 
  r2. r8 fs fs fs fs fs |
  g4 r8 r4 r8 r g g g g g |
  gs4 r8 r4 r8 r gs gs gs gs gs |
  a4 r8 r gs gs a4 r8 r gs gs |
  a r r r4 r8 r4 r8 d4 d8 |
  g,2.~ g4. a |
  b2.~ b4.~ b4 r8
}

tenorOne = \relative c' {
  \global
  % Music follows here.
  d4. d4 d8 b4. b4 b8 |
  fs'2. fs4. d4 d8 |
  c4. c4 c8 a4. a4 a8 |
  e'2.~ e4. e4 e8 |
  d4. d4 d8 d4. d4 d8 |
  d2. d4. d4 d8 |
  d4. d8 e fs e4. e4 e8 |
  d2.~ d4. d4^\p d8 |
  d4. d4 d8 b4. b4 b8 |
  fs'2. fs4. d4 d8 |
  c4. c4 c8 a4. a4 a8 |
  e'2.~ e4. c4 c8 |
  c4. c4 c8 d4. d4 d8 |
  f2.\( e4.\) e4 e8 |
  d8 e fs! g4.~ g4( fs16 e) fs4~ fs16 g |
  g2.~ g8 r r r4 r8 |
  
  \bar "||"
  \time 4/4
  R1 * 5 
  
  \bar "||"
  \time 12/8
  R1.
  
  \bar "||"
  \time 12/8
  R1. * 6 |
  r2. r8 fs8 g a g e |
  d2.~ d8 r8 r r4 r8 |
  r2. r4 r8 e,4 e8 |
  c'2.~ c8 a8\( b c d e |
  d4.~ d8\) r8 r r2. |
  r1. |
  e8\( ds\) e8 g4.~ g8( fs e) d!4 r8 |
  r2. e8( ds) e g4.~ |
  g8 fs e d!4.~ d8 c e d c d |
  b r r r4 r8 r4 r8 e,4 e8 |
  cs'2.~ cs8 a b cs ds e |
  ds4.~ ds8 r r r2. |
  r4 r8 r f f f4.~ f8 f f 
  
  \bar "||"
  \time 6/8
  f4. ef4 ef8 
  
  \bar "||"
  \time 12/8
  f!4. f4. af4.~ af4 g8 |
  f8( ef) g, d'4 c8 c8( bf ef,) bf'4 af8 |
  g8 r r r4 r8 r2. |
  r1. |
  r2. r8 a! a a gs a |
  bf4 r8 r4 r8 r8 b! b b as b
  
  \bar "||"
  \time 6/8
  c8 b! c c b c
  
  \bar "||"
  \time 12/8
  c8 c c c c c c r4 d,4 d8 |
  b'2.~ b8 g a b c d |
  b4.~ b4( a8) g4. g4 g8 |
  e'2.~ e8 c d e f g |
  e4.~e4( d8) c4. c8 d e |
  f e f d2. d8 e f |
  g fs! g e2. r8 r4 |
  r8 r4 c8 d e f e f e4. |
  
  \bar "||"
  \time 6/8
  d8 cs d e fs! g |

  \bar "||"
  \time 12/8
  g4 r8 d4.^>~ d8 a b c! b a |
  g4. d'4 d8 e2. |
  b4. b4 b8 d2. |
  a4. a4 a8 a2. |
  a8 r4 r2 d8 d d d d |
  e!4 r8 r4 r8 r8 e e e e e| 
  f4 r8 r4 r8 r8 f f f f f |
  fs!4 r8 r es es fs4 r8 r es es |
  fs r8 r r4 r8 r4 r8 d4 d8 |
  g2.~ g4. g |
  g2.~ g4.~ g4 r8
  
  \bar "|."
}

tenorTwo = \relative c' {
  \global
  % Music follows here.
  d4. d4 d8 b4. b4 b8 |
  fs'2. fs4. d4 d8 |
  c4. c4 c8 a4. a4 a8 |
  e'2.~ e4. e4 e8 |
  d4. d4 d8 d4. d4 d8 |
  d2. d4. d4 d8 |
  d4. d8 e fs e4. e4 e8 |
  d2.~ d4. d4^\p d8 |
  d4. d4 d8 b4. b4 b8 |
  fs'2. fs4. d4 d8 |
  c4. c4 c8 a4. a4 a8 |
  e'2.~ e4. c4 c8 |
  c4. c4 c8 b4. b4 b8 |
  a2.\( c4.\) as4 as8 |
  b4. e4 d8 c4. c4 c8 |
  b2.~ b8 r8 r4 r |
  
  \bar "||"
  \time 4/4
  R1 * 5 
  
  \bar "||"
  \time 12/8
  R1.
  
  \bar "||"
  \time 12/8
  R1. * 6 |
  r2. r8 fs8 g a g e |
  d2.~ d8 r8 r r4 r8 |
  r2. r4 r8 e4 e8 |
  c'2.~ c8 a8\( b c d e |
  d4.~ d8\) r8 r r2. |
  r1. |
  r4 r8 d!4 e8 c4. b4 r8 |
  r2. r4 r8 c4 c8 |
  b2.~ b8 c e d c d |
  b8 r r r4 r8 r4 r8 e,4 e8 |
  cs'2.~ cs8 a b cs ds e |
  ds4.~ ds8 r8 r r2. |
  f4. ef4. df4. df4 df8 |
  
  \bar "||"
  \time 6/8
  df4. c!4 c8 |
  
  \bar "||"
  \time 12/8
  c4. c\( d!~ \) d4 d8 |
  bf4 g8 fs!4 fs8 g4. ef4 f!8 |
  g8 r r r4 r8 r2. |
  r1. |
  r2. r8 a! a a gs a |
  bf4 r8 r4 r8 r8 b! b b as b
  
  \bar "||"
  \time 6/8
  c8 b! c c b c
  
  \bar "||"
  \time 12/8
  c8 a a a a a a r r r4 r8 |
  r4 r8 a4 a8 g r r r4 r8 |
  r2. r4 r8 g( a) b |
  c4. d4 d8 c r r r4 r8 |
  r4 r8 g8\(( a) b c\) r r r4 r8 |
  r4 r8 a4 a8 a4.( g8) r r |
  r2. r4 r8 e8 f g |
  a gs a g4. a a |
  
  \bar "||"
  \time 6/8
  g e' |
  
  \bar "||"
  \time 12/8
  d4 r8 d4.^>~ d8 a b c! b a |
  % tenor 2
  g4. b4 b8 b2. |
  b4. b4 b8 a2. |
  a4. a4 a8 g2. |
  fs8 r4 r2 a8 a a a a |
  bf4 r8 r4 r8 r bf bf bf bf bf |
  b!4 r8 r4 r8 r b b b b b |
  c4 r8 r b b c4 r8 r b b |
  c r r r4 r8 r4 r8 d4 d8 |
  e2.~ e4. e |
  d2.~ d4.~ d4 r8   
}

bass = \relative c' {
  \global
  % Music follows here.
  
  b4. b4 b8 g4. g4 g8 |
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
  % poly start - bass 1
  d4. e4 e8 e4. e4 e8 |
  e2.~ e8 r8 r4 r |
  
  \bar "||"
  \time 4/4
  R1 * 5 
  
  \bar "||"
  \time 12/8
  R1.
  
  \bar "||"
  \time 12/8
  R1. * 6 |
  r2. r8 fs8 g a g e |
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
  d8 d d d d d d2.~ |
  d8 d d d d d d2.~ |
  d8 d d d d d d2.~ |
  d8 d d d4.~ d8 d d d4.~ |
  d8 r8 r r4 r8 r4 r8 d'4 d8 |
  c2.~ c4. c |
  b2.~ b4.~ b4 r8
  
  \bar "|."
}


verseSopranoOne = \lyricmode {
  joice that the Lord has a -- ris -- en 
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo -- ry to save
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo __ ry to save. __
  in his glo -- ry to save __
  O re -- joice  __ that the Lord has a -- ris -- en
  He has burst thro' the gates of his pri -- son, has 
  ris -- en in glo -- ry to save __
  O re -- joice  __ that the Lord is a -- ris -- en
  in His glo -- ry His 
  glo -- ry to save, ris -- en __ has 
  ris -- en in his glo -- ry to save 
  O re -- joice in the Lord
  O re -- joice __ in the Lord in the Lord
  in __ the Lord in the Lord 
  in __ the Lord in the Lord __ in the Lord __
  to save ah! __ in His glo -- ry to save
  % Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord
  O sing prai -- ses to Him,
  O re -- joice in the Lord in the Lord __
  the Lord __
}

verseSopranoTwo = \lyricmode {
  joice that the Lord has a -- ris -- en 
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in glo __ ry __ to save
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo __ ry to save. __
  in his glo -- ry to save __
  a -- ris -- en __
  in His glo __ \skip8 ry to save __ in His glo -- ry to save
  O re -- joice __ that the Lord has a -- ris -- en a -- ris __ en in 
  glo __ ry to save, ris -- en __ has
  ris __ en in His glo __ ry to save
  O re -- joice in the Lord
  O re -- joice in the Lord!
  O re -- joice in the Lord
  O re -- joice __ that the Lord has a -- ris __ \skip8 en
  O re -- joice __ that the Lord has a -- ris __ en
  He has a -- ris -- en in glo -- ry
  in the Lord He has a -- ris -- en in glo -- ry to save 
  ah! __ in His glo -- ry to save
  Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord
  O sing prai -- ses to Him,
  O re -- joice in the Lord in the Lord __
  the Lord __
}

verseAlto = \lyricmode {
  joice that the Lord has a -- ris -- en 
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo -- ry to save
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo __ ry to save. __
  in his glo -- ry to save __
  O re -- joice  __ that the Lord has a -- ris -- en
  He has burst thro' the gates of his pri -- son, has 
  ris -- en in glo -- ry to save __
  O re -- joice  __ that the Lord is a -- ris -- en
  in His glo -- ry His 
  glo -- ry to save, ris -- en __ has 
  ris -- en in his glo -- ry to save 
  O re -- joice in the Lord
  O re -- joice __ in the Lord in the Lord
  in __ the Lord in the Lord 
  in __ the Lord in the Lord __ in the Lord __
  to save ah! __ in His glo -- ry to save
  % Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord
  O sing prai -- ses to Him,
  O re -- joice in the Lord in the Lord __
  the Lord __
}

verseTenorOne = \lyricmode {
  joice that the Lord has a -- ris -- en 
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo -- ry to save
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in glo __ ry to save. __
  in his glo -- ry to save __
  He has con __ quer'd the pow'r of the grave
  He has a -- ris -- en in __ his glo -- ry to save __
  in his glo -- ry to save
  He has con __ quer'd the pow'r of the grave __
  in His glo -- ry His glo -- ry to save, ris -- en __
  has ris __ en in His glo __ ry to save
  O re -- joice in the Lord
  O re -- joice in the Lord
  O re -- joice in the Lord!
  O re -- joice in the Lord
  O re -- joice __ that the Lord has a -- 
  ris __ en O re -- joice __ that the Lord has a -- 
  ris -- en He has a -- ris -- en in glo -- ry, in His 
  glo -- ry to save He has a -- ris -- en in glo -- ry
  in his glo -- ry to save ah! __ in his glo -- ry to save
  Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord
  O sing prai -- ses to Him,
  O re -- joice in the Lord in the Lord __
  the Lord __
}

verseTenorTwo = \lyricmode {
  joice that the Lord has a -- ris -- en 
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in his glo -- ry to save
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in glo -- ry to save. __
  in his glo -- ry to save __
  He has con __ quer'd the pow'r of the grave
  He has ris -- en in his glo -- ry, his glo -- ry to 
  save He has con __ quer'd the pow'r of the grave
  in his glo -- ry his glo -- ry to save, ris -- en __
  has ris -- en in his glo ry to save.
  O re -- joice in the Lord
  O re -- joice in the Lord
  O re -- joice in the Lord!
  O re -- joice in the Lord
  in the Lord
  O __ re -- joice in the Lord in the Lord in the Lord __
  He has a -- ris -- en in glo -- ry to 
  save to save ah! __ in his glo -- ry to save 
  Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord 
  O sing prai -- ses to Him
  O re -- joice in the Lord in the Lord __ the Lord __
}

verseBass = \lyricmode {
  % Lyrics follow here.
  joice that the Lord has a -- ris -- en 
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en __ in his glo -- ry to save __
  O re -- joice that the Lord has a -- ris -- en
  He has con -- quer'd the pow'r of the grave __
  He has bro -- ken the gates of the pri -- son,
  He has ris -- en in glo -- ry to save. __
  in his glo --ry to save __
  He has ris -- en has ris -- en ris -- en 
  has ris -- en in glo -- ry, in glo -- ry, 
  in glo -- ry, \skip8 to save in His glo -- ry to save.
  O re -- joice __ O re -- joice re -- joice that
  the Lord has a -- ris -- sen a -- ris -- en in
  glo -- ry to save, ris -- en __ has 
  ris -- en in glo -- ry to save
  O re -- joice in the Lord:
  O re -- joice in the Lord O re -- joice in the Lord 
  O re -- joice re -- joice __ re -- joice that the Lord
  has a -- ris -- en
  in the Lord He has a -- ris -- en in his glo -- ry in his glo -- ry
  save to save ah! __ in his glo -- ry to save.
  Al -- le -- lu -- ja al -- le -- lu -- ja al -- le -- lu -- ja!
  O re -- joice in the Lord
  O re -- joice in the Lord __
  O re -- joice in the Lord __
  in the Lord __ in the Lord __ 
  in the Lord __ the Lord __
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \sopranoOne \\
      \sopranoTwo \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenorOne \\
      \tenorTwo \\
      \bass
    >>
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano1" \new Voice = "soprano1" { \sopranoOne }
     \new Staff = "soprano2" \new Voice = "soprano2" { \sopranoTwo }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor1" \new Voice = "tenor1" { \tenorOne }
     \new Staff = "tenor2" \new Voice = "tenor2" { \tenorTwo }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

\score {
  <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano I"
      } \new Voice = "soprano1" \sopranoOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseSopranoOne
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano II"
      } \new Voice = "soprano2" \sopranoTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano2" \verseSopranoTwo
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Alto"
      } \new Voice = "alto" \alto
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "alto" \verseAlto
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor I"
      } {
        \clef "treble_8"
        %\new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verseTenorOne
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor II"
      } {
        \clef "treble_8"
        %\new Voice = "tenor2" \tenorTwo
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor2" \verseTenorTwo
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Bass"
      } {
        \clef bass
        %\new Voice = "bass" \bass
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass" \verseBass
    >>
    %\pianoReduction
  >>
  \layout { }
  %\midi {
  %  \tempo 4=100
  %}
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano1"
  \score {
    \rehearsalMidi "soprano1" "soprano sax" \verse
    %\midi { }
  }
}

\book {
  \bookOutputSuffix "soprano2"
  \score {
    \rehearsalMidi "soprano2" "soprano sax" \verse
    %\midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    %\midi { }
  }
}

\book {
  \bookOutputSuffix "tenor1"
  \score {
    \rehearsalMidi "tenor1" "tenor sax" \verse
    %\midi { }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    \rehearsalMidi "tenor2" "tenor sax" \verse
    %\midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    %\midi { }
  }
}

