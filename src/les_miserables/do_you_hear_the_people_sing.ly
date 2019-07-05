\version "2.18.2"
\language "english"

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%% additional definitions required by the score:
otherdynamics = #(make-dynamic-script "other-dynamics")

\header {
    encodingdate = \date
    title = "Do you hear the people sing?"
    composer = "David Burt, The Original London Cast of Les Misérables"
    piece = "Les Misérables"
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


global = {
  \key d \minor
  \numericTimeSignature
  \time 4/4
  \tempo 4=84
  \autoBeamOn

  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % Permit first bar number to be printed
  \bar ""
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)

  s1*10

  \key c \major

  s1*28 | \barNumberCheck #39

  \tempo "A little slower" 4=76

  s1*12

  \bar "|."
}

sopMusic = \relative f' {
  R1 * 9 | \barNumberCheck #10
  r2  r4 e8. e16 |
  a8. gs16 a8. b16 c8. b16 a8. c16 |
  b8. a16 g!8. a16 b4 \tuplet 3/2 {r4 c8} |
  \tuplet 3/2 {d4 c8} \tuplet 3/2 {b8 c d~} \tuplet 3/2 {d4 c8} \tuplet 3/2 {b4 d8} |
  c8. b16 a8. b16 c4 r8. a16^\mf |
  \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b c} |
  d2 r4 e8.^\f d16 | \barNumberCheck #17
  c8. d16 e8. f16 g4 \tuplet 3/2 {e8 d c} |
  b8. a16 b8. c16 g4 \tuplet 3/2 {a8 g f} |
  e8. g16 c8. e16 d8. cs16 d8. a16 |
  c!8. b16 b8. c16 d4 e8. d16 | \barNumberCheck #21
  c8. d16 e8. f16 g4 \tuplet 3/2 {e8 d c} |
  b8. a16 b8. c16 g4 \tuplet 3/2 {a8 g f} | \barNumberCheck #23
  e8. g16 c8. e16 \tuplet 3/2 {d8 cs d} f8. b,16 |
  c!2 r4 e,8.^\mf e16 |
  a8. gs16 a8. b16 c8. b16 a8. c16 |
  b8. a16 g!8. a16 b4 \tuplet 3/2 {r8 b c} |
  d8. c16 b8. c16 d8. c16 \tuplet 3/2 {r8 b d} |
  c8. b16 a8. b16 c4 r8. a16 |
  \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b c} |
  d2 r4 e8.^\f d16 |
  c8. d16 e8. f16 g4 \tuplet 3/2 {e8 d c} |
  b8. a16 b8. c16 g4 \tuplet 3/2 {a8 g f} |
  e8. g16 c8. e16 d8. cs16 d8. a16 |
  c!8. b16 b8. c16 d8 r e8. d16 |
  c8. d16 e8. f16 g4 \tuplet 3/2 {e8 d c} |
  b8. a16 b8. c16 g4 \tuplet 3/2 {a8 g f} |
  e8. g16 c8. e16 \tuplet 3/2 {d8 cs d} f8. b,16 |
  c!2 r4^"slight rit." e8.^\ff d16 |
  c8. d16 e8. f16 g4 \tuplet 3/2 {e8 d c} |
  b8. a16 b8. c16 g4 \tuplet 3/2 {a8 g f} | \barNumberCheck #41
  e8. g16 c8. e16 d8. cs16 d8. a16 |
  c!8. b16 b8. c16 d8 r e8. d16 |
  c8. d16 e8. f16 g4 \tuplet 3/2 {e8 d c} |
  b8. a16 b8. c16 g4 \tuplet 3/2 {a8 g f} |
  e8. g16 c8. e16 \tuplet 3/2 {d8 cs d} f8. b,16 |
  c!2. r4 |
  d1 |
  e |
  g2^"molto rall." r8 d8-- f-- e-- |
  g1\fermata ||
}

