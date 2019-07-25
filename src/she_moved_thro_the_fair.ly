\version "2.18.2"
\language "english"

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%% additional definitions required by the score:
otherdynamics = #(make-dynamic-script "other-dynamics")

\header {
    encodingdate = \date
    title = "She moved thro' the fair"
    subtitle = "From \"Irish Country Songs\" Vol. 1"
    composer = "Padraic Colum (adapted from an old ballad)"
    arranger = "Herbert Hughes"
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
  \key e \minor
  \numericTimeSignature
  \time 6/4
  \tempo "Andante con moto"
  \autoBeamOn

  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % Permit first bar number to be printed
  \bar ""
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)

  \partial 4 s4 |
  s1. * 15 |

  \time 9/4
  s1. s2. | s1. s2.

  \time 6/4
  s1. * 11 |

  \time 9/4
  s1. s2. | s1. s2. |

  \time 6/4
  s1. * 15 |

  \bar "|."
}

soloMusic = \relative f' {
  r4 | r1. | r1. | r1. | \barNumberCheck #4
  r2. r4 r4 \tuplet 3/2 {d8^\mf( e fs)} |
  g4 fs g a a2( |
  a2) g8( e) c4 d d |
  d2 a'8 b c4 d2( |
  d2.)~ d4 a2 |
  b4 a fs g fs g |
  a2.~ a2 a8 b |
  c4( d2)~ d8 d a2 |
  b4 a fs g fs g |
  a2. d,2( e8 fs) |
  g4 fs g a \acciaccatura b8 a2~ |
  a2 g8( e8) c4 d d |
  d1. r2. |
  r2. r2. d2^\f( e8 fs) |
  g4 fs g a a2~ |
  a g8 e c4 d d |
  d2 a'8( b) c4 d2~ |
  d2.~ d4 a2 |
  b4 a fs g fs g |
  a2.~ a2 a8^\ff( b) |
  c4 d2~ d4 a2 |
  b4 a fs g fs g | \barNumberCheck #26
  a2. d,2 e8( fs) |
  g4 fs g a a2~ |
  a g8( e) c4 d d |
  d2.~ d4 r4 r r2. |
  r2. r2. d2^\p( e8 fs) |
  g4 fs g a a2~ |
  a g8( e) c4 d d |
  d2.~ d2 a'8( b) |
  c4 d2~ d a4 |
  b a fs g fs g |
  a2.~ a2 a8 b |
  c4 d2~ d4 \acciaccatura d8 a2 |
  b4 a fs g fs g |
  a2.~ a2 \tuplet 3/2 { d,8( e fs) } |
  g4 fs g a a2~ |
  a2 g8( e) c4 d d |
  d2.~ d2 r4 | r1. | r | r
}

soloWords = \lyricmode {

  My young love said to me, __ "\"My" mo -- ther won't mind And my fa --
  ther __ __ wont slight you for your lack of "kind,\"" __ And she
  stepp'd __ a -- way from me and this she did say, "\"It" __ will not be
  long, love, __ till our wed -- ding "day.\""

  She __ stepp'd a -- way from me __ and she went thro' the fair,
  And fond -- ly __ __ I watch'd her move here and move there, __ And __
  then she __ went home -- ward with one star a -- wake, As the __ swan
  in the eve -- ning __ moves o -- ver the lake. __ Last __ night she
  came to me, __ she __ came soft -- ly in, __ So __ soft -- ly __ she
  came that her feet made no din, __ And she laid her __ hand on me and
  this she did say "\"It" will not be long, love, till __ our
  wed -- ding "day.\"" __

}

rightHandUp = \relative f' {
 \tuplet 3/2 { <d b>8( <e c> <fs d> } |
 <g e c>4_"legato" <fs d b> <g e c> <a fs d>2.~) |
 <a fs d>2 <g d b>8 <e c g> <c g e>4 <d a fs>2~ |
 <d a fs>2.~ <d a fs>2 <e c g>8 g |
 <fs d b>2. r2. |
 <g e c>4_\mf <fs d b> <g e c> <a fs d>2.~ |
 <a fs d>2 <g d b>8 <e c g> <c g e>4 <d a fs>2~ |
 <d a fs> <a' e c>8 <b fs d> <c g e>4 <d a fs>2~ |
 <d a fs>2.~ <d a fs>4 <a e c>2 |
 <b fs d>4 <a e c> <fs c a> <g d b> <fs c a> <g e c> |
 <a fs d>2.~ <a fs d>2 <a e c>8 <b fs d> |
 <c g e>4 <d a fs>2~ <d a fs>4 <a e c>2 | % -way
 <b fs d>4 <a e c> <fs c a> <g d b> <fs c a> <g e c> |
 <a fs d>2.~ <a fs d>4 r r |
 <g e c>4_\p <fs d b> <g e c> <a fs d>2.~ |
 <a fs d>2 <g d b>8 <e c g> <c g e>4 <d a fs>2 | % 9/4
 c'4.( e8 d4 c e4. \tuplet 3/2 { d16 e d } c4 a b) |
 c4( e,4. f16 g a2) <fs a d>4~ <fs a d>2. | % 6/4
 <g c e g>4 <fs b d fs> <g c e g> <a d fs a>2.~ |
 <a d fs a>2 r4 <c g e c>4 <d a fs d>2~ |
 <d a fs d>2 <a d fs a>8 <b e g b> <c e g c>4 <d fs a d>2~ |
 <d fs a d>2.~ <d fs a d>4 <a d fs a>2 |
 <b d fs b>4 <a d fs a> <fs b d fs> <g c e g>_\cresc <a a'> <b b'> |
 <c c'>4. <e e'>8 <d d'>4 <c c'> <a a'> <b b'>_\ff |
 <c e g c>4 <d fs a d>2~ <d fs a d>4 <a d fs a>2 |
 <b d fs b>4 <a d fs a> <fs b d fs> <g c e g> <fs b d fs> <g c e g> |
 <a d fs a>2. <a d fs> |
 <g c e>4( <fs a d> <e g c> <a e c>2.~) <a e c>2 r4 <e c g> <fs d a>2 | % 9/4
 c'4.( e8 d4 c e4. \tuplet 3/2 { d16 e d } c4 a b) |
 c4( e,4. f16 g a2) <fs a d>4~ <fs a d>2. | % 6/4
 \tuplet 2/3 { c''4 b } \tuplet 2/3 { a g } |
 \tuplet 2/3 { fs d } \tuplet 2/3 { c b } |
 \tuplet 2/3 { a g } \tuplet 2/3 { fs e } |
 <c' g e>2. <d a d,> |
 <b fs d> <c g c,>2.~ |
 <c g c,> <d a d,> |
 <c g e> <d a d,> |
 <b fs d> <c g c,>2.~ |
 <c g c,> <d a d,> |
 r1. |
 r1. |
 r1. |
 c2~\pp( c e |
 <d c g>1.~) |
 <d c g> |
}

