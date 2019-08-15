\version "2.18.2"
\language "english"

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\header {
  encodingdate = \date
  composer = "Georges Bizet"
  title = "Toreador Song"
}


\paper {
  oddHeaderMarkup = \markup {
    \fill-line
    {
      \on-the-fly #not-first-page \fromproperty #'page:page-number-string
      %% left
      \on-the-fly #not-first-page \fontsize #-1 \bold \fromproperty #'header:title
      %% center
      ""
      %% right
    }
  }

  evenHeaderMarkup = \oddHeaderMarkup
}

carmenVoice =  \relative c'' {
  \clef "treble"
  \key af \major
  \numericTimeSignature
  \time 4/4
  \tempo "Allegro moderato" 4 = 108


  \partial 4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  g'2 \pp ( bf4 d4 \pageBreak | % 53
  d,4. ) r8 a'4 ( f4 | % 54
  e2 e2 \pageBreak | % 55
  cs'4 a4 e4 a8 ) r8 | % 56
  g2 ( bf4 d,4 | % 57
  c1 ) ~ \pageBreak | % 58
  c16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  g'2 \pp ( bf4 d4 \pageBreak | % 111
  d,4. ) r8 a'4 f4 | % 112
  e2 ( e2 \pageBreak | % 113
  cs'4 a4 e4 a8 ) ( \grace { a8 ) } r8 | % 114
  g2 ( bf4 d,4 \pageBreak | % 115
  c1 ) ~ | % 116
  c16 r16 \pp \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  R1 | % 119
  r4 cs'8 \p ^\markup{ \italic {espress.} } ( d8 ) cs,8. r16 r4
  \pageBreak | \barNumberCheck #120
  r4 c8. \f \< ( f16 ) f8. ( a16 ) a8. ( c16 ) | % 121
  c8 \! r8 c,8. \< \< ( f16 ) f8. ( a16 ) a8. ( b16 ) | % 122
  b2 \! ~ b8 \! r8 r4 \pageBreak | % 123
  c4 \ff c2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

carmenVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- "dor!" En son -- Et "L'a" -- "mour," "l'a" -- mour "t'at" --
  \skip4 To -- "ré" -- a -- "dor," en -- "de!" To -- "ré" -- a --
  "dor!" To -- "ré" -- a -- "dor!" En son -- ge "qu'en" Et "l'a" --
  "mour," "l'a" -- mour "t'at" -- "tend!" "L'a" -- "mour!" To -- "ré"
  -- a -- "dor!" To -- "ré" -- a -- "dor! " __ "L'a" -- "mour " __
  "t'at" -- "tend! " __
}
moralesVoice =  \relative c' {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  bf32 ( a16. ) ( a16 g16 a8. bf16 ) a4. r8 | \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  d'1 \pp ( \pageBreak | % 53
  d2 d2 | % 54
  c4. ) r8 e2 ~ \pageBreak | % 55
  e2 e4 ( e8 ) r8 | % 56
  g,2 ( g2 | % 57
  a1 ) ~ \pageBreak | % 58
  a16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  bf32 ( a16. ) ( a16 g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  d'1 \pp ( \pageBreak | % 111
  d2 d2 | % 112
  c4. ) r8 e2 ( \pageBreak | % 113
  e2 e4 ) ( e8 ) r8 | % 114
  g,2 ( g2 \pageBreak | % 115
  a1 ) ~ | % 116
  a16 r16 \pp \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 c8. \f \< ( f16 ) f8. ( a16 ) a8. ( c16 ) | % 121
  c8 r8 f,8. \! \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 122
  d2 ~ d8 \! r8 r4 \pageBreak | % 123
  e4 \ff \ff c2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

moralesVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- gar -- "de!" To -- "ré" -- a -- "dor!" To -- "ré" -- a -- "dor!"
  En "oui," "ge " __ que "L'a" -- "mour," "l'a" -- mour "t'at" --
  "tend!" To -- "ré" -- a -- "dor," en -- gar -- "de!" To -- "ré" -- a
  -- "dor!" To -- "ré" -- a -- "dor!" En "Oui," que "l'a" -- mourm
  "l'a" -- mour "t'at" -- "tend!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- "dor! " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}
escamilloVoice =  \relative c' {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 r4 | % 1
  R1*8 | % 9
  c8 \f b8 c4 r8 b8 c8 ( bf8 ) | \barNumberCheck #10
  bf32 ( as16. ) g8 as4 ~ as8 g8 as16 r16 g8 \break | % 11
  g32 f16. e8 f4 ~ f16 r16 es8 df8 c8 | % 12
  df8 c8 bf4 ~ bf8 r8 r4 | % 13
  df'8 \ff df4 df8 c16 ( bf16 ) as4 r8 \break | % 14
  bf8 bf4 bf8 as16 ( g16 ) f4 r8 | % 15
  as8 ^\markup{ \italic {sempre} } es8 \f c8 es8 as8 bf8 c8 r16 df16
  | % 16
  es4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    df8 ( c8 ) bf8
  }
  c4. r8 \break | % 17
  c8 \f b8 c4 ~ c8 b8 c8 bf8 | % 18
  \acciaccatura { as8 } as8 g8 as4 ~ as8 ( g8 ) as16 r16 g8 \pageBreak
  | % 19
  \acciaccatura { g8 } g8 e8 f4 ~ f8 ( es8 ) d8 ( c8 ) \break |
  \barNumberCheck #20
  d8 c8 bf4 ~ bf8 r8 r4 | % 21
  df'8 \ff df4 df8 c16 ( bf16 as4 ) r8 | % 22
  bf8 bf4 bf8 as16 ( g16 ) f4 r8 | % 23
  gf8 ^\markup{ \italic {sempre} } \ff ( df8 ) bf8 df8 gf8 ( as8
  ) bf8 c8 \break | % 24
  \times 2/3  {
    df4 ^\markup{
      \italic
      {rit.-------------------------------------}
    } df8
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c8 b8 c8
  }
  f4. ^\fermata r8 | % 25
  c8 \mf b8 c4 ~ c8 ( g8 ) es16 r16 f8 | % 26
  \acciaccatura { as8 ( } as8 ) fs8 g4 ~ g8 ( es8 ) c8 ( d16 ) r16
  \break | % 27
  es8 ( f8 ) fs4 ~ fs8 g8 \< \< as8 g8 | % 28
  es'8. \! \! \f d16 c4 ~ c8 r8 r4 | % 29
  df8 \f ( c8 ) df4 ~ df8 c8 es8 cs8 | \barNumberCheck #30
  \acciaccatura { df8 ( } c8. ) b16 c2 c,8 r8 \break | % 31
  df'8 c8 df4 df8 c8 es8. df16 | % 32
  c4 r8 r16 c,16 f4 r8 r16 as16 | % 33
  g8 ( g8 ) r8. c16 as4 r8. c16 | % 34
  e4. ( r8 c2 ^\markup{ \italic {dim...........................} } ) ~
  \break | % 35
  c2. ~ c8. r16 \bar "||"
  \key f \major | % 36
  c4 \p d8. c16 a8. r16 a4 | % 37
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 | % 38
  bf4 g8. c16 a4. r8 | % 39
  f4 d8. g16 c,4. r8 \break | \barNumberCheck #40
  g'2 g8 d'8 c8 bf8 | % 41
  \acciaccatura { bf8 ( } a8 ) g8 a8 bf8 a4. r8 | % 42
  e4 a4 \< \< a4 \! gs8 b8 | % 43
  e1 \! ^\markup{ \italic {cresc.} } ~ \break | % 44
  e8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    d16 ( e16 d16 )
  }
  cs8 d8 ^\markup{ \italic {dim...........................} } g,8 a8
  bf4 | % 45
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 \p ( bf16 a16 )
  }
  f8 d'8 c4. r8 | % 46
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 bf'8 a4 \grace { g16 ( a16 ) } g4 ( | % 47
  f4. ^\markup{ \bold {Tempo.} } ) r8 r2 \pageBreak | % 48
  R1*4 | % 52
  g2 \p ^\markup{ \italic {mais tres marque} } g8 d'8 c8 bf8
  \pageBreak | % 53
  \acciaccatura { bf8 ( } a8 ) g8 a8 bf8 a4. r8 | % 54
  e4 a4 a4 \< gs8 b8 \pageBreak | % 55
  e1 ^\markup{ \italic {cresc.} } ~ | % 56
  e8 \! \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    d16 e16 d16
  }
  cs8 d8 g,8 a8 bf4 | % 57
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 bf16 a16
  }
  f8 d'8 c4. r8 \pageBreak | % 58
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*7 | % 67
  c'8 \mf ^\markup{ \italic {très déclamé} } b8 c4 r8 b8 c8 bf8
  \break | % 68
  \acciaccatura { bf8 ( } as8 ) ( g8 ) as4 r8 g8 as8 g8 | % 69
  \acciaccatura { g8 ( } f8 ) ( e8 ) f4 r8 es8 df8 c8 |
  \barNumberCheck #70
  df8 c8 bf4 ~ bf8 r8 r4 | % 71
  df'8 \f df4 df8 c16 bf16 as4 r8 \break | % 72
  bf8 \ff bf4 bf8 as16 g16 f4 r8 | % 73
  as8 es8 c8 es8 as8 bf8 c8 df8 | % 74
  es4 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    df8 c8 bf8
  }
  c4. r8 \break | % 75
  c8 \f b8 c4 ~ c16 r16 b8 c8 bf8 | % 76
  \acciaccatura { bf8 ( } as8 ) ( g8 ) as4 ~ as16 r16 g8 as8 g8 | % 77
  \acciaccatura { g8 ( } f8 ) ( e8 ) f8. r16 f8 es8 d8 c8 \pageBreak | % 78
  d8 c8 bf4 ~ bf8 r8 r4 | % 79
  df'8 \ff df4 df8 c16 ( bf16 ) as4 r8 | \barNumberCheck #80
  bf8 bf4 bf8 as16 ( g16 ) f4 r8 | % 81
  gf8 ^\markup{ \italic {sempre} } ( df8 \ff ) bf8 df8 gf8 r16 as16
  bf8 r16 c16 \break | % 82
  df8. r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c8 b8 c8
  }
  f4. ^\fermata r16 c16 \mf | % 83
  c8 b8 c4 ~ c8 g8 es8 f8 | % 84
  \acciaccatura { as8 ( } g8 ) ( fs8 ) g4 r8 es8 c8. d16 \break | % 85
  es8 r16 f16 fs4 ~ fs16 r16 g8 \< as8 g8 \! | % 86
  es'8. \f d16 c4 ~ c8 r8 r4 | % 87
  df8 c8 df8. r16 df8 c8 es8. df16 \break | % 88
  c8 ( b8 ) c4 ~ c8 r8 r4 | % 89
  df8 c8 df4 ~ df8 ( c8 ) es8. df16 | \barNumberCheck #90
  c4 r8 r16 c,16 f4 r8 r16 as16 | % 91
  g8 ( g8 ) r8 r16 c16 as4 r8 r16 c16 \break | % 92
  e4. r8 c2 ^\markup{ \italic {dim............................} } ~ | % 93
  c2. ~ c8. r16 \bar "||"
  \key f \major | % 94
  c4 \p d8. c16 a8. r16 a4 | % 95
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 96
  bf4 g8. c16 a4. r8 | % 97
  f4 d8. g16 c,4. r8 \break | % 98
  g'2 g8 d'8 c8 bf8 | % 99
  \acciaccatura { bf8 ( } a8 ) g8 a8 bf8 a4. r8 | \barNumberCheck
  #100
  e4 \< \< a4 a4 gs8 b8 \! | % 101
  e1 \! ^\markup{ \italic {cresc.} } ~ \break | % 102
  e8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    d16 ( e16 d16 )
  }
  cs8 ^\markup{
    \italic
    {dim..........................................}
  } d8 g,8 a8 bf4
  | % 103
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 ( bf16 a16 )
  }
  f8 d'8 c4. r8 | % 104
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 ^\markup{ \italic {rit. poco.} } bf'8 a8 g16 ( a16 ) ( g4 ) | % 105
  f4. ^\markup{ \bold {Tempo.} } r8 r2 \pageBreak | % 106
  R1*4 | \barNumberCheck #110
  g2 \p ^\markup{ \italic {mais tres marque} } g8 d'8 c8 bf8
  \pageBreak | % 111
  \acciaccatura { bf8 ( } a8 ) g8 a8 bf8 a4. r8 | % 112
  e4 \< a4 a4 gs8 b8 \pageBreak | % 113
  e1 \! ^\markup{ \italic {cresc} } ^"." ~ | % 114
  e8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    d16 \f ( e16 d16 )
  }
  cs8 d8 g,8 ^\markup{ \italic {dim.} } a8 bf4 \pageBreak | % 115
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 bf16 a16
  }
  f8 d'8 c4. r8 | % 116
  r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \pageBreak | % 117
  f8 r8 r4 r4 cs'8 \p ^\markup{ \italic {espress.} } ( d8 ) | % 118
  e,8. r16 r4 r4 b'8 ( c8 ) | % 119
  d,8. r16 r4 r4 a'8 ( c32 bf16. ) \pageBreak | \barNumberCheck #120
  c,8. r16 f8. \f \< \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 121
  f8 \! r8 f,8. \! \< \< ( a16 ) a8. ( c16 ) c8. ( d16 ) | % 122
  d2 \! ~ d8 \! r8 r4 \pageBreak | % 123
  e4 \ff c2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

