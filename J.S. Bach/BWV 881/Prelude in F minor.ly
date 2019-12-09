\version "2.19.82"
%not finished

\include "english.ly"

#(set-default-paper-size "a4")
#(set-global-staff-size 21)

\header {
  dedication = ""
  title = "Prelude in F minor"
  subtitle = "BWV 881"
  subsubtitle = ""
  instrument = "Clavier"
  composer = "J. S. Bach"
  arranger = "arranged by Daniel Studzinski"
  poet = ""
  meter = ""
  piece = ""
  opus = ""
  copyright = ""
  tagline = ""
}

staffUpper = {\change Staff = RightHand}
staffLower = {\change Staff = LeftHand}


global = { %\easyHeadsOn
  \key f \minor
  \numericTimeSignature
  \time 2/4
  \partial 4
}

RHI = \relative c'' {
  \voiceOne
  \global
  d8\rest af | %0
  <af>8 <g> d'8\rest <bf> | %1
  <bf>8 <af> d8\rest <af'> | %2
  <af>8 <g> d8\rest <f> | %3
  <f>8 <e> r16 g, c, g' | %4
  r16 af c, af' r16 f c f |
  r16 g c, g' r16 bf c, bf' |
  r16 af c, af' r16 f c f    |%7
  r16 g c, g' d'8\rest <af> |%8
  <af>8 <g> d'8\rest <bf> | %9
  <bf>8 <af> d8\rest <c>8 
  <c>8 <df> d8\rest <bf>
  <bf>8 <c> d8\rest <ef>
  <ef>8 <df> d8\rest <df>
  <df>8 <c> d8\rest <gf>
  <gf>8 <f> d8\rest <af'>
  <af>8 <g> r16 <bf,> <ef,> <bf'>
  r16 <c> <ef,> <c'> r16 <af> <ef> <af>
  r16 <bf> <ef,> <bf'> r16 <df> <ef,> <df'>
  r16 <c> <ef,> <c'> r16 <d> <ef,> <d'>
  r16 <ef> <ef,> <ef'> gf, af c ef
  ef c af f f g! bf df 
  df bf g ef ef f af c
  c af f df df ef g bf
  bf g ef c r af' c, af'
  r af df, af' r af c, af'
  r af bf, af' r af af, af'
  bf, af'16 ff af ef g df g
  g8 af8 \bar ":|."
  
  
}  

RHII = \relative c' {\override NoteHead.color = #blue
                     \override Rest.color = #blue
                     \override Stem.color = #blue
                     \override Accidental.color = #blue
                     \override Beam.color = #blue
  \voiceTwo
  \global
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  ef8 df8
  df c

}

LHI = \relative c' {\override NoteHead.color = #darkred
                     \override Rest.color = #darkred
                     \override Stem.color = #darkred
                     \override Accidental.color = #darkred
                     \override Beam.color = #darkred
  \voiceThree
  \global \staffUpper \stemDown
  f8\rest f
  f8 e f8\rest g
  <g>8 <f> f8\rest <c'> |
  <c>8 <bf> f8\rest <af> |
  <af>8 <g> e8 r8 | 
  f r d r
  e r g r
  f r d r
  e r r f
  <f>8 <e> r <g> |
  <g>8 <f> f8\rest <af>8
  <af>8 <bf> f8\rest <g>
  <g>8 <af> f8\rest <c'>
  <c>8 <bf> f8\rest <bf>
  <bf>8 <af> f8\rest <ef'>
  <ef>8 <df> f,8\rest c'
  <c>8 <bf> g r8
  af8 r f r
  g r bf r
  af r f r
  g r \staffLower g,\rest \stemUp af~
  af f g\rest g~
  g ef g\rest f
  f df r ef
  ef8[ c8 ef8 gf]
  f8 r r ef8
  df8 r r cf8
  r bf8 ef4~
  ef4 
}

LHII = \relative c' {\override NoteHead.color = #darkgreen
                     \override Rest.color = #darkgreen
                     \override Stem.color = #darkgreen
                     \override Accidental.color = #darkgreen
                     \override Beam.color = #darkgreen
  \voiceFour
  \global
  f,4
  c' c,
  f \stemUp f,
  bf b
  c d\rest \override Rest #'extra-offset = #'(7 . 0)
  d2\rest
  d2\rest
  d2\rest \stemDown \revert Rest #'extra-offset
  d4\rest f4
  c' c,
  f \stemUp f,
  bf ef,
  af \stemDown af'
  bf \stemUp bf,
  c \stemDown c'
  df d
  ef d,\rest \override Rest #'extra-offset = #'(7 . 0)
  d2\rest
  d2\rest
  d2\rest \stemDown \revert Rest #'extra-offset
  r4 c
  df bf
  c af
  bf4 g4
  af r
  r8 af8[ gf8] r
  r8 ff[ ef] r
  d4 r8 ef8
  af4
  
  
  

} 


Dynamics = {
}


\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number "10". }
        \line \large { F minor }
        \italic \line {  }
      }
    }
    shortInstrumentName = ""
  }
  <<
    \new Staff="RightHand"{ \clef treble
    <<
      \new Voice = "RFirst"
      \relative c'
      \RHI
      \new Voice= "RSecond"
      \RHII
    >>}
    
    \new Staff="LeftHand" { \clef bass
    <<
      \new Voice = "LFirst"
      \relative c'
      \LHI
      \new Voice= "LSecond"
      \LHII
    >>}
  >>
  \layout { }
  \midi { }
}