sopWords = \lyricmode {

  Will you join in our cru -- sade? Who will be strong and stand with
  me?  Be -- yond the bar -- ri -- cade __ is there a world you long
  to see?  Then join in the fight that will give you the right to be
  free!  Do you hear the peo -- ple sing, sing -- ing the song of an
  -- gry men? It is the mu -- sic of a peo -- ple __ who will not be
  slaves a -- gain! When the beat -- ing of your heart e -- choes the
  beat -- ing__ of the drums, there is a life a -- bout to start when
  to -- mor -- row comes.  They will live a -- gain in free -- dom in
  the gar -- den of the Lord, they will walk be -- hind the plough --
  share, they will put a -- way the sword. The chain will be bro --
  ken and all men will have their re -- ward!  Will you join in our
  cru -- sade? Who will be strong and stand with me?  Some -- where be
  -- yond the bar -- ri -- cade __ is there a world you long to see?
  Do you hear the peo -- ple sing, say do you hear the dis -- tant
  drums? It is the fu -- ture that they bring when to -- mor -- row
  comes. Will you join in our cru -- sade? Who will be strong and
  stand with me? Some -- where be -- yond the bar -- ri -- cade is
  there a world you long to see? Do you hear the peo -- ple sing, say
  do you hear the dis -- tant drums? It is the fu -- ture that thye
  bring when to -- mor -- row comes. Ah! __ _ _ to -- mor -- row
  comes!

}

altoMusic = \relative f' {
  r1 |
  r2 r4 a8.^\mf g16 |
  f8. g16 a8. bf16 c4 \tuplet 3/2 {a8 g f} |
  e8. d16 e8. f16 c4 \tuplet 3/2 {d8 c bf} | \barNumberCheck #5
  a8. c16 f8. a16 \tuplet 3/2 {g8 g4~} \tuplet 3/2 {g8 g d} |
  f8. e16 e8. f16 g4 a8. g16 |
  f8. g16 \tuplet 3/2 {a8 bf  c~} c4 \tuplet 3/2 {a8 g f} |
  \tuplet 3/2 {e8 d4~} \tuplet 3/2 {d8 e f} c4 \tuplet 3/2 {d8 c bf} |
  a8. c16 f8. a16 \tuplet 3/2 {g8 fs g} bf8. e,16 | \barNumberCheck #10
  f!4 r r r | | \barNumberCheck #11
  R1 * 3 |
  r2.  r8. a16^\mf |
  \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b c} |
  d2 r4 c8.^\f g16 |
  e8. g16 c8. d16 e4 \tuplet 3/2 {c8 g e} |
  g8. f16 g8. a16 e4 \tuplet 3/2 {f8 e d} |
  c8. d16 e8. g16 fs8. e16 fs8. fs16 |
  a8. g16 g8. a16 b4 c8. g16 |
  e8. g16 c8. d16 e4 \tuplet 3/2 {c8 g e} |
  g8. f16 g8. a16 e4 \tuplet 3/2 {f8 e d} |
  c8. d16 e8. g16 \tuplet 3/2 {a8 a a} b8. f16 |
  e2 r4 e8.^\mf e16 |
  c8. b16 c8. d16 e8. d16 c8. a16 |
  b8. a16 g8. a16 b4 \tuplet 3/2 {r8 b c} |
  d8. c16 b8. c16 d8. c16 \tuplet 3/2 {r8 b d} |
  e8. d16 c8. d16 e4 r8. a,16 |
  \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b a} \tuplet 3/2 {c8 b c} |
  d2 r4 g8.^\f g16 |
  e8. g16 c8. d16 e4 \tuplet 3/2 {c8 g e} |
  g8. f16 g8. a16 e4 \tuplet 3/2 {f8 e d} |
  c8. d16 e8. g16 fs8. e16 fs8. f16 |
  a8. g16 g8. a16 b8 r c8. g16 |
  e8. g16 c8. d16 e4 \tuplet 3/2 {c8 g e} |
  g8. f16 g8. a16 e4 \tuplet 3/2 {f8 e d} |
  c8. d16 e8. g16 \tuplet 3/2 {a8 a a} b8. f16 |
  e2 r4^"slight rit." c'8.^\ff g16 |
  e8. g16 c8. d16 e4 \tuplet 3/2 {c8 g e} |
  g8. f16 g8. a16 e4 \tuplet 3/2 {f8 e d} | \barNumberCheck #41
  c8. d16 e8. g16 fs8. e16 fs8. fs16 |
  a8. g16 g8. a16 b8 r c8. g16 |
  e8. g16 c8. d16 e4 \tuplet 3/2 {c8 g e} |
  g8. f16 g8. a16 e4 \tuplet 3/2 {f8 e d} |
  c8. d16 e8. g16 \tuplet 3/2 {a8 a a} b8. f16 |
  e2. r4 |
  bf'1 |
  a |
  af2^"molto rall." r8 d-- d-- e-- |
  c1\fermata
}