escamilloVoiceLyricsOne =  \lyricmode {
  Vo -- tre "toast," je peux
  \skip4 le ren -- \skip4 "dre," se -- "ñors," \skip4 se -- "ñors, "
  __ car a -- vec les sol -- "dats " __ "oui," les To -- re -- ros peu
  -- vent "s’en" -- ten -- "dre;" pour plai -- "sirs, " __ \skip4 pour
  plai -- "sirs," ils ont "les " __ com -- "bats!" "Le " __ \skip4
  "cirque " __ est "plein," "c’est" jour de "fê " __ "te!" Le "cirque
    " __ \skip4 "plein " __ "du " __ haut en "bas; " __ Les spec -- ta
  -- "teurs " __ per dant la "tê" -- "te," "Les " __ spec -- ta --
  "teurs " __ "s’in" -- ter -- pell -- ent "à" grands fra -- "cas!" A
  -- pos -- tro -- "phes," cris ta -- pa -- "ge " __ pous -- "sés " __
  jus -- ques "à" la fu -- "reur! " __ "Car " __ "c’est " __ la "fê"
  -- te cou -- ra -- "ge!" "C'est" la "fê" -- te df gens de "cœer!"
  Al -- "lons!" en gar -- al -- "lons!" al -- "lons!" To -- "ré" -- a
  -- "dor," en \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- "dor!" To
  -- "ré" -- a -- "dor!" Et son -- ge "bien," "oui," en -- com -- bat
  -- "tant." "Qu'on" "œil" noir te re -- gar -- de que "l'a" -- mour
  "t'at" -- "tend," To -- "ré" -- a -- "dor." "L'a" -- "mour," "l'a"
  -- \skip4 "t'at" -- Et son -- ge "bien," oui en com -- bat --
  "tant," "Qu'un" "œil" noir te re -- gar -- "Et " __ \skip4 \skip4
  que "l'a" -- mour "t'at" -- "tend," To -- \skip4 \skip4 "ré" -- a --
  "dor!" "L'a" -- "mour," "l'a" -- mour "t'at" -- "tend!" Tout "d'un"
  coup on fait si -- "ce..." on fait si -- "ce..." "Ah!" que se passe
  -- \skip4 t -- Plus de cris "c'est" "l'inst" -- "ant!" Plus de
  "cris," "c'est" "l'inst" -- "ant!" Le taut -- reau "s'é" -- lance En
  bon -- dis -- sant hors du To -- "ril!" Il "s'é" -- lan -- il
  "entre," il "pé!... " __ un che -- val \skip4 En -- tra -- nant un
  Pi -- ca -- "dor, " __ "\"Ah!" Bra -- "vo!" To -- "ro!\"" hur -- le
  la fou -- "le," "Le " __ tau -- reau "va..." il "vient..." il vient
  et frappe en -- "cor!" En se -- cou -- "ant " __ se ban -- de --
  "les," Plein de fu -- "reur," il "court! " __ le cirque est plein de
  "sang! " __ On se "sauve..." on fran -- chit les gril -- "les! " __
  "C'est" ton "tour " __ maint -- te -- "nant!" al -- "lons!" en --
  gar -- al -- "lons!" al -- "lons!" "ah! " __ To -- "ré" -- a --
  "dor," en -- "de!" To -- "ré" -- a -- "dor!" To -- "ré" -- a --
  "dor!" Et son -- ge "bien," "oui," en com -- bat -- "tant," "Qu'en"
  "œil" noir te re -- gar -- "Et " __ que "l'a" -- mour "t'at" --
  "tend," To -- "ré" -- a -- "dor," "L'a" -- \skip4 "l'a" -- mour
  "l'at" -- "tend!" Et son -- ge "bien," "oui," en com -- bat --
  "tant," "Qu'un" "œil" noir te re -- gar -- "Et " __ que "l'a" --
  mour "t'at" -- "tend," To -- \skip4 \skip4 "ré" -- a -- "dor." "l'a"
  -- "mour," "l'a" -- mour "t'at" -- "tend!" "L'a" -- "mour!" "L'a" --
  "mour!" "L'a" -- "mour!" To -- "ré" -- a -- "dor!" To -- "ré" -- a
  -- "dor! " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}
zunigaVoice =  \relative c' {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  bf32 ( a16. ) ( a16 g16 a8. bf16 ) a4. r8 | \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  bf'1 \pp ( \pageBreak | % 53
  a2 a2 | % 54
  a4 ) ( a8 ) r8 d2 ( \pageBreak | % 55
  cs2 a4 ) ( a8 ) r8 | % 56
  f2 ( f2 | % 57
  f1 ) ~ \pageBreak | % 58
  f16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  bf32 ( a16. ) ( a16 g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  bf'1 \pp ( \pageBreak | % 111
  a2 a2 | % 112
  a4 ) ( a8 ) r8 d2 ( \pageBreak | % 113
  cs2 a4 ) ( a8 ) r8 | % 114
  f2 ( f2 \pageBreak | % 115
  f1 ) ~ | % 116
  f16 r16 \pp \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 a,8. \f \< ( c16 ) c8. ( f16 ) f8. ( a16 ) | % 121
  a8 r8 c,8. \! \< ( f16 ) f8. ( a16 ) a8. ( b16 ) | % 122
  b2 ~ b8 \! r8 r4 \ff \pageBreak | % 123
  c4 \ff c2 ~ ^\fermata c8. f,16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

zunigaVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- gar -- "de!" To -- "ré" -- a -- "dor!" To -- "ré" -- a -- "dor!"
  En "oui," que "L'a" -- "mour," "l'a" -- mour "t'at" -- "tend!" To --
  "ré" -- a -- "dor," en -- gar -- "de!" To -- "ré" -- a -- "dor!" To
  -- "ré" -- a -- "dor!" En "Oui," que "l'a" -- "mour," "l'a" -- mour
  "t'at" -- "tend!" To -- "ré" -- a -- "dor," To -- "ré" -- a -- "dor!
    " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}
sopranoOneVoiceOne =  \relative c'' {
  \clef "treble" \key af \major \numericTimeSignature\time 4/4
  \partial 4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  R1 \pageBreak | % 53
  a'2 \p a8 f'8 e8 d8 | % 54
  \acciaccatura { d8 ( } c8 ) b8 c8 d8 e4. r8 \pageBreak | % 55
  e,4 a4 \< a4 cs8 e8 | % 56
  g2 \! ~ g16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ( g16 f16 )
  }
  e8 ^\markup{ \italic {dim.} } f8 | % 57
  f,8 g8 a4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 bf16 a16
  }
  f8 d'8 \pageBreak | % 58
  c16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  R1 \pageBreak | % 111
  a'2 \p ^\markup{ \italic {legg.} } a8 f'8 e8 d8 | % 112
  \acciaccatura { d8 ( } c8 ) b8 c8 d8 e4. r8 \pageBreak | % 113
  e,4 \< \< a4 a4 cs8 e8 | % 114
  g2 \! \! ~ g16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ^\markup{ \italic {dim.} } ( g16 f16 )
  }
  e8 f8 \pageBreak | % 115
  f,8 g8 a4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 ( bf16 a16 )
  }
  f8 d'8 | % 116
  c16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  r4 fs'8 \p ^\markup{ \italic {espress.} } ( g8 ) a,8. r16 r4 | % 119
  R1 \pageBreak | \barNumberCheck #120
  r4 \< f8. \f \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 121
  f8 \! \! r8 a,8. \< \< ( c16 ) c8. ( f16 ) f8. ( a16 ) | % 122
  a2 \! ~ a8 \! r8 r4 \pageBreak | % 123
  g4 \ff c2 ~ ^\fermata c8. f,16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

sopranoOneVoiceOneLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- dor Et son -- ge "bien," oui en com -- bat -- "tant."
  "Qu'en" "œil" noir te re -- gar -- "Et " __ que "l'a" -- mour "t'at"
  -- "tend." To -- \skip4 \skip4 "ré" -- a -- "dor," "L'a" -- "mour,"
  "l'a" -- mour "t'at" -- "tend!" To -- "ré" -- a -- "dor," en "de!"
  To -- "ré" -- a -- "dor!" To -- "ré" -- a -- "dor!" Et son -- ge
  "bien," "oui," en com -- bat -- "tant," "Qu'un" "œil" noir te re --
  gar -- Et que "l'a" -- mour "t'at" -- "tend," To -- "ré" -- a --
  "dor," "l'a" -- "mour," "l'a" -- mour "t'at" -- "tend!" "l'a" --
  "mour!" To -- "ré" -- a -- "dor!" To -- "ré" -- a -- "dor! " __
  "L'a" -- "mour " __ "t'at" -- "tend! " __
}
sopranoTwoVoice =  \relative c'' {
  \clef "treble" \key af \major \numericTimeSignature\time 4/4
  \partial 4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  R1 \pageBreak | % 53
  a'2 \p a8 f'8 e8 d8 | % 54
  \acciaccatura { d8 ( } c8 ) b8 c8 d8 e4. r8 \pageBreak | % 55
  e,4 a4 \< a4 cs8 e8 | % 56
  g2 \! ~ g16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ( g16 f16 )
  }
  e8 ^\markup{ \italic {dim.} } f8 | % 57
  f,8 g8 a4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 bf16 a16
  }
  f8 d'8 \pageBreak | % 58
  c16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 \pp ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  R1 \pageBreak | % 111
  a'2 \p a8 f'8 e8 d8 | % 112
  \acciaccatura { d8 ( } c8 ) b8 c8 d8 e4. r8 \pageBreak | % 113
  e,4 \< \< a4 a4 cs8 e8 | % 114
  g2 \! \! ~ g16 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 ( g16 f16 )
  }
  e8 f8 \pageBreak | % 115
  f,8 g8 a4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 ( bf16 a16 )
  }
  f8 d'8 | % 116
  c16 r16 \pp \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 ( g16 f16 )
  }
  c8 bf'8 a8 r8 g8 r8 \pageBreak | % 117
  f8 r8 gs'8 \p ^\markup{ \italic {espress.} } ( a8 ) b,8. r16 r4 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 \< f8. \f \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 121
  f8 \! \! r8 f,8. \< \< ( a16 ) a8. ( c16 ) c8. ( d16 ) | % 122
  d2 \! ~ d8 \! r8 r4 \pageBreak | % 123
  e4 \ff c2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

sopranoTwoVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- dor To -- "´ré" --
  a -- "dor!" Et son -- ge "bien," oui en com -- bat -- "tant,"
  "Qu'en" "œil" noir te re -- gar -- "Et " __ que "l'a" -- mour "t'at"
  -- "tend." To -- \skip4 \skip4 "ré" -- a -- "dor," "L'a" -- "mour,"
  "l'a" -- mour "t'at" -- "tend!" To -- "ré" -- a -- "dor," en --
  "de!" To -- "ré" -- a -- "dor!" To -- "ré" -- a -- "dor!" Et son --
  ge "bien," oui en com -- bat -- "tant," "Qu'un" "œil" noir te re --
  gar -- Et que "l'a" -- mour "t'at" -- "tend," To -- "ré" -- a --
  "dor," "l'a" -- "mour," "l'a" -- mour "t'at" -- "tend!" "L'a" --
  "mour!" To -- "ré" -- a -- "dor!" To -- re -- a -- "dor! " __ "L'a"
  -- "mour " __ "t'at" -- "tend! " __
}
tenorOneVoice =  \relative c'' {
  \transposition c \clef "treble" \key af \major
  \numericTimeSignature\time 4/4 \partial 4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  d'1 \pp ( \pageBreak | % 53
  d2 d2 | % 54
  c4 ) ( c8 ) r8 e2 ( \pageBreak | % 55
  e2 e4 ) ( e8 ) r8 | % 56
  g,2 ( g2 | % 57
  a1 ) ~ \pageBreak | % 58
  a16 r16 r8 r4 r4 e'8 \ppp r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  d'1 \pp ( \pageBreak | % 111
  d2 d2 | % 112
  c4 ) ( c8 ) r8 e2 ( \pageBreak | % 113
  e2 e4 ) ( e8 ) r8 | % 114
  g,2 ( g2 \pageBreak | % 115
  a1 ) ~ | % 116
  a16 r16 r8 r4 r4 e'8 \ppp r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 f,8. \f \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 121
  f8 \! r8 a,8. \< \< ( c16 ) c8. ( f16 ) f8. ( a16 ) | % 122
  a2 \! ~ a8 \! r8 r4 \pageBreak | % 123
  g4 \ff c,2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

tenorOneVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- dor En "oui," que "t'at" -- "tend!" To -- "ré" -- a --
  "dor," en -- "de!" To -- "ré" -- a -- "dor!" To -- "ré" -- a --
  "dor!" En "Oui," que "t'at" -- "tend!" To -- "ré" -- a -- "dor," To
  -- "ré" -- a -- "dor! " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}
tenorTwoVoice =  \relative c'' {
  \transposition c \clef "treble" \key af \major
  \numericTimeSignature\time 4/4 \partial 4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  bf'1 ( \pageBreak | % 53
  a2 a2 | % 54
  a4 ) a8 r8 d2 ( \pageBreak | % 55
  cs2 a4 ) ( a8 ) r8 | % 56
  f2 ( f2 | % 57
  f1 ) ~ \pageBreak | % 58
  f16 r16 r8 r4 r4 c'8 \ppp r8 \bar "||"
  \key af \major f,8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  bf'1 \pp ( \pageBreak | % 111
  a2 a2 | % 112
  a4 ) ( a8 ) r8 d2 ( \pageBreak | % 113
  cs2 a4 ) ( a8 ) r8 | % 114
  f2 ( f2 \pageBreak | % 115
  f1 ) ~ | % 116
  f16 r16 r8 r4 r4 c'8 \ppp r8 \pageBreak | % 117
  f,8 r8 r4 r2 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 f8. \f \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 121
  f8 \! r8 f,8. \< \< ( a16 ) a8. ( c16 ) c8. ( f16 ) | % 122
  f2 \! ~ f8 \! r8 r4 \pageBreak | % 123
  e4 \ff c2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

tenorTwoVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- "dor!" En \skip4 "oui," que "t'at" -- "tend!" To -- "ré" --
  a -- "dor," en -- "de!" To -- "ré" -- a -- "dor!" To -- "ré" -- a --
  "dor!" En "Oui," que "t'at" -- "tend!" To -- "ré" -- a -- "dor!" To
  -- "ré" -- a -- "dor! " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}
bassOneVoice =  \relative c' {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  bf'8 r8 d8 r8 bf8 r8 g8 r8 \pageBreak | % 53
  f8 r8 a8 r8 f8 r8 d8 r8 | % 54
  e8 r8 c'8 r8 b8 r8 e,8 r8 \pageBreak | % 55
  a8 r8 e8 r8 cs8 r8 a8 r8 | % 56
  bf8 r8 d8 r8 bf8 r8 g8 r8 | % 57
  c8 r8 f8 r8 a8 r8 c8 r8 \pageBreak | % 58
  c,16 r16 r8 r4 r4 c8 \ppp r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  bf'8 \pp r8 d8 r8 bf8 r8 g8 r8 \pageBreak | % 111
  f8 r8 a8 r8 f8 r8 d8 r8 | % 112
  e8 r8 c'8 r8 b8 r8 e,8 r8 \pageBreak | % 113
  a8 r8 e8 r8 cs8 r8 a8 r8 | % 114
  bf8 r8 d8 r8 bf8 r8 g8 r8 \pageBreak | % 115
  c8 r8 f8 r8 a8 r8 c8 r8 | % 116
  c,16 r16 r8 r4 r4 c8 \ppp r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 c8. \f \< \< ( f16 ) f8. ( a16 ) a8. ( c16 ) | % 121
  c8 \! r8 c,8. \! \< \< ( f16 ) f8. ( a16 ) a8. ( d16 ) | % 122
  d2 \! ~ d8 \! r8 r4 \pageBreak | % 123
  c4 \ff c2 ~ ^\fermata c8. f,16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

bassOneVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor," en
  -- \skip4 \skip4 \skip4 "de!" -- To -- "ré" -- a -- "dor!" To --
  "ré" -- a -- "dor!" Et son -- ge "bien," "oui," songe en com -- bat
  -- "tant," "Qu'en" "œil" noir te re -- "garde." Et que "l'a" -- mour
  "t'at" -- "tend," "oui," "l'a" -- mour "t'at" -- tend To -- "ré" --
  a -- "dor," en "de!" To -- "ré" -- a -- dor To -- "ré" -- a -- dor
  Et son -- ge "bien," "qui," songe en com -- bat -- "tant." "Qu'un"
  "œil" noir te re -- garde Et que "l'a" -- mour "t'at" -- "tend," oui
  "l'a" -- mour "t'at" -- "tend!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- "dor! " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}
