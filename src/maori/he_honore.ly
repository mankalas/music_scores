\version "2.19.83"
\language "english"

\header {
  title = "He Hōnore"
}

\paper {
  oddFooterMarkup = \markup {}
  evenFooterMarkup = \oddFooterMarkup
}

global = {
  \key g \major
  \time 4/4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  \partial 8 g8 |
  g4. d8 d4. g16 g |
  a4.  b8 b4 r8 b8 |
  \tuplet 3/2 { c4 b a } \tuplet 3/2 { fs g a }
  g2. r8 g |
  g4. d8 d2 |
  a'4.( b8) b4 r8 b8 |
  \tuplet 3/2 { c4 b a } \tuplet 3/2 { fs g a } |
  g2. r8 b16 c |
  d4.( g,8) g4 r8 b16 c |
  d4.( g,8) g4. r8 |
  c4( b a) g |
  a2. r8 b16 c |
  d4.( g,8) g4 r8 b16 c |
  d4.( g,8) g4. r8 |
  c4 b a4. g8 |
  g1 |
  c4 b a4. g8 |
  g1
  
  \bar "|."
}

alto = \relative c'' {
  \global
  % Music follows here.
  \partial 8 g8 |
  g4. d8 d4. d16 d |
  d4. d8 d4 r8 d |
  \tuplet 3/2 { e4 d c } \tuplet 3/2 { d e d } |
  d2. r8 g8 |
  g4. d8 d2 |
  d4.( d8) d4 r8 d8 |
  \tuplet 3/2 { e4 d c } \tuplet 3/2 { d e d } |
  d2. r8 g16 g |
  fs4.( g8) g4 r8 g16 g |
  fs4.( g8) g4. r8 |
  e4( d e) d |
  d2. r8 g16 g |
  fs4.( g8) g4 r8 g16 g |
  fs4.( g8) g4. r8 |
  e4 d d( c8) b |
  b1 |
  e4 d d( c8) b |
  b1
  
  \bar "|."
}

tenor = \relative c' {
  \global
  % Music follows here.
  \partial 8 g8 |
  g4. d8 d4. g16 g |
  fs4. g8 g4 r8 g8 |
  \tuplet 3/2 { a4 g fs } \tuplet 3/2 { a b c } |
  b2. r8 g8 |
  g4. d8 d2 | 
  fs4.( g8) g4 r8 g8 |
  \tuplet 3/2 { a4 g fs } \tuplet 3/2 { a b c } |
  b2. r8 b16 b |
  a4.( b8) b4 r8 b16 b |
  a4.( b8) b4. r8 |
  c4( d c) b |
  c2. r8 b16 b |
  a4.( b8) b4 r8 b16 b |
  a4.( b8) b4. r8 |
  g4 g fs4. g8 |
  g1 |
  g4 g4 fs4. g8 |
  g1
  
  \bar "|."
}

bass = \relative c'  {
  \global
  % Music follows here.
  \partial 8 g8 |
  g4. d8 d4. d16 d |
  c4. b8 b4 r8 b8 |
  \tuplet 3/2 { a4 b c } \tuplet 3/2 { d e fs } |
  g2. r8 g8 |
  g4. d8 d2 |
  c4.( b8) b4 r8 b8 |
  \tuplet 3/2 { a4 b c } \tuplet 3/2 { d e fs } |
  g2. r8 g16 g |
  d4.( g8) g4 r8 g16 g |
  d4.( g8) g4. r8 |
  c,4( g' a) g |
  fs2. r8 g16 g |
  d4.( g8) g4 r8 g16 g |
  d4.( g8) g4. r8 |
  c,4 g'4 d4. d8 |
  g1 |
  c,4 g'4 d4. d8 |
  g,1
}

verse = \lyricmode {
  % Lyrics follow here.
  He hō -- no -- re, he -- ko -- rō -- ri -- a
  Mau -- ngā -- ro -- ngo ki te whe -- nua
  Wha -- ka -- a -- ro pai __ e
  Ki ngā ta -- nga -- ta ka -- to -- a
  A -- ke a -- ke, a -- ke a -- ke
  Ā -- mi -- ne
  Te A -- tu -- a, te pi -- ri -- nga,
  To -- ku o -- ra -- nga
  To -- ku o -- ra -- nga
}

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
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
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Soprano" "Alto" }
      \consists "Merge_rests_engraver"      
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { "Tenor" "Bass" }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
  }
  \midi {
    \tempo 4=100
  }
}

% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}

