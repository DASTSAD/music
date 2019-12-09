\version "2.18.2"


\include "english.ly"

#(set-default-paper-size "a4")
#(set-global-staff-size 25)

\header {
  %dedication = "dedication"
  title = "Air in D major"
  subtitle = "from Orchestral Suite No. 3"
  subsubtitle = "Piano version"
  %instrument = "instrument"
  composer = "J.S. Bach"
  arranger = "arranged by Daniel Studzinski"
  %poet = "poet"
  %meter = "meter"
  piece = "2019-12-09"
  opus = "BWV 1068"
  copyright = ""
  tagline = ""
}


staffUpper = {\change Staff = RightHand}
staffLower = {\change Staff = LeftHand}


global = { %\easyHeadsOn
  \key d \major
  \numericTimeSignature
  \time 4/4
  \override Staff.KeySignature.sharp-positions = #'((-5 . 5))
  %\partial 4
}

RHI = \relative c'' {
  \voiceOne
  \global \tempo Adagio
  \repeat volta 2 {
  fs1
  fs~
  fs4 b8-5 g8-4 fs32-3 e16.-4 d8-3 cs8-2 d8-3 \stemDown
  <e, a>2 <cs e>4 r4 \stemUp \break

  a''1^5^~ 
  a8\< fs^3 c^2 b^1 e^3 ds^2 a'^5 g^4\!
  g1^5^~
  g8\< e^4 b^2 a-1 d^3 cs^2 g'^5 fs^4\!
  
  fs2.\mf gs8 a8
  d,4 d16 e16 fs8~ fs8 e8 e8 d8
  cs b b16 cs16 d8~ d4 cs8 b8}
  \alternative {{ a1 }{ a1 }}

  \repeat volta 2 {
  cs2~ cs8 d16 cs16 b16 cs16 a8
  a'8 b,8 c4~ c8 b8 a8 g8
  b4 b'~ b8 a8 g8 fs8
  g2~ g16 fs e d cs8 b \break
  
  as8 b8 cs4 cs8 d8 e4
  e8 fs8 g4~ g4 fs4
  e8 d8 cs8 b8 cs8  d16 e16 d4
  b1\> \break
  
  d2~\mp d8 fs e d
  b'2. a8 gs
  fs16 e a8 ~ a4 b,4~ b8 cs16 d16
  cs4. b8 a2 \break
  
  d2.\< fs8 e
  e2. g8 fs8
  fs2. a8 g8
  g2 r2 \break
  
  r2\f r8 cs, e g
  g8 e fs4~ fs4. g16 a16
  d,2 r8 fs8 a8 c8
  b2. d,4 \break
  
  cs8\> e g2.~
  g8 d8 e8 fs16 g16~ g8 fs4 e8
  d16 cs16 b8~ b8 cs8 d4 cs8 d8}
  \alternative {{ d1\p}{  d1\pp\fermata }}\bar "|."
 
  
  
  
}  

RHII = \relative c'' {
  \voiceTwo
  \global
  \repeat volta 2 {
  <a d>1\mp
  <b d>~
  <b d>2 b2 \stemUp
  cs2^4 b8^3 a4.^2~ \stemDown

  a4 \stemNeutral c8 b8 c4 a'8 c,8
  b4_1 r4 r2
  b4\> e8 d e fs g e\! \stemDown
  a,4 c,4\rest c2\rest

  a'1~ 
  a4 gs4 b4 gs4
  a2 gs4 e4}
  \alternative {{ <cs e>1 }{ <cs e>1 }}

  \repeat volta 2 {  
  e2\mf r2
  r4 ds8 e fs4 r4
  fs r2 ds'4
  b2 r2
  
  e,2\< g2
  fs4 cs'8 \f b8 as8 b8 cs4
  fs,2 g4 fs8 e8
  e8 d8~ d2.
  
  e2 r2
  r4 e8 fs gs a b4~
  b4 a~ a gs
  a1

  r4 b8 c8 b8 cs8 d4~
  d4 cs8 b8 cs8 ds8 e4~
  e4 ds8 cs8 ds8 e8 fs4
  r8 ds8 e8 b8 e,2
  
  a8 cs,8 e8 a8 cs8 r8 a4~
  a4 cs8 d8 d2
  r4 e,4 fs4 r4
  d'2. r4
  
  g,2 e'4 b4
  a2~ a4 b4
  a2 g8 fs8 g4}
  \alternative {{ <fs a>1}{ <d fs a>1 }}
  
  
  
}

LHI = \relative c {
  \voiceThree
  \global
  \stemNeutral
\repeat volta 2 {
  d4 d' cs cs,
  b b' a a,
  g g' gs gs,
  a a' g g,

  fs fs' e e,
  ds ds' b b'
  e,, e' d d,
  cs cs' a a'
  
  d, d' cs cs,
  b  b' gs e
  a  d, e e,}
  \alternative {
  { a8^\> b cs d e g fs e\! }
  { <a,, a'>1 }}  \break

\repeat volta 2 {
  a'4 a' g g,
  fs fs' e e,
  ds ds' g b,
  e  e' d d,
  
  cs cs' b b,
  as b  cs  as!
  b g' e fs
  b, b' a a,
  
  gs gs' fs fs,
  e e' d d,
  cs cs' d e
  a, a' g g,
  
  fs fs' g g,
  gs gs' a a,
  as as' b b,
  e e d d
  
  cs cs' a cs
  d d, c c'
  b b, a a'
  g g, fs fs'
  
  e e, d d'
  cs a d g
  a g a a, }
  \alternative {
  {   d,1 }
  { <d d,>1 }}

  
}

LHII = \relative c' {
  \voiceFour
  \global
} 


Dynamics = {
}


\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { D } }
        \line \large { major }
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
