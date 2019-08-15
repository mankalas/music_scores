\version "2.18.2"
\language "english"

% first, define a variable to hold the formatted date:
date = #(strftime "%d-%m-%Y" (localtime (current-time)))

%% additional definitions required by the score:
otherdynamics = #(make-dynamic-script "other-dynamics")

\header {
  encodingdate = \date
  title = "A Policeman's Lot Is Not A Happy One"
  composer = "Gilbert & Sullivan"
  piece = "Pirates of Penzance"
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
  oddFooterMarkup = \markup {}
  evenFooterMarkup = \oddFooterMarkup
}


global = {
  \key f \major
  \time 4/4
  \tempo "Allegro moderatro"

  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  % Permit first bar number to be printed
  \bar ""
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 2)

  \partial 4 s4 |

  \repeat volta 24 s1 * 24 |

  s1 * 4

  \bar "|."
}

sergeantMusicOne = \relative f {
  \clef bass
  \autoBeamOff
  \key f \major
  \override NoteColumn.ignore-collision = ##t

  r4 | r1 | r1 | r1 |
  r2 r4 f8 g |
  a c bf a g bf a g |
  f e r4 r c8 c |
  d cs d d g a g f |
  e4 r r \stemUp f8 g \stemNeutral |
  a c bf a g bf a g |
  f e r4 r c4 |
  d8 e f bf a f g e |
  f4 r r \stemUp g \stemNeutral |
  g8 f e f g a b c |
  c b r4 r \stemUp f8 f \stemNeutral |
  f e f e f a g f |
  e4 r r g8 g |
  g f e f g a b c |
  b a r4 r a8 a |
  g a g e f g f d |
  c4 r r c8 c |
  a' c bf a g bf a g |
  f4 f8 a c,4 c8 c |
  d e f bf a f g e |
  f4 f,8 f f4 r |
}

sergeantWordsOne = \lyricmode {

  When a fel -- on's not en -- gaged in his em -- ploy -- ment __
  Or ma -- tu -- ring his fe -- lo -- nious lit -- tle plans __
  His ca -- pa -- ci -- ty for in -- no -- cent en -- joy -- ment __
  Is just as great as a -- ny hon -- est man's __
  Our fee -- lings we with dif -- fi -- cul -- ty smo -- ther __
  When con -- sta -- bu -- la -- ry du -- ty's to be done, __
  Ah, take one con -- si -- der -- a -- tion with an -- o -- ther__
  A po -- lice -- man's lot is not a hap -- py one.
  When con -- sta -- bu -- la -- ry du -- ty's to be done, __ to be done,
  A po -- lice -- man's lot is not a hap -- py one, __ hap -- py one.
}

sergeantMusicTwo = \relative f {
  \clef bass
  \key f \major
  \autoBeamOff

  s4 | s1 | s1 | s1 |
  s2 s4 f8 g |
  a c bf a g bf a g |
  f e s4 s c8 c |
  d cs d d g a g f |
  e4 s s f8[ g] |
  a c bf a g bf a g |
  f e s4 s c4 |
  d8 e f bf a f g e |
  f4 s s g8 g |
  g8 f e f g a b c |
  c b s4 s \stemDown f4 \stemNeutral |
  f8 e f e f a g f |
  e4 s s g8 g |
  g f e f g a b c |
  b a s4 s a8 a |
  g a g e f g f d |
  c4 s s c8 c |
  a' c bf a g bf a g |
  f4 f8 a c,4 c8 c |
  d e f bf a f g e |
  f4 f,8 f f4 s |
  R1 * 4
}

sergeantWordsTwo = \lyricmode {

  When the en -- ter -- pri -- sing bur -- glar's not a bur -- gling __
  When the cut -- throat is -- n't oc -- cu -- pied in crime __
  He __ loves to head the lit -- tle brook a -- gurg -- ling __
  And lis -- ten to the mer -- ry vil -- lage chime __
  When the cos -- ter's fin -- ished jump -- ing on his mo -- ther __
  He loves to lie a -- bask -- ing in the sun, __

}

chorusMusic = \relative f {
  \clef bass
  \autoBeamOff
  \key f \major

  r4 | r1 | r1 | r1 | r1 | r1 |
  r4 f8^\p a c, c r4 |
  r1 |
  r4 c8 c c4 r |
  r1 |
  r4 f8 a c, c r4 |
  r1 |
  r4 f8 f f4 r |
  r1 |
  r4 d8 e f f r4 |
  r1 |
  r4 e8 e e4 r |
  r1 |
  r4 a8 gs b a r4 |
  r1 |
  r4 bf!2 c,8 c |
  a' c bf a g bf a g |
  f4 f8 a c,4 c8 c |
  d e f bf a f g e |
  f4 f,8 f f4 r |
  R1 * 4
}

