\version "2.18.2"
\language "english"

\header {
  title = ""
}

global = {
  \override Rest #'staff-position = #0 
  \override NoteColumn.ignore-collision = ##t
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
  s1.^\markup { \hspace #1
               \column {
                 \line { \caps "At the end of the day" }
                 \line { Lyrics by Herbert Kretzmer }
                 \line { Original Text by Alain Boublil & Jean-Marc Natel }
                 \line { Music by Claude-Michel Schonberg }
               }
  }  
  s1. * 7 | \barNumberCheck #18

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

  \bar "||" \barNumberCheck #45
  \key c \minor
  \time 4/4
  \tempo Andante 4=72
  
  s1 * 4 |
  
  \time 3/4 
  s2.
  
  \time 2/4
  s2
  
  \time 4/4
  
  s1 * 7
  
  \bar "||" \barNumberCheck #58
  s1^\markup { \hspace #1
               \column {
                 \line { \caps "I dreamed a dream" }
                 \line { Lyrics by Herbert Kretzmer }
                 \line { Original Text by Alain Boublil & Jean-Marc Natel }
                 \line { Music by Claude-Michel Schonberg }
               }
  }
  
  s1 * 29
  
  \bar "||" \barNumberCheck #88
  \key f \major
  s1 * 19
  
  \bar "||"
  \tempo "Lento" 4=56-60
  \key a \minor
  \barNumberCheck #107
  s1 * 2 
  
  \time 2/4
  s2
   
   \repeat volta 2 {
     \time 3/4 s2.^\markup { \hspace #1
                   \column {
                     \line { \caps "Castle on a cloud" }
                     \line { Lyrics by Herbert Kretzmer }
                     \line { Original Text by Alain Boublil & Jean-Marc Natel }
                     \line { Music by Claude-Michel Schonberg }
                   }
     }
     \time 2/4 s2
     \time 3/4 s2.
     \time 2/4 s2
     \time 3/4 s2.
     \time 2/4 s2
     \time 3/4 s2.
   }
     \alternative {
       { \time 2/4 s2 }
       { \time 2/4 s2 }
     }
   
  
  \time 4/4
  \barNumberCheck #119
  s1 * 4
  
  \barNumberCheck #123
  \repeat unfold 3 {
  \time 3/4 s2.
  \time 2/4 s2
  }
  
  \time 3/4 s2.
  
  \time 4/4
  \tempo "Moderate March Tempo" 4=84
  s1 * 2
  \key f \major
  \barNumberCheck #132
  s1^\markup  { \hspace #1
               \column {
                 \line { \caps "Do you hear the people sing?" }
                 \line { Lyrics by Herbert Kretzmer }
                 \line { Original Text by Alain Boublil & Jean-Marc Natel }
                 \line { Music by Claude-Michel Schonberg }
               }
  }
  s1 * 9
  
  \bar "||"
  \key a \minor
  \barNumberCheck #142
  s1 * 13
  
  \time 5/4
  \repeat unfold 4 { s2. s2 }
  \mark \markup { \musicglyph #"scripts.ufermata" }
  
  \bar "||"
  \barNumberCheck #159
  \key c \major
  \tempo "Moderato" 4=60
  \time 4/4
  s1^\markup  { \hspace #1
               \column {
                 \line { \caps "On my own" }
                 \line { Lyrics by Alain Boublil, Herbert Kretzmer }
                 \line { John Caird, Trevor Nunn & Jean-Marc Natel }
                 \line { Music by Claude-Michel Schonberg }
               }
  }
  s1 * 6
  
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1 * 6
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 r1
  
  \bar "||"
  \barNumberCheck #177
  \key f \major
  s1 * 13
  
  \time 2/4 s2
  \time 3/4 s2. 
  \time 4/4 s1
  \tempo "A bit slower"
  \barNumberCheck #193
  s1 * 3
  
  \tempo "Andante" 4=92
  s1 * 3
  
  \time 6/4 s1.
  \time 4/4
  \barNumberCheck #200
  s1^\markup  { \hspace #1
               \column {
                 \line { \caps "Bring him home" }
                 \line { Lyrics by Herbert Kretzmer & Alain Boublil }
                 \line { Music by Claude-Michel Schonberg }
               }
  }
  s1 * 25 |
  
  \tempo "Slowly" 4=56
  \barNumberCheck #226
  s1 * 2
  
  \tempo "a tempo"
  s1^\markup { \caps { "Finale" } }
  s1 * 4
  
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1 * 6
  \time 2/4 s2
  \time 3/4 s2.
  \time 4/4 s1 * 6
  \time 2/4 s2
  \time 3/4 s2. 
  \time 4/4 s1
  
  \bar "||"
  \key d \minor
  \tempo "Moderato" 4=72-76
  s1 * 35 
  
  \bar "|."
}

sopranoOne = << \global \relative c'' { 
  \override NoteColumn.ignore-collision = ##t
  
  \set Score.skipTypesetting = ##t
  r1 |
  r2 af~^\f( |
  af g~ |
  g f~ |
  f) ef~( |
  ef df) |

  % \time 2/4
  bf'^\fermata^\markup { \hspace #3 \italic { molto rit. } } |

  % \time 12/8
  af1.~ |
  af2.~ af4. r \mark | \barNumberCheck #10
  r8 f\f g af bf c c bf af af g f |
  g f4 r4. r2. |
  r8 f g af bf c c bf af af g f |
  f4. r r r8 af bf |
  c4 c8~ c bf af bf4. r8 af bf |
  c c c c bf af bf4 bf8 r af bf |
  c4 c8~ c bf af bf4. bf8 af g |
  f4. r r2. | \barNumberCheck #18

  %\time 6/8
  r8 f f f af g | \barNumberCheck #19

  %\time 12/8
  g8 f4 r4. r2. | \barNumberCheck #20
  r8 f g af bf c c bf af af g f |
  g8 f4 r4. r2. |
  r8 f g af bf c c bf af af g f |
  f4. r r r8 f g |
  c4 c8~ c bf af bf4. r8 af bf |
  c4 c8 c bf af bf4 bf8 r af bf |
  c c c c bf af bf4. bf8 af g |
  f4. r r2. |

  %\time 6/8
  r8 f f f af g |

  %\time 12/8
  g f4 r4. r2. | \barNumberCheck #30
  r8 f g a bf c c bf a a g f |
  g4 f8 r4. r2. |
  r8 f g a bf c c bf a a g f |
  f4. r r r8 f g |
  a4 f'8~ f f f e4. c4 c8 |
  c c c c bf a c4 c8 r4. |
  df4. gf f df |
  df gf f4 r8 r4 df8 |

  %\time 6/8
  ef4 ef8 ef( df) c |

  %\time 12/8
  e2.^\< ( g^\f) |

  %\time 6/8
  r8 bf, bf bf af g |

  %\time 12/8
  f4. r r2. |
  r1. | r1. | r1. | \barNumberCheck #45
  
  R1 * 4 |
  % \time 3/4
  r4 ef8 ef16 ef ef8. ef16 |
  
  % \time 2/4
  ef8 ef ef4 |
  
  % \time 4/4
  \tuplet 3/2 {r8 ef ef} \tuplet 3/2 {ef ef ef} ef4 r |
  r8 ef16 ef ef8. ef16 ef8 ef4. |
  r16 ef ef ef ef8. ef16 ef8. ef16 ef4 |
  r8 ef16 ef ef8 ef16 ef ef4 r |
  r8 ef16 ef ef8 ef16 ef ef8 ef4 r8 |
  r16 ef ef ef ef4 r8 ef16 ef g8. ef16 |
  ef2 r |
  
  r1 * 3 |
  r8. ef16 ef8. ef16 ef8. d16 ef8 f |
  g2. r4 |
  r8. ef16 ef8. ef16 ef8. ef16 f8 g |
  c,8 ef4. r2 |
  r8. g16 g8. g16 g8. ef16 g8. af16 |
  bf2. r4 |
  r8. g16 g8. g16 g8. g16 af8 bf8 |
  c,8 ef4. r2 | \barNumberCheck #69
  r1 |
  r4 f8.^\mf g16 af8. bf16 c8 af |
  g4 e8. f16 g8. e16 c8 bf |
  a8 f'4.~ f4 r |
  r1 | r1 |
  r4 d8. ef16 f8. ef16 d8. f16 |
  ef2( f^\cresc g af |
  bf2.^\mf) r4 | \barNumberCheck #79
  r8. ef,16^\mp ef8. ef16 ef8. d16 ef8 f |
  g1 |
  r8. ef16 ef8. ef16 ef8. ef16 f8 g |
  c,8 ef4. r2 |
  r8. g16 g8. g16 g8 f g af |
  bf1 |
  r8. g16 g8 g g8. f16 f8 ef |
  ef2. r4 |
  r1 | \barNumberCheck #88
  r8. f16 f8. f16 f8. e16 f8. g16 |
  a1 |
  r8. f16 f8. f16 f8. f16 g8. a16 |
  d,8 f4.~ f4 r |
  r8. a16 a8. a16 a8. g16 a8 bf |
  c1 |
  r8. a16 a8. a16 a8. a16 bf8 c |
  d,8  f4.~ f4 r |
  r1 |
  r4 \tuplet 3/2 {a8^\f a a} bf8. a16 g8 a |
  f2. r4 |
  r8 bf bf bf bf8. a16 g8 c |
  a16( g) f8~ f16 a a a a8.^\cresc g16 a8 bf |
  c2.^\ff r4^"rit." |
  r8. a16^\mp a8. a16 a8. g16 g8^\fermata f |
  f1^"a tempo" |
  r | r^\fermata | r^\fermata |
  r | r |
  
  r2 |
  a8^\mf b16 c b8 a a gs | 
  a4 r |
  a8 b16 c b8 a g! f |
  e4 r |
  d8 e16 f e8 a b c |
  b4 r |
  d,8 e16 f e8 d c b |
  a4 r | % alternative 1
  a4 r | % alternative 2
  \barNumberCheck #119
  f'8^\mf e16 d c8. d16 e8. f16 e8( c) | 
  a'8 g16 f e8. f16 g8. a16 g8 r16 g16 |
  bf8. a16 g8 f16 g a8. f16 c8. d16 |
  e8 r16 f^"rall." e8 r16 f e f e f e4^\fermata | \barNumberCheck #123
  
  % \time 3/4
  a8 b16 c b8 a a gs |
  a4 r |
  a8 b16 c b8 a g! f |
  e4 r |
  d8 e16 f e8 a b c |
  a4 r |
  d,8 e16 f^"rall." e8 d c b |
  a2. r4 |
  r1 | \barNumberCheck #132 
  r1 |
  \set Score.skipTypesetting = ##f
  r2 r4 a'8.^\mf g16 |
  f8. g16 a8. bf16  c4 \tuplet 3/2 { a8 g f } |
  e8. d16 e8. f16 c4 \tuplet 3/2 { d8 c bf } |
  a8. c16 f8. a16 g8. fs16 g8. d16 |
  f!8. e16 e8. f16 g4  a8. g16 |
  f8. g16 a8. bf16 c4 \tuplet 3/2 { a8 g f } |
  e8. d16 e8. f16 c4 \tuplet 3/2 { d8 c bf } |
  a8. c16 f8. a16 \tuplet 3/2 { g8 fs g } bf8. e,16 |
  f!4 r r e8.^\mf e16 |
  a8. gs16 a8. b16 c8. b16 a8. c16 |
  b8. a16 g!8. a16 b4 \tuplet 3/2 { r4 c8 } |
  d8. c16 b8. c16 d8. c16 b8. d16 |
  c8. b16 a8. b16 c4 r8. a16^\mf |
  \repeat unfold 3 { \tuplet 3/2 { c8 b a } } \tuplet 3/2 {c b c} |
  d2 r4 e8.^\f d16 |
  c8. d16 e8. f16 g4  \tuplet 3/2 { e8 d c } |
  b8. a16 b8. c16 g4 \tuplet 3/2 { a8 g f } |
  e8. g16 c8. e16 d8. cs16 d8. a16 
  \set Score.skipTypesetting = ##t
} 
>>

sopranoTwo = << \global \relative c'' {
  s1 |
  s2 af~( |
  af g~ |
  g f~ |
  f) ef~( |
  ef df) |
  f |
  f1.~ |
  f2.~ f4. s |
  s8 f g
} >>

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
  at the end of the day.
  There was a time when men were kind, 
  when their voic -- es were soft
  and their words in -- vit -- ing.
  There was a time when love was blind
  and the world was a song
  and the song was ex -- cit -- ing.
  There was a time. Then it all went wrong.
  I dreamed a dream in time gone by
  when hope was high and life worth liv -- ing.
  I dreamed that love would nev -- er die,
  I dreamed that God would be for -- giv -- ing.
  But the ti -- gers come at night
  with their voic -- es soft as thun -- der __
  as they tear your dreams to shame. __
  He slept a sum -- mer by my side,
  he filled my days with end -- less won -- der.
  He took my child -- hood in his stride,
  but he was gone when au -- tumn came.
  And still I dreamed he'd come to me,
  that we would live the years to -- geth -- er __
  but there are dreams that can -- not be 
  and there are storms we can -- not weath -- er. __
  I had a dream my life would be
  so dif -- f'rent from this hell I'm li -- ving,__
  so dif -- f'rent new from what it seemed;
  Now life has killed the dream I dreamed.
  
  << { There is a cas -- tle on a cloud.
  I like to go there in my sleep.
  Aren't a -- ny floors for me to sweep,
  not in my cas -- tle on a cloud. }
     \new Lyrics {
       \set associatedVoice = "sopranoOne"
        There is a room that's full of toys.
        There are a hun -- dred boys and girls.
        No -- bod -- y shouts or talks too loud,
        not in my cas -- tle on a.
     }
  >>
  cloud.
  There is a la -- dy all in white, __ 
  holds me and sings a lul -- la -- by.
  She's nice to see and soft to touch. 
  She says, "\"Co -- sette, I love you ve -- ry much.\""
}