altoWords = \lyricmode {

  Do you hear the peo -- ple sing, sing -- ing the song of an -- gry
  men?  It is the mu -- sic of a peo -- ple __ who will not be slaves
  a -- gain!  When the beat -- ing of your heart __ e -- choes the
  beat -- ing__ of the drums, there is a life a -- bout to start when
  to -- mor -- row comes.  Then join in the fight that will give you
  the right to be free!  Do you hear the peo -- ple sing, sing -- ing
  the song of an -- gry men? It is the mu -- sic of a peo -- ple __
  who will not be slaves a -- gain! When the beat -- ing of your heart
  e -- choes the beat -- ing of the drums, there is a life a -- bout
  to start when to -- mor -- row comes.  They will live a -- gain in
  free -- dom in the gar -- den of the Lord, they will walk be -- hind
  the plough -- share, they will put a -- way the sword. The chain
  will be bro -- ken and all men will have their re -- ward!  Will you
  join in our cru -- sade? Who will be strong and stand with me?  Some
  -- where be -- yond the bar -- ri -- cade __ is there a world you
  long to see? Do you hear the peo -- ple sing, say do you hear the
  dis -- tant drums? It is the fu -- ture that they bring when to --
  mor -- row comes. Will you join in our cru -- sade? Who will be
  strong and stand with me? Some -- where be -- yond the bar -- ri --
  cade is there a world you long to see? Do you hear the peo -- ple
  sing, say do you hear the dis -- tant drums? It is the fu -- ture
  that thye bring when to -- mor -- row comes. Ah! __ _ _ to -- mor
  -- row comes!

}