bassTwoVoice =  \relative c' {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 r4 | % 1
  R1*10 \break | % 11
  R1*3 \break | % 14
  R1*3 \break | % 17
  R1*2 \pageBreak | % 19
  R1 \break | \barNumberCheck #20
  R1*4 \break | % 24
  R1*3 \break | % 27
  R1*4 \break | % 31
  R1*4 \break | % 35
  R1 \bar "||"
  \key f \major R1*4 \break | \barNumberCheck #40
  R1*4 \break | % 44
  R1*4 \pageBreak | % 48
  c4 \ff d8. c16 a4 a4 | % 49
  \acciaccatura { bf8 ( } a8. ) g16 a8. bf16 a4. r8 |
  \barNumberCheck #50
  bf4 g8. c16 a4. r8 | % 51
  f4 d8. g16 c,4. r8 | % 52
  bf'8 r8 d8 r8 bf8 r8 g8 r8 \pageBreak | % 53
  f8 r8 a8 r8 f8 r8 d8 r8 | % 54
  e8 r8 c'8 r8 b8 r8 e,8 r8 \pageBreak | % 55
  a8 r8 e8 r8 cs8 r8 a8 r8 | % 56
  bf8 r8 d8 r8 bf8 r8 g8 r8 | % 57
  c8 r8 f8 r8 a8 r8 c8 r8 \pageBreak | % 58
  c,16 r16 r8 r4 r4 \ppp c8 r8 \bar "||"
  \key af \major f8 r8 r4 r2 | \barNumberCheck #60
  R1*8 \break | % 68
  R1*4 \break | % 72
  R1*3 \break | % 75
  R1*3 \pageBreak | % 78
  R1*4 \break | % 82
  R1*3 \break | % 85
  R1*3 \break | % 88
  R1*4 \break | % 92
  R1*2 \bar "||"
  \key f \major R1*4 \break | % 98
  R1*4 \break | % 102
  R1*4 \pageBreak | % 106
  c'4 \ff d8. c16 a4 a4 | % 107
  \acciaccatura { bf8 ( } a8. ) ( g16 a8. bf16 ) a4. r8 | % 108
  bf4 g8. c16 a4. r8 | % 109
  f4 d8. g16 c,4. r8 | \barNumberCheck #110
  bf'8 \pp r8 d8 r8 bf8 r8 g8 r8 \pageBreak | % 111
  f8 r8 a8 r8 f8 r8 d8 r8 | % 112
  e8 r8 c'8 r8 b8 r8 e,8 r8 \pageBreak | % 113
  a8 r8 e8 r8 cs8 r8 a8 r8 | % 114
  bf8 r8 d8 r8 bf8 r8 g8 r8 \pageBreak | % 115
  c8 r8 f8 r8 a8 r8 c8 r8 | % 116
  c,16 r16 r8 r4 r4 c8 \ppp r8 \pageBreak | % 117
  f8 r8 r4 r2 | % 118
  R1*2 \pageBreak | \barNumberCheck #120
  r4 a,8. \f \< \< ( c16 ) c8. ( f16 ) f8. ( a16 ) | % 121
  a8 \! r8 c,8. \! \< \< ( f16 ) f8. ( a16 ) a8. ( b16 ) | % 122
  b2 \! ~ b8 \! r8 r4 \pageBreak | % 123
  c4 \ff c,2 ~ ^\fermata c8. f16 | % 124
  f2 ~ f8 r8 r4 | % 125
  R1*4
}

bassTwoVoiceLyricsOne =  \lyricmode {
  To -- "ré" -- a -- "dor,"
  en -- \skip4 \skip4 \skip4 "de!" To -- "ré" -- a -- "dor!" To --
  "ré" -- a -- "dor!" Et son -- ge "bien," "oui," songe en com -- bat
  -- "tant," "Qu'en" "œil" noir te re -- "garde." Et que "l'a" -- mour
  "t'at" -- "tend," "oui," "l'a" -- mour "t'at" -- tend To -- "ré" --
  a -- "dor," en "de!" To -- "ré" -- a -- dor To -- "ré" -- a -- dor
  Et son -- ge "bien," "qui," songe en com -- bat -- "tant." "Qu'un"
  "œil" noir te re -- garde Et que "l'a" -- mour "t'at" -- "tend," oui
  "l'a" -- mour "t'at" -- "tend!" To -- "ré" -- a -- "dor!" To -- "ré"
  -- a -- "dor! " __ "L'a" -- "mour " __ "t'at" -- "tend! " __
}