chorusWords = \lyricmode {


  <<
    {
      his em -- ploy -- ment,
      lit -- tle plans,
      -cent en -- joy -- ment,
      ho -- nest man's.
      -cul -- ty smo -- ther,
      to be done.
      with a -- no -- ther,
      Ah, when con -- sta -- bu -- la -- ry du -- ty's to be done, __ to be done,
      A po -- lice -- man's lot is not a hap -- py one, __ hap -- py one.
    } \new Lyrics {
      \set associatedVoice = "chorusMusic"

      not a bur -- gling,
      -pied in crime,
      brook a -- gurg -- ling,
      vil -- lage chime.
      on his mo -- ther,
      in the sun.
    }
  >>

}

rightHandUp = \relative f' {
  \clef treble
  \key f \major

  \partial 4 <f f'>8\p e' |
  <f, d'> f' <f, bf> d <f c'> f' <f, a> c' |
  <f, bf> d' <g, c> bf <f a>4 <f c>8 e |
  d8 e <f d> bf <c, a'> f <g bf,> e |
  <f c a>4 r r2 |
  r4 <f c a> r <e c bf> |
  r <f c a> r <c f,> |
  r <d bf f> r <d g,> |
  r <e c g> r2 |
  r4 <f c a> r <e c bf> |
  r <f c a> r <c f,> |
  <d f,>8 r <bf' f d> r <a f c> r <g e bf> r |
  <f a,>4 r r2 |
  r4 <e c g> r <e c g> |
  r <f b, g> r <f b, g> |
  r <f d g,> r <f b, g> |
  r <e c g> r <e c g> |
  r <g c, g> r <g c, g> |
  r <a f c> r <a ef c> |
  <g e! c> r <f b, g> r |
  <e c g> r r2 |
  r4 <f c a> r <e c bf> |
  r <f a,> r <c f,> |
  <d f,>8 r <bf' f d> r <a f c> r <g e bf> r |
  <f a,>4 r r <f f'>8\p e' |
  <f, d'> f' <f, bf> d' <f, c'> f' <f, a> c' |
  <f, bf> d' <c e,> bf <f a>4 <f c>8 e |
  d e <f d> bf <a c,> f <g bf,> e |
  <f a,>4 r2 r4 |
}

leftHandUp = \relative f {
  \clef bass
  \key f \major

  <a c>8 r |
  <bf d> r <g bf> r <a c> r <f c'> r |
  <g bf> r <e c'> r <f c'> r <f a,> r |
  <f bf,> r g, r c r c r |
  f r c r f, r r4 |
  <f' f,> r <c c,> r |
  <f f,> r <a, a,> r |
  <bf bf,> r <b b,> r |
  <c c,> r <c c,> r |
  <f f,> r <c c,> r |
  <f f,> r <a, a,> r |
  <bf bf,>8 r <g g,> r <c c,> r <c c,> r |
  <f f,>4 r r2 |
  <c c,>4 r g r |
  <d' d,> r g, r |
  <b b,> r g r |
  <c c,> r <c c,> r |
  <e e,> r <e e,> r |
  <f f,> r <fs fs,> r |
  <g g,> r <g, g,> r |
  <c c,> r r2 |
  <f f,>4 r <c c,> r |
  <d d,> r <a a,> r |
  <bf bf,>8 r <g g,> r <c c,> r <c c,> r |
  <f, f,>4 r r <a' c>8 r |
  <bf d> r <g bf> r <a c> r <f c'> r |
  <g bf> r <c, c'> r <f c'> r <f a,> r |
  <f bf,> r g, r c r <c c,> r |
  <f f,>4 \stemUp f f r |
}

leftHandDown = \relative f {

  s4 | s1 * 27 |
  s4 <f, f,> <f f,> s |

}

\score {
  <<
    \new Staff = "sergeant" <<
      \set Staff.instrumentName = "Sergeant"
      \set Staff.shortInstrumentName = "S."
      \context Staff <<
        \partcombine \new Voice = "sergeantVoiceOne" {
          \sergeantMusicOne
        }
        \new Voice = "sergeantVoiceTwo" {
          \sergeantMusicTwo
        }
        \new Lyrics \lyricsto "sergeantVoiceOne" \sergeantWordsOne
        \new Lyrics \lyricsto "sergeantVoiceTwo" \sergeantWordsTwo
      >>
    >>
    \new ChoirStaff <<
      \override ChoirStaff.SystemStartBracket.collapse-height = #4
      \new Staff = "chorus" <<
        \set Staff.instrumentName = "Chorus"
        \set Staff.shortInstrumentName = "Ch."
        \context Staff <<
          \context Voice = "chorusVoice" { << \global \chorusMusic >> }
          \new Lyrics \lyricsto "chorusVoice" \chorusWords
        >>
      >>
    >>
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "P."
      <<
        \context Staff = "rightHand" {
          <<
            \new Voice = "rightHandUp" {
              \rightHandUp
            }
          >>
        }
        \context Staff = "leftHand" {
          <<
            \set Staff.printPartCombineTexts = ##f
            \partcombine \new Voice = "leftHandUp" {
              \leftHandUp
            }
            \new Voice = "leftHandDown" {
              \voiceTwo \leftHandDown
            }
          >>
        }
      >>
    >>
  >>

  \layout {
    \context {
      \Staff
      \RemoveEmptyStaves
    }
    \context {
      \ChoirStaff
      \RemoveEmptyStaves
    }
  }
}