pAltoMusic = \relative f' {
  <f c>4^\mf <f c> <f c> <f c> |
  <f c> <f c> <f c> <f c> |
  <f c> <f c> <f c> <f c> |
  <d bf> <d bf> <c a> <c a> | \barNumberCheck #5
  <f d a> <f d a> <g d b> <g d b> |
  <f c>8. e16 <e c>8. <f d>16 <g e c>4 c, |
  <f c>4 <f c> <f c> <f c> |
  <bf, d> <d bf> <c a> <c a> |
  <d a f> <d a f> <d bf g> <e c bf g> | \barNumberCheck #10
  <f c a> <f c a>8. <f c a>16 <f c a>4  <e b gs> |
  <a e c>4\mf <a e c> <a e c> <a e c> |
  <b g e b> <b g e b> <b g e b> <b g e b> |
  <d a f d> <d a f d> <d a f d> <d a f d> |
  <c a e c> <c a e c> <c a e c> <c a e c> |
  <c a f> <c a e> <c a f d> <c a f c> |\barNumberCheck #16
  \stemDown <b g d>4^\cresc \stemNeutral <b g d>4 <b g d>2 \! |
  <c g e>4 <c g e>4 <c g e>4 <c g e>4 |
  <a f c> <a f c> <a f c> \tuplet 3/2 {<a f>8 <g e> <f d>} |
  <e c>4 <a e c> <a fs d> <a fs d> | \barNumberCheck #20
  \stemDown d,4 d \stemNeutral <d' b g d> g,4 |
  <c g e> <c g e> <g' c, g> <g c, g> |
  <c, a f> <c a f> <c g e> \tuplet 3/2 {<a f>8 <g e> <f d>} | \barNumberCheck #23
  <e c>4 <a e c> \tuplet 3/2 {<d a f>8 cs d} \stemDown <b g>4 |
  \stemNeutral <c! g e>2. r4 |
  <e, c a>8\mp r <e c a>8 r <e c a>8 r <e c a>8 r |
  <e b g>8 r <e b g>8 r <e b g>8 r <e b g>8 r |
  <f d a>8 r <f d a>8 r <f d a>8 r <f d a>8 r |
  <e c a>8 r <e c a>8 r <e c a>8 r <e c a>8 r |
  <a f c>8 r <a f c>8 r <b g c,>8 r <a f c>8 r |
  <b g d>8 r <b g d>8 r <b g d>8 r <b g d>8 r |
  <g c e g>2^\f <g c> |
  <a c> <g c e g> |
  <a c e> <a d fs> |
  <g c d g>4 <g b d g> <g d' g>2 |
  <c g e> <c g' c> |
  c <g g'> |
  <e' c e,>2 \stemDown a,4 \stemNeutral r |
  <c! g e>4 <c e g c>8. <c e g c>16 <c e g c>2 |
  <g c e g>2^\ff <g c> |
  <a c> <g c e g> | \barNumberCheck #41
  <a c e> <a d fs> |
  <g c d g>4 <g b d g> <g' d g,>2 |
  <e, g c> <c' g' c> |
  c <g g'> |
  s2 \stemDown a4 \stemNeutral r |
  r4 \stemDown g8. g16 <g c>4 \stemNeutral r |
  r \stemDown <f bf d>8. <f bf d>16 <f bf d>4 s4 |
  r <e a c>8. <e a c>16 <e a c>4 s4 |
  r <af c e>8. <af c e>16 <af c e>4 s4 |
  \ottava #1
  \set Staff.ottavation = #"8"
  <c' e g c>1\fermata ||
}

pSopMusic = \relative f' {
  s1 * 15 | \barNumberCheck #16
  d'1 |
  s1 * 3 | \barNumberCheck #20
 <a c>8. <g b>16 <g b>8. <a c>16 s2 |
  s1 * 2 | \barNumberCheck #23
  s2 s4 f'8. b,16 |
  s1 * 8 | \barNumberCheck #32
  <f'~ a~>4 \tuplet 3/2 {<f a>8 <e g> <d f>} s2 |
  s1 * 3 | \barNumberCheck # 36
  <g b>8. <f a>16 <g b>8. <a c>16 e4 d |
  s2 \tuplet 3/2 {<d f>8 <cs e> <d f>} <b f' a>8. <f g b>16 |
  s1 * 2 | \barNumberCheck #40
  <f'~ a~>4 \tuplet 3/2 {<f a>8 <e g> <d f>} s2 |
  s1 * 3 | \barNumberCheck #44
  <g b>8. <f a>16 <g b>8. <a c>16 e4 d |
  <e c e,>2 \tuplet 3/2 {<d f>8 <cs e> <d f>} <b f' a>8. <f g b>16 |
  <e g c!>4 <c' e g c>8. <c e g c>16 <e g c>2 |
  s4 <f bf d>8.-> <f bf d>16-> <f bf d>2-> |
  s4 <e a c e>8.-> <e a c e>16-> <e a c e>2-> |
  s4 <af c g'>8.-> <af c g'>16-> <af c g'>2-> |
  s1
}