rightHandUpVoice =  \relative c'' {
  \clef "treble" \key as \major \numericTimeSignature\time 4/4
  \partial 4 c16 \ff d32 e32 f32 g32 gs32 bf32 | % 1
  <c, c'>16. r32 <b b'>16. r32 <c c'>4 ~ ~ <c c'>16. r32 <b b'>16. r32
  cs'64 r64 <c, c'>16 r32 <bf bf'>16. r32 | % 2
  bf'32 <gs, gs'>16 r32 <g g'>16. r32 <gs gs'>4 ~ ~ <gs gs'>16.
  r32 <g g'>16. r32 bf'64 r64 <gs, gs'>16 r32 <g g'>16. r32 | % 3
  g'32 <f, f'>16 r32 <e e'>16. r32 <f f'>4 ~ ~ <f f'>16. r32 <es es'>16.
  r32 es'64 r64 <cs, cs'>16 r32 <c c'>16. r32 | % 4
  es'32 <cs, cs'>16 r32 <c c'>16. r32 bf'4 ~ bf8 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    bf16 c16 cs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 bf16 c16
  }
  | % 5
  <e, g cs>32 r32 r16 <e g cs>8 ~ ~ ~ <e g cs>16. r32 <e g cs>32 r32
  r16 <es gs c>32 r32 bf'32 r32 gs32 r32 r16 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 | % 6
  <cs, e bf'>32 r32 r16 <cs e bf'>8 ~ ~ ~ <cs e bf'>16. r32 <cs
  e bf'>32 r32 r16 <c f gs>32 r32 g'32 r32 f32 r32 r16 <c c'>32
  r32 r16 <f f'>32 r32 r16 | % 7
  <fs, cs' fs>8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs'16 c16 cs16
  }
  bf8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs16 c16 cs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fs8. gs16 fs16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bf16 gs16 bf16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 bf16 c16
  }
  | % 8
  cs32 r32 r16 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c,16 r16 <b e b'>16 r16 <c e c'>16 r16
  }
  <f f'>32 r32 r16 r8 r4 | % 9
  r8 <c,, f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs c>32
  r32 r16 <c f gs c>32 r32 r16 r8 r4 | \barNumberCheck #10
  r8 <c f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 r8 r4 \break | % 11
  r8 <f a es' f>16 <f a es' f>16 <f a es' f>32 r32 r16 <f a es' f>32 r32
  r16 <f a es' f>32 r32 r16 r8 r4 | % 12
  r8 <f bf cs f>16 <f bf cs f>16 <f bf cs f>32 r32 r16 <f bf
  cs f>32 r32 r16 <f bf cs f>32 r32 r16 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    bf'16 c16 cs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 bf16 c16
  }
  | % 13
  <e, g cs>32 r32 r16 <e g cs>8 ~ ~ ~ <e g cs>16. r32 <e g cs>32 r32
  r16 <es gs c>32 r32 bf'32 r32 gs32 r32 r16 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 \break | % 14
  <cs, e bf'>32 r32 r16 <cs e bf'>8 ~ ~ ~ <cs e bf'>16. r32 <cs
  e bf'>32 r32 r16 <c f gs>32 r32 g'32 r32 f32 r32 r16 <c c'>32
  r32 r16 <f f'>32 r32 r16 | % 15
  gs32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 d16 es16
  }
  c8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 d16 es16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs8. bf16 gs16 bf16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 bf16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    d16 c16 d16
  }
  | % 16
  es32 r32 r16 r8 <bf, cs es g>32 r32 r16 r8 <gs c es gs>32 r32 r16
  r8 <g bf c e>32 r32 r16 r8 \break | % 17
  <f gs c f>32 r32 r16 <c, f gs c>16 <c f gs c>16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 <c f gs c>32 r32 r16 r8 r4 | % 18
  r8 <c f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 r8 r4 \pageBreak | % 19
  r8 <f a es' f>16 <f a es' f>16 <f a es' f>32 r32 r16 <f a es' f>32 r32
  r16 <f a es' f>32 r32 r16 r8 r4 \break | \barNumberCheck #20
  r8 <gs bf d f>16 <gs bf d f>16 <gs bf d f>32 r32 r16 <gs bf
  d f>32 r32 r16 <gs bf d f>32 r32 r16 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    bf'16 c16 d16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 bf16 c16
  }
  | % 21
  <g bf cs>32 r32 r16 <g bf cs>8 ~ ~ ~ <g bf cs>16. r32 <g bf
  cs>32 r32 r16 <gs c>32 r32 <g bf>32 r32 <f gs>32 r32 r16 <c
  c'>32 r32 r16 <f f'>32 r32 r16 | % 22
  <e g bf>32 r32 r16 <e g bf>8 ~ ~ ~ <e g bf>16. r32 <e g bf>32 r32
  r16 <f gs>32 r32 <es g>32 r32 <cs f>32 r32 r16 <gs gs'>32 r32 r16
  <cs cs'>32 r32 r16 | % 23
  fs32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs16 c16 cs16
  }
  bf32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs16 c16 cs16
  }
  fs32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 fs16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bf16 gs16 bf16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 bf16 c16
  }
  \break | % 24
  cs32 r32 r16 r8 <e, g bf c>8 r8 <f gs c f>8 r8 f,8 r8 | % 25
  <c' es g c>8 <b b'>8 <c c'>4 ~ ~ <c c'>8 <g g'>8 <es c' es>8 <f f'>8
  | % 26
  <g c es g>8 <fs fs'>8 <g g'>4 ~ ~ <g g'>8 <es es'>8 <c f c'>8 <d
  d'>8 \break | % 27
  <es g c es>8 <f f'>8 <fs fs'>4 ~ ~ <fs fs'>8 <g g'>8 <gs b f'
  gs>8 <g g'>8 | % 28
  <es' g c es>8 <d d'>8 <c c'>4 ~ ~ <c c'>8 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    b16 c16 d16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 b16 c16
  }
  | % 29
  <f, bf cs>8 <bf,, cs f>16 <bf cs f>16 <bf cs f>32 r32 r16
  <bf cs f>32 r32 r16 <bf cs f>32 r32 r16 r8 r4 | \barNumberCheck
  #30
  r8 <bf c e>16 <bf c e>16 <bf c e>32 r32 r16 <bf c e>32 r32 r16
  <bf c e>32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    b'16 c16 d16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 b16 c16
  }
  \break | % 31
  <f, bf cs>8 <bf,, cs f>16 <bf cs f>16 <bf cs f>32 r32 r16
  <bf cs f>32 r32 r16 <bf cs f>32 r32 r16 r8 r4 | % 32
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e16 es16 e16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g16 fs16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 e16 f16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 g16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 e16 f16
  }
  | % 33
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e16 es16 e16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g16 fs16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 e16 f16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 g16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 e16 f16
  }
  | % 34
  c32 r32 r16 r16 <c,, c'>16 <c c'>8 r16 <c c'>16 <c c'>8 r16 <c c'>16
  <c c'>8 r16 <c c'>16 \break | % 35
  <c c'>8 r16 <c c'>16 <c c'>8 r16 <c c'>16 <c c'>8 r16 <c c'>16 <c
  c'>8 r16 <c c'>16 \bar "||"
  \key f \major <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a
  c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 | % 37
  <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8
  <c f a c>32 r32 r16 r8 | % 38
  <f bf d>32 r32 r16 r8 <e bf' c e>32 r32 r16 r8 <f a c f>32 r32 r16
  r8 <c f a>32 r32 r16 r8 | % 39
  <f a c>32 r32 r16 r8 <f g b>32 r32 r16 r8 <e g c>32 r32 r16 r8 <e g
  c>32 r32 r16 r8 \break | \barNumberCheck #40
  <g, d' g>32 r32 r16 r8 <g bf d>32 r32 r16 r8 <g d' g>32 r32 r16 r8
  <d' g bf>32 r32 r16 r8 | % 41
  <d a'>32 r32 r16 r8 <d f>32 r32 r16 r8 <d f a>32 r32 r16 r8 <f a d>32
  r32 r16 r8 | % 42
  <e a c>32 r32 r16 r8 <c e a>32 r32 r16 r8 <d e>32 r32 r16 r8 <d e
  b'>32 r32 r16 r8 | % 43
  <cs e a>32 r32 r16 r8 <a cs>32 r32 r16 r8 <a cs e>32 r32 r16 r8
  <cs e a>32 r32 r16 r8 \break | % 44
  <f, g>32 r32 r16 r8 <f g bf>32 r32 r16 r8 <f g d'>32 r32 r16 r8
  <bf d g>32 r32 r16 r8 | % 45
  <a c f>8 r8 r4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <f'' a>16 bf16 a16
  }
  <c, f>32 r32 r16 <bf' d>32 r32 r16 | % 46
  <a c>32 r32 r16 r8 r4 r4 <bf,, c>32 r32 r16 r8 | % 47
  <a f'>8 c16 d16 e16 f16 g16 a16 bf16 c16 d16 e16 f16 g16 a16 bf16
  \pageBreak | % 48
  <c, f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8
  <c f a c>32 r32 r16 r8 | % 49
  <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8
  <c f a c>32 r32 r16 r8 | \barNumberCheck #50
  <f bf d>32 r32 r16 r8 <e bf' c e>32 r32 r16 r8 <f a c f>32 r32 r16
  r8 <c f a>32 r32 r16 r8 | % 51
  <c f a c>32 r32 r16 r8 <b f' g c>32 r32 r16 r8 <c e g c>8 r8 <c e g
  c>8 r8 | % 52
  <g, d' g>32 r32 r16 r8 <g bf d>32 r32 r16 r8 <g d' g>32 r32 r16 r8
  <d' g bf>32 r32 r16 r8 \pageBreak | % 53
  <d a'>32 r32 r16 r8 <d f>32 r32 r16 r8 <d f a>32 r32 r16 r8 <f a d>32
  r32 r16 r8 | % 54
  <e a c>32 r32 r16 r8 <c e a>32 r32 r16 r8 <d e>32 r32 r16 r8 <d e
  b'>32 r32 r16 r8 \pageBreak | % 55
  <cs e a>32 r32 r16 r8 <a cs>32 r32 r16 r8 <a cs e>32 r32 r16 r8
  <cs e a>32 r32 r16 r8 | % 56
  <f, g>32 r32 r16 r8 <f g bf>32 r32 r16 r8 <f g d'>32 r32 r16 r8
  <bf d f>32 r32 r16 r8 | % 57
  <a c f>8 r8 r4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <f'' a>16 bf16 a16
  }
  <c, f>32 r32 r16 <bf' d>32 r32 r16 \pageBreak | % 58
  <a c>32 r32 r16 r8 r4 r4 <g, bf c e>32 r32 r16 r8 \bar "||"
  \key af \major <c c'>16. r32 <b b'>16. r32 <c c'>4 ~ ~ <c c'>16. r32
  <b b'>16. r32 cs'64 r64 <c, c'>16 r32 <bf bf'>16. r32 |
  \barNumberCheck #60
  bf'32 <gs, gs'>16 r32 <g g'>16. r32 <gs gs'>4 ~ ~ <gs gs'>16.
  r32 <g g'>16. r32 bf'64 r64 <gs, gs'>16 r32 <g g'>16. r32 | % 61
  g'32 <f, f'>16 r32 <e e'>16. r32 <f f'>4 ~ ~ <f f'>16. r32 <es es'>16.
  r32 es'64 r64 <cs, cs'>16 r32 <c c'>16. r32 | % 62
  es'32 <cs, cs'>16 r32 <c c'>16. r32 bf'4 ~ bf8 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    bf16 c16 cs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 bf16 c16
  }
  | % 63
  <e, g cs>32 r32 r16 <e g cs>8 ~ ~ ~ <e g cs>16. r32 <e g cs>32 r32
  r16 <es gs c>32 r32 bf'32 r32 gs32 r32 r16 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 | % 64
  <cs, e bf'>32 r32 r16 <cs e bf'>8 ~ ~ ~ <cs e bf'>16. r32 <cs
  e bf'>32 r32 r16 <c f gs>32 r32 g'32 r32 f32 r32 r16 <c c'>32
  r32 r16 <f f'>32 r32 r16 | % 65
  <fs, cs' fs>8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs'16 c16 cs16
  }
  bf8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs16 c16 cs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    fs8. gs16 fs16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bf16 gs16 bf16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 bf16 c16
  }
  | % 66
  cs32 r32 r16 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c,16 r16 <b e b'>16 r16 <c e c'>16 r16
  }
  <f f'>32 r32 r16 r8 r4 | % 67
  r8 <c,, f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs c>32
  r32 r16 <c f gs c>32 r32 r16 r8 r4 \break | % 68
  r8 <c f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 r8 r4 | % 69
  r8 <f a es' f>16 <f a es' f>16 <f a es' f>32 r32 r16 <f a es' f>32 r32
  r16 <f a es' f>32 r32 r16 r8 r4 | \barNumberCheck #70
  r8 <f bf cs f>16 <f bf cs f>16 <f bf cs f>32 r32 r16 <f bf
  cs f>32 r32 r16 <f bf cs f>32 r32 r16 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    bf'16 c16 cs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 bf16 c16
  }
  | % 71
  <e, g cs>32 r32 r16 <e g cs>8 ~ ~ ~ <e g cs>16. r32 <e g cs>32 r32
  r16 <es gs c>32 r32 bf'32 r32 gs32 r32 r16 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 \break | % 72
  <cs, e bf'>32 r32 r16 <cs e bf'>8 ~ ~ ~ <cs e bf'>16. r32 <cs
  e bf'>32 r32 r16 <c f gs>32 r32 g'32 r32 f32 r32 r16 <c c'>32
  r32 r16 <f f'>32 r32 r16 | % 73
  gs32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 d16 es16
  }
  c8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 d16 es16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs8. bf16 gs16 bf16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 bf16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    d16 c16 d16
  }
  | % 74
  es32 r32 r16 r8 <bf, cs es g>32 r32 r16 r8 <gs c es gs>32 r32 r16
  r8 <g bf c e>32 r32 r16 r8 \break | % 75
  <f gs c f>32 r32 r16 <c, f gs c>16 <c f gs c>16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 <c f gs c>32 r32 r16 r8 r4 | % 76
  r8 <c f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 r8 r4 | % 77
  r8 <f a es' f>16 <f a es' f>16 <f a es' f>32 r32 r16 <f a es' f>32 r32
  r16 <f a es' f>32 r32 r16 r8 r4 \pageBreak | % 78
  r8 <gs bf d f>16 <gs bf d f>16 <gs bf d f>32 r32 r16 <gs bf
  d f>32 r32 r16 <gs bf d f>32 r32 r16 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    bf'16 c16 d16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 bf16 c16
  }
  | % 79
  <g bf cs>32 r32 r16 <g bf cs>8 ~ ~ ~ <g bf cs>16. r32 <g bf
  cs>32 r32 r16 <gs c>32 r32 <g bf>32 r32 <f gs>32 r32 r16 <c
  c'>32 r32 r16 <f f'>32 r32 r16 | \barNumberCheck #80
  <e g bf>32 r32 r16 <e g bf>8 ~ ~ ~ <e g bf>16. r32 <e g bf>32 r32
  r16 <f gs>32 r32 <es g>32 r32 <cs f>32 r32 r16 <gs gs'>32 r32 r16
  <cs cs'>32 r32 r16 | % 81
  fs32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs16 c16 cs16
  }
  bf32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    cs16 c16 cs16
  }
  fs32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 fs16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    bf16 gs16 bf16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 bf16 c16
  }
  \break | % 82
  cs32 r32 r16 r8 <e, g bf c>8 r8 <f gs c f>8 r8 f,8 r8 | % 83
  <c' es g c>8 <b b'>8 <c c'>4 ~ ~ <c c'>8 <g g'>8 <es c' es>8 <f f'>8
  | % 84
  <g c es g>8 <fs fs'>8 <g g'>4 ~ ~ <g g'>8 <es es'>8 <c f c'>8 <d
  d'>8 \break | % 85
  <es g c es>8 <f f'>8 <fs fs'>4 ~ ~ <fs fs'>8 <g g'>8 <gs b f'
  gs>8 <g g'>8 | % 86
  <es' g c es>8 <d d'>8 <c c'>4 ~ ~ <c c'>8 \once \override
  TupletBracket #'stencil = ##f
  \times 2/3  {
    b16 c16 d16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    es16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 b16 c16
  }
  | % 87
  <f, bf cs>8 <bf,, cs f>16 <bf cs f>16 <bf cs f>32 r32 r16
  <bf cs f>32 r32 r16 <bf cs f>32 r32 r16 r8 r4 \break | % 88
  r8 <bf c e>16 <bf c e>16 <bf c e>32 r32 r16 <bf c e>32 r32 r16
  <bf c e>32 r32 r16 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    b'16 c16 d16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e16 f16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    a16 b16 c16
  }
  | % 89
  <f, bf cs>8 <bf,, cs f>16 <bf cs f>16 <bf cs f>32 r32 r16
  <bf cs f>32 r32 r16 <bf cs f>32 r32 r16 r8 r4 | \barNumberCheck
  #90
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e16 es16 e16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g16 fs16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 e16 f16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 g16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 e16 f16
  }
  | % 91
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    e16 es16 e16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    g16 fs16 g16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f,16 e16 f16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    gs16 g16 gs16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c16 b16 c16
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    f16 e16 f16
  }
  \break | % 92
  c32 r32 r16 r16 <c,, c'>16 <c c'>8 r16 <c c'>16 <c c'>8 r16 <c c'>16
  <c c'>8 r16 <c c'>16 | % 93
  <c c'>8 r16 <c c'>16 <c c'>8 r16 <c c'>16 <c c'>8 r16 <c c'>16 <c
  c'>8 r16 <c c'>16 \bar "||"
  \key f \major <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a
  c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 | % 95
  <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8
  <c f a c>32 r32 r16 r8 | % 96
  <f bf d>32 r32 r16 r8 <e bf' c e>32 r32 r16 r8 <f a c f>32 r32 r16
  r8 <c f a>32 r32 r16 r8 | % 97
  <f a c>32 r32 r16 r8 <f g b>32 r32 r16 r8 <e g c>32 r32 r16 r8 <e g
  c>32 r32 r16 r8 \break | % 98
  <g, d' g>32 r32 r16 r8 <g bf d>32 r32 r16 r8 <g d' g>32 r32 r16 r8
  <d' g bf>32 r32 r16 r8 | % 99
  <d a'>32 r32 r16 r8 <d f>32 r32 r16 r8 <d f a>32 r32 r16 r8 <f a d>32
  r32 r16 r8 | \barNumberCheck #100
  <e a c>32 r32 r16 r8 <c e a>32 r32 r16 r8 <d e>32 r32 r16 r8 <d e
  b'>32 r32 r16 r8 | % 101
  <cs e a>32 r32 r16 r8 <a cs>32 r32 r16 r8 <a cs e>32 r32 r16 r8
  <cs e a>32 r32 r16 r8 \break | % 102
  <f, g>32 r32 r16 r8 <f g bf>32 r32 r16 r8 <f g d'>32 r32 r16 r8
  <bf d g>32 r32 r16 r8 | % 103
  <a c f>8 r8 r4 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <f'' a>16 bf16 a16
  }
  <c, f>32 r32 r16 <bf' d>32 r32 r16 | % 104
  <a c>32 r32 r16 r8 r4 r4 <bf,, c>32 r32 r16 r8 | % 105
  <a f'>8 c16 d16 e16 \ff f16 g16 a16 bf16 c16 \ff d16 e16 f16 g16 a16
  bf16 \pageBreak | % 106
  <c, f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8
  <c f a c>32 r32 r16 r8 | % 107
  <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8
  <c f a c>32 r32 r16 r8 | % 108
  <f bf d>32 r32 r16 r8 <e bf' c e>32 r32 r16 r8 <f a c f>32 r32 r16
  r8 <c f a>32 r32 r16 r8 | % 109
  <c f a c>32 r32 r16 r8 <b f' g c>32 r32 r16 r8 <c e g c>8 r8 <c e g
  c>8 r8 | \barNumberCheck #110
  <g, d' g>32 r32 r16 r8 <g bf d>32 r32 r16 r8 <g d' g>32 r32 r16 r8
  <d' g bf>32 r32 r16 r8 \pageBreak | % 111
  <d a'>32 r32 r16 r8 <d f>32 r32 r16 r8 <d f a>32 r32 r16 r8 <f a d>32
  r32 r16 r8 | % 112
  <e a c>32 r32 r16 r8 <c e a>32 r32 r16 r8 <d e>32 r32 r16 r8 <d e
  b'>32 r32 r16 r8 \pageBreak | % 113
  <cs e a>32 r32 r16 r8 <a cs>32 r32 r16 r8 <a cs e>32 r32 r16 r8
  <cs e a>32 r32 r16 r8 | % 114
  <f, g>32 r32 r16 r8 <f g bf>32 r32 r16 r8 <f g d'>32 r32 r16 r8
  <bf d f>32 r32 r16 r8 \pageBreak | % 115
  <a c f>32 r32 r16 r8 r4 r8 \once \override TupletBracket #'stencil =
  ##f
  \times 2/3  {
    <f'' a>16 bf16 a16
  }
  <c, f>32 r32 r16 <bf' d>32 r32 r16 | % 116
  <a c>32 r32 r16 r8 r4 r4 <g, bf c e>32 r32 r16 r8 \pageBreak | % 117
  <f a c f>8 r8 r4 <b' f'>4. ~ ~ <b f'>16 r16 | % 118
  <c e>8 r8 r4 <a, es'>4. ~ ~ <a es'>16 r16 | % 119
  <bf d>8 r8 r4 <f, bf cs>4. ~ ~ ~ <f bf cs>16 ~ f16 ~ \pageBreak
  | \barNumberCheck #120
  <f a c>8 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <c' f>8 a8 <f' a>8
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <f a>8 c8 <a' c>8
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <a c>8 f8 <a c f>8
  }
  | % 121
  <a c f>8 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <f a>8 c8 <a' c>8
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <a c>8 f8 <c' f>8
  }
  \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    <c f>8 a8 <b d f a>8
  }
  | % 122
  <b d f a>8 r8 b16 c16 d16 e16 f16 g16 a16 b16 c16 d16 e16 f16
  \pageBreak | % 123
  <bf, c e g>8 r8 r4 r2 | % 124
  <f a c>32 r32 r16 r8 <f a d>8. c'16 <c, f a>32 r32 r16 r8 <c f a>32
  r32 r16 r8 | % 125
  bf'32 <c, f a>16 r32 r16 g'16 <c, f a>32. r64 r16 r16 bf'16 <c, f
  a>4. r8 | % 126
  <d f bf>32. r64 r16 r8 <c e g>32. r64 r16 r16 c'32. r64 <c, f a>32.
  r64 r16 r8 f'32 g32 f32 g32 e16 f16 | % 127
  g32 r32 r16 r8 <g, bf c e>32 r32 r16 r8 <f a c f>32 r32 r16 r8 r4 | % 128
  R1
}

