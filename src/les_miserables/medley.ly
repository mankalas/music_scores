\version "2.18.2"
\language "english"

\header {
  title = ""
}

global = {
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % Permit first bar number to be printed
  \bar ""
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)

  \time 4/4
  \numericTimeSignature
  \key f \minor
  \tempo "Moderato Maestroso" 4=80

  s1 * 6

  \time 2/4

  s2 \mark \markup { \musicglyph #"scripts.ufermata" }

  \time 12/8
  \tempo "Allegro" 4=132

  s1. * 2 | \barNumberCheck #10
  s1. * 8 | \barNumberCheck #18
  
  \time 6/8
  
  s2.
  
  \time 12/8
  
  s1. * 9
  
  \time 6/8
  
  s2. 
  
  \time 12/8
  
  s1. 
  
  \bar "||"
  
  \key f \major
  
  s1. * 8 
  
  \time 6/8
  
  s2.
  
  \time 12/8
  
  s1.
  
  \time 6/8
  
  s2.
  
  \time 12/8
  
  s1. * 4 \mark \markup { \musicglyph #"scripts.ufermata" } | \barNumberCheck #45
  
  \bar "||"

}

sopranoOne = \relative c'' {
  \override NoteColumn.ignore-collision = ##t
  
  r1 |
  r2 af~^\f( |
  af g~ |
  g f~ |
  f) ef~( |
  ef df) |
  bf'^\fermata^\markup { \italic { molto rit. } } |
  af1.~ |
  af2.~ af4. r \mark | \barNumberCheck #10
  r8^\markup { \hspace #1
    \column {
      \line { \caps "At the end of the day" }
      \line { Lyrics by Herbert Kretzmer }
      \line { Original Text by Alain Boublil & Jean-Marc Natel }
      \line { Music by Claude-Michel Shonberg }
    }
  } f\f g af bf c c bf af af g f |
  g f4 r4. r2. |
  r8 f g af bf c c bf af af g f |
  f4. r r r8 af bf |
  c4 c8~ c bf af bf4. r8 af bf |
  c c c c bf af bf4 bf8 r af bf |
  c4 c8~ c bf af bf4. bf8 af g |
  f4. r r2. | \barNumberCheck #18
  r8 f f f af g | \barNumberCheck #19
  g8 f4 r4. r2. | \barNumberCheck #20
  r8 f g af bf c c bf af af g f |
  g8 f4 r4. r2. |
  r8 f g af bf c c bf af af g f |
  f4. r r r8 f g |
  c4 c8~ c bf af bf4. r8 af bf |
  c4 c8 c bf af bf4 bf8 r af bf |
  c c c c bf af bf4. bf8 af g |
  f4. r r2. |
  r8 f f f af g |
  g f4 r4. r2. | \barNumberCheck #30
  r8 f g a bf c c bf a a g f |
  g4 f8 r4. r2. |
  r8 f g a bf c c bf a a g f |
  f4. r r r8 f g |
  a4 f'8~ f f f e4. c4 c8 |
  c c c c bf a c4 c8 r4. |
  df4. gf f df |
  df gf f4 r8 r4 df8 |
  ef4 ef8 ef( df) c |
  e2.^\< ( g^\f) |
  r8 bf, bf bf af g |
  f4. r r2. |
  r1. | r1. | r1. | \barNumberCheck #45
  
  
}

sopranoTwo = \relative c'' {
  \tieDown

  s1 |
  s2 af~( |
  af g~ |
  g f~ |
  f) ef~( |
  ef df) |
  f |
  f1.~ |
  f2.~ f4. s |
}

alto = \relative c' {
  c4

}

verseSopranoOne = \lyricmode {
  Ah __ Ah __ Ah Ah. __
  At the end of the day you're an -- o -- ther day ol -- der
  and that's all you can say for the life of the poor.
  It's a strug -- gle, __ it's a war
  and there's no -- thing that a -- ny one's gi -- ving, one more day stand -- ing a -- bout, what is it for?
  One day less to be li -- ving.
  At the end of the day you're a -- no -- nther day col -- der
  and the shirt on your back does -- n't keep out the chill.
  And the right -- eous __ hur -- ry past, they don't hear the lit -- le ones cry -- ing, and the win -- ter is com -- ing on fast, rea -- dy to kill,
  one day near -- er to dy -- ing.
  At the end of the day there's an -- o -- ther day dawn -- ing,
  and the sun in the mor -- ning is wai -- ting to rise.
  Like the waves' crash __ on the sand,
  like a storm that -- 'll break a -- ny se -- cond.
  There's a hun -- ger in the land,
  it's us who'll have __ to pay __
  at the en of the day.
  

}

verseSopranoTwo = \lyricmode {
  \set stanza = "S2"
  ho

}

verseAlto = \lyricmode {
  \set stanza = "A"
  hu

}

rightHandUp = \relative c'' {
  a
}

rightHandDown = \relative c'' {
  a
}

leftHandUp = \relative c'' {
  b
}

leftHandDown = \relative c'' {
  a
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "sopranos" <<
        \set Staff.instrumentName = "Sop 1 & 2"
        \set Staff.shortInstrumentName = "S."
        \context Staff <<
          \new Voice = "soprano1" { << \global { \voiceOne \sopranoOne } >> }
          \new Voice = "soprano2" { << \global { \voiceOne \sopranoTwo } >> }
        >>
      >>
      % \new Staff = "alto" <<
%         \set Staff.instrumentName = "Alto"
%         \set Staff.shortInstrumentName = "A."
%         \context Staff <<
%           \new Voice = "alto" { << \global { \voiceOne \alto } >> }
%         >>
%       >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseSopranoOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano2" \verseSopranoTwo
      % \new Lyrics \with {
%         \override VerticalAxisGroup #'staff-affinity = #CENTER
%       } \lyricsto "alto" \verseAlto
      % \new PianoStaff <<
%         \set PianoStaff.instrumentName = "Piano"
%         \set PianoStaff.shortInstrumentName = "P."
%         <<
%           \context Staff = "rightHand" {
%             <<
%               \set Staff.printPartCombineTexts = ##f
%               \partcombine
%               \new Voice = "rightHandUp" {
%                 << \global \voiceOne \rightHandUp >>
%               }
%               \new Voice = "rightHandDown" {
%                 << \global \voiceTwo \rightHandDown >>
%               }
%             >>
%           }
%           \context Staff = "leftHand" {
%             \clef bass
%             <<
%               \set Staff.printPartCombineTexts = ##f
%               \partcombine
%               \new Voice = "leftHandUp" {
%                 \leftHandUp
%               }
%               \new Voice = "leftHandDown" {
%                 \voiceTwo \leftHandDown
%               }
%             >>
%           }
%         >>
%       >>
%     >>
    >>
  >>
  \layout { }
  \midi { }
}