pBassMusic = \relative f {
  f,4 f'2 c8. c,16 |
  f4 f'2 c8. c,16 |
  f4 f'2 f,4 |
  f4 f'2 f,8. e16 |
  d2 g | \barNumberCheck #6
  c,4 c'2 c8. c,16 |
  f4 g'2 f,4 |
  f4 g'2 e,4 |
  d2 g4 c,4 |
  f g' f, <e' e,> | \barNumberCheck #11
  a,4 a'2 a,4 |
  e4 e'2 e,4 |
  d4 d'2 d4 |
  a4 a'2 g,4 |
  f2 <d' d,> |
  g,,2 g' | \barNumberCheck #17
  <c c,>4~ <c c,>8. g16 <c c,>2 |
  <c c,>2 <c c,>4 <b b,> |
  <a a,>2 <d, d,> |
  <g g,>4 <g g,>8. d16 <g g,>4 g |
  <c c,>2 <e e,> |
  <f f,> <e e,> |
  a,4 a' <d, d,> g, |
  <c c,> \tuplet 3/2 {<c c,>8_\staccato r^\> <c c,>} <c c,>4 <b b,>\! |
  <a a,>8 r r4 <a a,>8 r r4 |
  <e' e,>8 r r4 <e e,>8 r r4 |
  <d d,>8 r r4 <d d,>8 r r4 |
  <a a,>8 r r4 <a a,> <a a,> |
  <a a,>2^\f <d d,> |
  <g g,>2.^\< r4\! |
  <c c,>4 <c c,> <e e,> <e e,> |
  <f f,> <f f,> <c c,> <b b,> |
  <a a,> <a a,> <d, d,> <d d,> |
  <g, g,> <g g,> <b b,> <b b,> |
  <g g,> <g g,> <b b,> <b b,> |
  <f' f,> <f f,> <c' c,> <b b,> |
  <a a,>^\cresc <a a,> <d d,> <g, g,> |
  <c, c,>2 r4^"slight rit." <g g,>\! |
  <c c,>^\ff <c c,> <e e,> <e e,> |
  <f f,> <f f,> <c c,> <b b,> | \barNumberCheck #41
  <a a,> <a a,> <d d,> <d d,> |
  <g g,> <g g,> <b, b,> <b b,> |
  <c c,> <c c,> <e e,> <e e,> |
  <f f,> <f f,> <c c'> <b b'> |
  <a' a,> <a a,> <d, d,> <g, g,> |
  <c c,>2. <g g,>4 |
  <c c,>2. <g g,>4 |
  <c c,>2. <g g,>4 |
  <c c,>2. <g g,>4 |
  \once \override Staff.OttavaBracket.direction = #DOWN
  \ottava #1
  \set Staff.ottavation = #"8"
  <c' c,>1\fermata ||
}

\score {
 <<
    \new ChoirStaff <<
      \new Staff = "soprano" <<
        \clef treble
        \set Staff.instrumentName = "Soprano"
        \set Staff.shortInstrumentName = "S."
        \new Voice = "soprano" {
          << \global \sopMusic >>
        }
      >>
      \new Lyrics = "soprano"

      \new Staff = "alto" <<
        \clef treble
        \set Staff.instrumentName = "Alto"
        \set Staff.shortInstrumentName = "A."
        \new Voice = "alto" {
          << \global \altoMusic >>
        }
      >>
      \new Lyrics = "alto"

      \context Lyrics = "soprano" \lyricsto "soprano" \sopWords
      \context Lyrics = "alto" \lyricsto "alto" \altoWords
    >>
    \new PianoStaff {
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "P."
      <<
        \context Staff = "up" {
          <<
            \accidentalStyle voice
            \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine \global \new Voice = "upper" {
              \voiceOne \pSopMusic
            }
            \partcombine \global \new Voice = "lower" {
              \voiceTwo \partcombine \global \pAltoMusic
            }
          >>
        }
        \context Staff = "lower" {
          <<
          \accidentalStyle voice
          \clef bass
          \set Staff.printPartCombineTexts = ##f
          \new Voice = "lower" {
            \partcombine \global \pBassMusic
          }
          %<< \global \pTenorMusic >>
        >>
        }
      >>
    }
 >>
}
