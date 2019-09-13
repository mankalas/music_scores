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

% Rehearsal MIDI files:
 \book {
   \bookOutputSuffix "soprano1"
   \score {
     \rehearsalMidi "soprano1" "soprano sax" \verseSopranoOne
     \midi { }
   }
 }

 \book {
   \bookOutputSuffix "soprano2"
   \score {
     \rehearsalMidi "soprano2" "soprano sax" \verseSopranoTwo
     \midi { }
   }
 }

 \book {
   \bookOutputSuffix "alto"
   \score {
     \rehearsalMidi "alto" "soprano sax" \verseAlto
     \midi { }
   }
 }

 \book {
   \bookOutputSuffix "tenor1"
   \score {
     \rehearsalMidi "tenor1" "tenor sax" \verseTenorOne
     \midi { }
   }
 }

 \book {
   \bookOutputSuffix "tenor2"
   \score {
     \rehearsalMidi "tenor2" "tenor sax" \verseTenorTwo
     \midi { }
   }
 }

 \book {
   \bookOutputSuffix "bass"
   \score {
     \rehearsalMidi "bass" "tenor sax" \verseBass
     \midi { }
   }
 }