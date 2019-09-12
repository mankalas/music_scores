\version "2.18.2"
\language "english"

global = {
  \key g \major
  \time 12/8
  \tempo "L'istesso tempo" 4=60
}

\include "santuzza.ly"
\include "lucia.ly"
\include "soprano_one.ly"
\include "soprano_two.ly"
\include "alto.ly"
\include "tenor_one.ly"
\include "tenor_two.ly"
\include "bass_one.ly"
\include "bass_two.ly"

%\include "rehearsal_midi.ly"

\score {
  <<
    \new StaffGroup <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Santuzza"
        shortInstrumentName = "San."
      } \new Voice = "santuzza" \santuzza
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "santuzza" \verseSantuzza
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Lucia"
        shortInstrumentName = "Lu."
      } \new Voice = "lucia" \lucia
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "lucia" \verseLucia
    >>
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano I"
        shortInstrumentName = "S1"
      } \new Voice = "soprano1" \sopranoOne
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano1" \verseSopranoOne
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Soprano II"
        shortInstrumentName = "S2"
      } \new Voice = "soprano2" \sopranoTwo
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano2" \verseSopranoTwo
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } \new Voice = "alto" \alto
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "alto" \verseAlto
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor I"
        shortInstrumentName = "T1"
      } {
        \clef "treble_8"
        \new Voice = "tenor1" \tenorOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor1" \verseTenorOne
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Tenor II"
        shortInstrumentName = "T2"
      } {
        \clef "treble_8"
        \new Voice = "tenor2" \tenorTwo
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor2" \verseTenorTwo
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } {
        \clef bass
        \new Voice = "bass1" \bassOne
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass1" \verseBassOne
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
  % \midi {
  %     \tempo 4=100
  %   }
}