verseSopranoTwo = \lyricmode {
  ho

}

verseAlto = \lyricmode {
  \set stanza = "A"
  hu

}

rightHandUp = \relative c'' {
  \stemDown
  \repeat unfold 25 { <af af'>16( f' ef c) }
  <af af'>16^-( f'^- ef^- c^-\fermata)
  \stemNeutral
  <af' af'>1.~ |
  <af af'> | \barNumberCheck #10
}

rightHandDown = \relative c'' {
  s
}

leftHandUp = \relative c {
  b
}

leftHandDown = \relative c {
  a
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "soprano" <<
        \set Staff.instrumentName = "Sop 1 & 2"
        \set Staff.shortInstrumentName = "S."
        \set Staff.aDueText = #"Unis."
        % \consists #"Merge_rests_engraver"
        \new Voice = "sopranoOne" { \sopranoOne }
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
      } \lyricsto "sopranoOne" \verseSopranoOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "sopranoTwo" \verseSopranoTwo
      % \new Lyrics \with {
      %         \override VerticalAxisGroup #'staff-affinity = #CENTER
      %       } \lyricsto "alto" \verseAlto
    >>
    % \new PianoStaff <<
%       \set PianoStaff.instrumentName = "Piano"
%       \set PianoStaff.shortInstrumentName = "P."
%       <<
%         \context Staff = "rightHand" {
%           <<
%             \set Staff.printPartCombineTexts = ##f
%             \partcombine
%             \new Voice = "rightHandUp" { \rightHandUp }
%             \new Voice = "rightHandDown" { \rightHandDown }
%             
%           >>
%         }
%         \context Staff = "leftHand" {
%           \clef bass
%           <<
%             \set Staff.printPartCombineTexts = ##f
%             \partcombine
%             \new Voice = "leftHandUp" {
%               \leftHandUp
%             }
%             \new Voice = "leftHandDown" {
%               \voiceTwo \leftHandDown
%             }
%           >>
%         }
%       >>
%     >>
  >>
  \layout { }
  %\midi { }
}