rightHandDownVoice =  \relative e'' {
  \clef "treble" \key af \major \numericTimeSignature\time 4/4
  \partial 4 s4 \ff | % 1
  s1*7 | % 8
  r4 <e c'>16 r16 r8 r2 s1*2 \break s1*3 \break s1*3 \break s1*2
  \pageBreak s1 \break s1*4 \break s1*3 \break s1*4 \break s1*4 \break
  s1 \bar "||"
  \key f \major s1*4 \break s1*4 \break s1*4 \pageBreak s1*5
  \pageBreak s1*2 \pageBreak s1*3 \pageBreak s1 \bar "||"
  \key af \major s1 | \barNumberCheck #60
  s1*6 | % 66
  r4 <e c'>16 r16 r8 r2 s1 \break s1*4 \break s1*3 \break s1*3
  \pageBreak s1*4 \break s1*3 \break s1*3 \break s1*4 \break s1*2 \bar
  "||"
  \key f \major s1*4 \break s1*4 \break s4*13 s16*5 \ff s16*7 \ff
  \pageBreak s1*5 \pageBreak s1*2 \pageBreak s1*2 \pageBreak s1*2
  \pageBreak s1*3 \pageBreak s1*3 \pageBreak s1*2 | % 125
}

leftHandUpVoice =  \relative f, {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 r4 | % 1
  <f f'>8 <c' f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs
  c>32 r32 r16 <c f gs c>32 r32 r16 r8 <c, c'>8 r8 | % 2
  <f f'>8 <c' f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs
  c>32 r32 r16 <c f gs c>32 r32 r16 r8 <c, c'>8 r8 | % 3
  <f f'>8 <es' f a>16 <es f a>16 <es f a>32 r32 r16 <es f a>32 r32 r16
  <es f a>32 r32 r16 r8 <f,, f'>8 r8 | % 4
  <bf bf'>8 <cs' f bf>16 <cs f bf>16 <cs f bf>32 r32 r16 <cs
  f bf>32 r32 r16 <cs f bf>32 r32 r16 r8 r4 | % 5
  <es, es'>32 r32 r16 <es es'>8 ~ ~ <es es'>16. r32 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 r8 <es es'>32 r32 r16 <gs gs'>32 r32 r16 | % 6
  <c, c'>32 r32 r16 <c c'>8 ~ ~ <c c'>16. r32 <c c'>32 r32 r16 <f f'>32
  r32 r16 r8 <c c'>32 r32 r16 <f f'>32 r32 r16 | % 7
  <bf bf'>32 r32 r16 gs'32 r32 r16 fs32 r32 r16 gs32 r32 r16 bf32
  r32 r16 cs32 r32 r16 fs32 r32 r16 gs32 r32 r16 | % 8
  bf32 r32 r16 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c,,16 r16 <c e bf'>16 r16 <c e bf'>16 r16
  }
  <f gs>32 r32 r16 r8 <c, c'>32 r32 r16 r8 | % 9
  f8 r8 r4 r4 <c c'>8 r8 | \barNumberCheck #10
  f8 r8 r4 r4 <c c'>8 r8 \break | % 11
  f8 r8 r4 r4 f8 r8 | % 12
  <bf, bf'>8 r8 r4 r2 | % 13
  <es es'>32 r32 r16 <es es'>8 ~ ~ <es es'>16. r32 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 r8 <es es'>32 r32 r16 <gs gs'>32 r32 r16
  \break | % 14
  <c, c'>32 r32 r16 <c c'>8 ~ ~ <c c'>16. r32 <c c'>32 r32 r16 <f f'>32
  r32 r16 r8 <c c'>32 r32 r16 <f f'>32 r32 r16 | % 15
  <c'' gs'>32 r32 r16 <bf es>32 r32 r16 <gs c>32 r32 r16 <bf es>32
  r32 r16 <c gs'>32 r32 r16 <es bf'>32 r32 r16 <gs c>32 r32 r16
  <bf cs>32 r32 r16 | % 16
  <c es>32 r32 r16 r8 <es,, es'>32 r32 r16 r8 <gs, gs'>32 r32 r16 r8
  <c c'>32 r32 r16 r8 \break | % 17
  <f, f'>32 r32 r16 r8 r4 r4 <c c'>8 r8 | % 18
  f8 r8 r4 r4 <c c'>8 r8 \pageBreak | % 19
  f8 r8 r4 r4 <c c'>8 r8 \break | \barNumberCheck #20
  <bf bf'>8 r8 r4 r2 | % 21
  <e e'>32 r32 r16 <e e'>8 ~ ~ <e e'>16. r32 <e e'>32 r32 r16 <f f'>32
  r32 r16 r8 c'32 r32 r16 f32 r32 r16 | % 22
  <c, c'>32 r32 r16 <c c'>8 ~ ~ <c c'>16. r32 <c c'>32 r32 r16 <cs
  cs'>32 r32 r16 r8 gs'32 r32 r16 cs32 r32 r16 | % 23
  <bf' fs'>32 r32 r16 <gs cs>32 r32 r16 <fs bf>32 r32 r16 <gs
  cs>32 r32 r16 <bf fs'>32 r32 r16 <cs gs'>32 r32 r16 <fs
  bf>32 r32 r16 <gs c>32 r32 r16 \break | % 24
  <bf cs>32 r32 r16 r8 <c,, c'>8 r8 <f, f'>8 r8 <f f'>8 r8 | % 25
  <c c'>8 <g'' c es>16 <g c es>16 <g c es>32 r32 r16 <g c es>32 r32 r16
  <g c es>32 r32 r16 r8 <g,, g'>8 r8 | % 26
  <c c'>8 <g'' c es>16 <g c es>16 <g c es>32 r32 r16 <g c es>32 r32 r16
  <g c es>32 r32 r16 r8 <gs,, gs'>8 r8 \break | % 27
  <g g'>8 <c' es g>16 <c es g>16 <c es g>32 r32 r16 <c es g>32 r32 r16
  <c es g>32 r32 r16 r8 <g, g'>8 r8 | % 28
  <c c'>8 <c' es g c>16 <c es g c>16 <c es g c>32 r32 r16 <c es g c>32
  r32 r16 <c es g c>32 ~ c'16. ~ c16. r32 r4 | % 29
  <fs,,, fs'>2 ~ ~ <fs fs'>8. r16 <g g'>8. r16 | \barNumberCheck
  #30
  <c c'>2 ~ ~ <c c'>8 r8 r4 \break | % 31
  <fs, fs'>2 ~ ~ <fs fs'>8. r16 <g g'>8. r16 | % 32
  <c c'>8 <c' e g>32 r32 r16 r8 <c e g>32 r32 r16 <c e g>32 r32 r16 <c
  e g>32 r32 r16 r8 <c e g>32 r32 r16 | % 33
  <c e g>32 r32 r16 <c e g>32 r32 r16 r8 <c e g c>32 r32 r16 <c f gs
  c>32 r32 r16 <c f gs c>32 r32 r16 r8 <c f gs c>32 r32 r16 | % 34
  <c e g c>32 r32 r16 r8 r4 <g' bf>2 \break | % 35
  <f a>2 <c g'>2 \bar "||"
  \key f \major f32 r32 r16 r8 c32 r32 r16 r8 f32 r32 r16 r8 c32 r32 r16
  r8 | % 37
  f32 r32 r16 r8 c32 r32 r16 r8 f32 r32 r16 r8 c32 r32 r16 r8 | % 38
  g'32 r32 r16 r8 c,32 r32 r16 r8 f32 r32 r16 r8 e32 r32 r16 r8 | % 39
  d32 r32 r16 r8 g32 r32 r16 r8 c,32 r32 r16 r8 c'32 r32 r16 r8 \break
  | \barNumberCheck #40
  bf,32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8 | % 41
  f32 r32 r16 r8 a32 r32 r16 r8 f32 r32 r16 r8 d32 r32 r16 r8 | % 42
  e32 r32 r16 r8 c'32 r32 r16 r8 b32 r32 r16 r8 e,32 r32 r16 r8 | % 43
  a32 r32 r16 r8 e'32 r32 r16 r8 cs32 r32 r16 r8 a32 r32 r16 r8
  \break | % 44
  bf32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8 | % 45
  c1 ~ | % 46
  c8 r8 r4 r4 <c e>32 r32 r16 r8 | % 47
  <f, f'>8 a16 bf16 c16 d16 e16 f16 g16 a16 bf16 c16 d16 e16 f16 r16
  \pageBreak | % 48
  <f,, f'>32 r32 r16 r8 <c c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <c c'>32
  r32 r16 r8 | % 49
  <f f'>32 r32 r16 r8 <c c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <c c'>32
  r32 r16 r8 | \barNumberCheck #50
  <g' g'>32 r32 r16 r8 <c, c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <e e'>32
  r32 r16 r8 | % 51
  <d d'>32 r32 r16 r8 <g g'>32 r32 r16 r8 <c, c'>32 r32 r16 r8 <c' c'>32
  r32 r16 r8 | % 52
  bf32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8
  \pageBreak | % 53
  f32 r32 r16 r8 a32 r32 r16 r8 f32 r32 r16 r8 d32 r32 r16 r8 | % 54
  e32 r32 r16 r8 c'32 r32 r16 r8 b32 r32 r16 r8 e,32 r32 r16 r8
  \pageBreak | % 55
  a32 r32 r16 r8 e'32 r32 r16 r8 cs32 r32 r16 r8 a32 r32 r16 r8 | % 56
  bf32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8 | % 57
  <c, c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <a a'>32 r32 r16 r8 <c c'>32
  r32 r16 r8 \pageBreak | % 58
  <c, c'>32 r32 r16 r8 r4 r4 <c' c'>32 r32 r16 r8 \bar "||"
  \key af \major <f, f'>8 <c' f gs c>16 <c f gs c>16 <c f gs c>32 r32
  r16 <c f gs c>32 r32 r16 <c f gs c>32 r32 r16 r8 <c, c'>8 r8 |
  \barNumberCheck #60
  <f f'>8 <c' f gs c>16 <c f gs c>16 <c f gs c>32 r32 r16 <c f gs
  c>32 r32 r16 <c f gs c>32 r32 r16 r8 <c, c'>8 r8 | % 61
  <f f'>8 <es' f a>16 <es f a>16 <es f a>32 r32 r16 <es f a>32 r32 r16
  <es f a>32 r32 r16 r8 <f,, f'>8 r8 | % 62
  <bf bf'>8 <cs' f bf>16 <cs f bf>16 <cs f bf>32 r32 r16 <cs
  f bf>32 r32 r16 <cs f bf>32 r32 r16 r8 r4 | % 63
  <es, es'>32 r32 r16 <es es'>8 ~ ~ <es es'>16. r32 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 r8 <es es'>32 r32 r16 <gs gs'>32 r32 r16 | % 64
  <c, c'>32 r32 r16 <c c'>8 ~ ~ <c c'>16. r32 <c c'>32 r32 r16 <f f'>32
  r32 r16 r8 <c c'>32 r32 r16 <f f'>32 r32 r16 | % 65
  <bf bf'>32 r32 r16 gs'32 r32 r16 fs32 r32 r16 gs32 r32 r16 bf32
  r32 r16 cs32 r32 r16 fs32 r32 r16 gs32 r32 r16 | % 66
  bf32 r32 r16 r8 \once \override TupletBracket #'stencil = ##f
  \times 2/3  {
    c,,16 r16 <c e bf'>16 r16 <c e bf'>16 r16
  }
  <f gs>32 r32 r16 r8 <c, c'>32 r32 r16 r8 | % 67
  f8 r8 r4 r4 <c c'>8 r8 \break | % 68
  f8 r8 r4 r4 <c c'>8 r8 | % 69
  f8 r8 r4 r4 f8 r8 | \barNumberCheck #70
  <bf, bf'>8 r8 r4 r2 | % 71
  <es es'>32 r32 r16 <es es'>8 ~ ~ <es es'>16. r32 <es es'>32 r32 r16
  <gs gs'>32 r32 r16 r8 <es es'>32 r32 r16 <gs gs'>32 r32 r16
  \break | % 72
  <c, c'>32 r32 r16 <c c'>8 ~ ~ <c c'>16. r32 <c c'>32 r32 r16 <f f'>32
  r32 r16 r8 <c c'>32 r32 r16 <f f'>32 r32 r16 | % 73
  <c'' gs'>32 r32 r16 <bf es>32 r32 r16 <gs c>32 r32 r16 <bf es>32
  r32 r16 <c gs'>32 r32 r16 <es bf'>32 r32 r16 <gs c>32 r32 r16
  <bf cs>32 r32 r16 | % 74
  <c es>32 r32 r16 r8 <es,, es'>32 r32 r16 r8 <gs, gs'>32 r32 r16 r8
  <c c'>32 r32 r16 r8 \break | % 75
  <f, f'>32 r32 r16 r8 r4 r4 <c c'>8 r8 | % 76
  f8 r8 r4 r4 <c c'>8 r8 | % 77
  f8 r8 r4 r4 <c c'>8 r8 \pageBreak | % 78
  <bf bf'>8 r8 r4 r2 | % 79
  <e e'>32 r32 r16 <e e'>8 ~ ~ <e e'>16. r32 <e e'>32 r32 r16 <f f'>32
  r32 r16 r8 c'32 r32 r16 f32 r32 r16 | \barNumberCheck #80
  <c, c'>32 r32 r16 <c c'>8 ~ ~ <c c'>16. r32 <c c'>32 r32 r16 <cs
  cs'>32 r32 r16 r8 gs'32 r32 r16 cs32 r32 r16 | % 81
  <bf' fs'>32 r32 r16 <gs cs>32 r32 r16 <fs bf>32 r32 r16 <gs
  cs>32 r32 r16 <bf fs'>32 r32 r16 <cs gs'>32 r32 r16 <fs
  bf>32 r32 r16 <gs c>32 r32 r16 \break | % 82
  <bf cs>32 r32 r16 r8 <c,, c'>8 r8 <f, f'>8 r8 <f f'>8 r8 | % 83
  <c c'>8 <g'' c es>16 <g c es>16 <g c es>32 r32 r16 <g c es>32 r32 r16
  <g c es>32 r32 r16 r8 <g,, g'>8 r8 | % 84
  <c c'>8 <g'' c es>16 <g c es>16 <g c es>32 r32 r16 <g c es>32 r32 r16
  <g c es>32 r32 r16 r8 <gs,, gs'>8 r8 \break | % 85
  <g g'>8 <c' es g>16 <c es g>16 <c es g>32 r32 r16 <c es g>32 r32 r16
  <c es g>32 r32 r16 r8 <g, g'>8 r8 | % 86
  <c c'>8 <c' es g c>16 <c es g c>16 <c es g c>32 r32 r16 <c es g c>32
  r32 r16 <c es g c>32 ~ c'16. ~ c16. r32 r4 | % 87
  <fs,,, fs'>2 ~ ~ <fs fs'>8. r16 <g g'>8. r16 \break | % 88
  <c c'>2 ~ ~ <c c'>8 r8 r4 | % 89
  <fs, fs'>2 ~ ~ <fs fs'>8. r16 <g g'>8. r16 | \barNumberCheck #90
  <c c'>8 <c' e g>32 r32 r16 r8 <c e g>32 r32 r16 <c e g>32 r32 r16 <c
  e g>32 r32 r16 r8 <c e g>32 r32 r16 | % 91
  <c e g>32 r32 r16 <c e g>32 r32 r16 r8 <c e g c>32 r32 r16 <c f gs
  c>32 r32 r16 <c f gs c>32 r32 r16 r8 <c f gs c>32 r32 r16
  \break | % 92
  <c e g c>32 r32 r16 r8 r4 <g' bf>2 | % 93
  <f a>2 <c g'>2 \bar "||"
  \key f \major f32 r32 r16 r8 c32 r32 r16 r8 f32 r32 r16 r8 c32 r32 r16
  r8 | % 95
  f32 r32 r16 r8 c32 r32 r16 r8 f32 r32 r16 r8 c32 r32 r16 r8 | % 96
  g'32 r32 r16 r8 c,32 r32 r16 r8 f32 r32 r16 r8 e32 r32 r16 r8 | % 97
  d32 r32 r16 r8 g32 r32 r16 r8 c,32 r32 r16 r8 c'32 r32 r16 r8 \break
  | % 98
  bf,32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8 | % 99
  f32 r32 r16 r8 a32 r32 r16 r8 f32 r32 r16 r8 d32 r32 r16 r8 |
  \barNumberCheck #100
  e32 r32 r16 r8 c'32 r32 r16 r8 b32 r32 r16 r8 e,32 r32 r16 r8 | % 101
  a32 r32 r16 r8 e'32 r32 r16 r8 cs32 r32 r16 r8 a32 r32 r16 r8
  \break | % 102
  bf32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8 | % 103
  c1 ~ | % 104
  c8 r8 r4 r4 <c e>32 r32 r16 r8 | % 105
  <f, f'>8 a16 bf16 c16 d16 e16 f16 g16 a16 bf16 c16 d16 e16 f16 r16
  \pageBreak | % 106
  <f,, f'>32 r32 r16 r8 <c c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <c c'>32
  r32 r16 r8 | % 107
  <f f'>32 r32 r16 r8 <c c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <c c'>32
  r32 r16 r8 | % 108
  <g' g'>32 r32 r16 r8 <c, c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <e e'>32
  r32 r16 r8 | % 109
  <d d'>32 r32 r16 r8 <g g'>32 r32 r16 r8 <c, c'>32 r32 r16 r8 <c' c'>32
  r32 r16 r8 | \barNumberCheck #110
  bf32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8
  \pageBreak | % 111
  f32 r32 r16 r8 a32 r32 r16 r8 f32 r32 r16 r8 d32 r32 r16 r8 | % 112
  e32 r32 r16 r8 c'32 r32 r16 r8 b32 r32 r16 r8 e,32 r32 r16 r8
  \pageBreak | % 113
  a32 r32 r16 r8 e'32 r32 r16 r8 cs32 r32 r16 r8 a32 r32 r16 r8 | % 114
  bf32 r32 r16 r8 d32 r32 r16 r8 bf32 r32 r16 r8 g32 r32 r16 r8
  \pageBreak | % 115
  <c, c'>32 r32 r16 r8 <f f'>32 r32 r16 r8 <a a'>32 r32 r16 r8 <c c'>32
  r32 r16 r8 | % 116
  <c, c'>32 r32 r16 r8 r4 r4 <c' c'>32 r32 r16 r8 \pageBreak | % 117
  <f, f'>32 r32 r16 r8 r4 g'''2 ~ | % 118
  <c, g'>8 r8 r4 f,2 ~ | % 119
  <bf, f'>8 r8 r4 <g,, g'>4. ~ ~ <g g'>16 r16 \pageBreak |
  \barNumberCheck #120
  <c c'>8 r8 <c' f a>8 r8 <c f a>8 r8 <c f a>8 r8 | % 121
  <c f a>8 r8 <c f a>8 r8 <c f a>8 r8 <c f a>8 r8 | % 122
  <c d f b>16 <c d f b>16 <c d f b>16 <c d f b>16 <c d f b>16 <c d f
  b>16 <c d f b>16 <c d f b>16 <c d f b>16 <c d f b>16 <c d f b>16
  <c d f b>16 <c d f b>16 <c d f b>16 <c d f b>16 <c d f b>16
  \pageBreak | % 123
  <c e g bf>8 r8 r4 r2 | % 124
  <f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <f a c>32 r32 r16 r8 <c
  f a c>32 r32 r16 r8 | % 125
  <f a c>32 r32 r16 r8 <c f a c>32 r32 r16 r8 <f a c>32 r32 r16 r8 <c
  f a c>32 r32 r16 r8 | % 126
  <g' bf c>32 r32 r16 r8 <c, g' bf c>32 r32 r16 r8 <f a c>32 r32 r16
  r8 <d' f a>32 r32 r16 r8 | % 127
  <bf d f g>32 r32 r16 r8 <c, c'>32 r32 r16 r8 <f, f'>32 r32 r16 r8 r4
  | % 128
  R1
}