rightHandDown = \relative f' {
  \partial 4 s4 |
  s1. * 15 |

  %\time 9/4
  s1. s2. | s1. s2.

  %\time 6/4
  s1. * 11 |

  %\time 9/4
  s1. s2. | s1. s2. |

  %\time 6/4
  <c' g e c>2. <a fs d>~ |
  <a fs d> <e c a> |

  s1. * 10 |
  <g e>2.~ <g e> |
  s1. * 2 |
}

leftHandUp = \relative f {
  \tuplet 3/2 { g8 a b } |
  r2. r4 r a, |
  d,2 r4 r r a' |
  d,2. r2. |
  r1. |
  r2. r4 r a' |
  d,2. r4 r a' |
  d,2. r2. |
  a'4 d,2~ d2.~ |
  d2. r2. |
  r4 a'4 d,~ d2. |
  r4 r a' d, 2. |
  r1. |
  r4 a'4 d,~ d2.~ |
  d2 r4 r r a' |
  d,2. r2. |
  d4( a' d fs a c) e2 r4 |
  d,, a' e' g a c d2.~ |
  d2.^\f r4 r a, |
  d,2.~ d4 r a' |
  d,2 a''8 b c4 d2~ | \barNumberCheck #21
  d2.~ d4 a2 |
  b4 a f g f g |
  a2.~ a2 a8^\ff b |
  c4 d2~ d4 a2 |
  b4 a f g f g |
  r4 a, d,^\dim a' d a'~ |
  a2. r4 r a,4( |
  <a d,>2.)~ <a d,>4 r r |
  d,4^\p( a' d fs a c) e2 r4 |
  d,,( a' e' g a c d2.) |
  r1. |
  d,,2. r |
  \clef treble <fs'' d>2. \clef bass <a,, d,>2. |
  \tuplet 2/3 { a'4 g } \tuplet 2/3 { fs d,~ } |
  \tuplet 2/3 { d a' } \tuplet 2/3 { e' a, } |
  \tuplet 2/3 { d, a' } \tuplet 2/3 { fs' d, } |
  \tuplet 2/3 { a'' g } \tuplet 2/3 { fs d,~ } |
  \tuplet 2/3 { d a' } \tuplet 2/3 { e' d, } |
  \tuplet 2/3 { d a' } \tuplet 2/3 { fs' d, } |
  \tuplet 2/3 { c'' e } <fs, a d>2.~ |
  <fs a d> \tuplet 2/3 { c'4 e } |
  <fs, a d>2.~ <fs a d>
  r1. | r | r
}

leftHandDown = \relative f {
  \partial 4 s4 |
  s1. * 15 |

  \time 9/4
  s1. s2. | s1. s2.

  \time 6/4
  s1. * 3 | \barNumberCheck #21
  a,4( d,2)~ d2. |
  s2. s2. |
  \acciaccatura d,8 d1. |
  r4 r a'' d,2.~ |
  d2 s1 |
  s2. s |
  s s |
  s s |

  \time 9/4
  s1. s2. | s1. s2. |

  \time 6/4
  s1. * 9 |
  <e' g>2. \tuplet 2/3 { r4 a, } |
  d,2. <e' g> |
  r2. d, |
}

\score {
 <<
     \new ChoirStaff <<
       \new Staff = "solo" <<
         \clef treble
         \set Staff.instrumentName = "Solo"
         \set Staff.shortInstrumentName = "S."
         \new Voice = "solo" {
           << \global \soloMusic >>
         }
       >>
       \new Lyrics = "solo"

       \context Lyrics = "solo" \lyricsto "solo" \soloWords
     >>
    \new PianoStaff {
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "P."
      <<
        \context Staff = "rightHand" {
          <<
            \accidentalStyle voice
            \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine \global \new Voice = "rightHandUp" {
              \voiceOne \rightHandUp
            }
            \partcombine \global \new Voice = "rightHandDown" {
              \voiceTwo \rightHandDown
            }
          >>
        }
        \context Staff = "leftHand" {
          <<
            \accidentalStyle voice
            \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine \global \new Voice = "leftHandUp" {
              \voiceOne \leftHandUp
            }
            \partcombine \global \new Voice = "leftHandDown" {
              \voiceTwo \leftHandDown
            }
          >>
        }
      >>
    }
 >>
}