leftHandDownVoice =  \relative e {
  \clef "bass" \key af \major \numericTimeSignature\time 4/4 \partial
  4 s4 | % 1
  s1*7 | % 8
  r4 <e bf'>16 r16 r8 r2 s1*2 \break s1*3 \break s1*3 \break s1*2
  \pageBreak s1 \break s1*4 \break s1*3 \break s1*4 \break s1*4 \break
  s1 \bar "||"
  \key f \major s1*4 \break s1*4 \break s1*4 \pageBreak s1*5
  \pageBreak s1*2 \pageBreak s1*3 \pageBreak s1 \bar "||"
  \key af \major s1 | \barNumberCheck #60
  s1*6 | % 66
  r4 <e bf'>16 r16 r8 r2 s1 \break s1*4 \break s1*3 \break s1*3
  \pageBreak s1*4 \break s1*3 \break s1*3 \break s1*4 \break s1*2 \bar
  "||"
  \key f \major s1*4 \break s1*4 \break s1*4 \pageBreak s1*5
  \pageBreak s1*2 \pageBreak s1*2 \pageBreak s1*2 \pageBreak s1*3
  \pageBreak s1*3 \pageBreak s1*2 | % 125
}


% The score definition
\score {
  <<
    \new StaffGroup = "Soloists" <<
      \new Staff <<
        \set Staff.instrumentName = "Carmen"
        \set Staff.shortInstrumentName = "Ca."
        \context Staff <<
          \context Voice = "carmenVoice" { \carmenVoice }
          \new Lyrics \lyricsto "carmenVoice" \carmenVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Frasquita"
        \set Staff.shortInstrumentName = "Fr."
        \context Staff <<
          \context Voice = "sopranoOneVoiceOne" { \sopranoOneVoiceOne }
          \new Lyrics \lyricsto "sopranoOneVoiceOne" \sopranoOneVoiceOneLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Mercedes"
        \set Staff.shortInstrumentName = "Me."
        \context Staff <<
          \context Voice = "sopranoTwoVoice" { \sopranoTwoVoice }
          \new Lyrics \lyricsto "sopranoTwoVoice" \sopranoTwoVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Morales"
        \set Staff.shortInstrumentName = "Mo."
        \context Staff <<
          \context Voice = "moralesVoice" { \moralesVoice }
          \new Lyrics \lyricsto "moralesVoice" \moralesVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Escamillo"
        \set Staff.shortInstrumentName = "Es."
        \context Staff <<
          \context Voice = "escamilloVoice" { \escamilloVoice }
          \new Lyrics \lyricsto "escamilloVoice" \escamilloVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Zuniga"
        \set Staff.shortInstrumentName = "Zu."
        \context Staff <<
          \context Voice = "zunigaVoice" { \zunigaVoice }
          \new Lyrics \lyricsto "zunigaVoice" \zunigaVoiceLyricsOne
        >>
      >>
    >>
    \new ChoirStaff <<
      \new Staff <<
        \set Staff.instrumentName = "Tenor 1"
        \set Staff.shortInstrumentName = "T1"
        \context Staff <<
          \context Voice = "tenorOneVoice" { \tenorOneVoice }
          \new Lyrics \lyricsto "tenorOneVoice" \tenorOneVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Tenor 2"
        \set Staff.shortInstrumentName = "T2"
        \context Staff <<
          \context Voice = "tenorTwoVoice" { \tenorTwoVoice }
          \new Lyrics \lyricsto "tenorTwoVoice" \tenorTwoVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Bass 1"
        \set Staff.shortInstrumentName = "B1"
        \context Staff <<
          \context Voice = "bassOneVoice" { \bassOneVoice }
          \new Lyrics \lyricsto "bassOneVoice" \bassOneVoiceLyricsOne
        >>
      >>
      \new Staff <<
        \set Staff.instrumentName = "Bass 2"
        \set Staff.shortInstrumentName = "B2"
        \context Staff <<
          \context Voice = "bassTwoVoice" { \bassTwoVoice }
          \new Lyrics \lyricsto "bassTwoVoice" \bassTwoVoiceLyricsOne
        >>
      >>

    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "P."
      \context Staff = "1" <<
        \context Voice = "rightHandUpVoice" {  \rightHandUpVoice }
      >> \context Staff = "2" <<
        \context Voice = "leftHandUpVoice" {  \leftHandUpVoice }
      >>
    >>

  >>
  \layout {
    \context {
      \StaffGroup
      \RemoveEmptyStaves
    }
    \context {
      \ChoirStaff
      \RemoveEmptyStaves
    }
  }
  % To create MIDI output, uncomment the following line:
  %  \midi {}
}
