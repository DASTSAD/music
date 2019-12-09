\version "2.19.82"


\include "english.ly"

#(set-default-paper-size "a4")
#(set-global-staff-size 21)

\header {
        title = "\"Goldberg Variations\""
        subtitle = ""
        piece = "Variation 22"
        mutopiatitle = "Goldberg Variations"
        composer = "J. S. Bach (1685-1750)"
        arranger = "arranged by Daniel Studzinski"
        mutopiacomposer = "BachJS"
        opus = "BWV 988"
        date = "1741"
        mutopiainstrument = "Harpsichord,Clavichord"
        style = "Baroque"
        source = ""
        license = ""
        maintainer = ""
        maintainerEmail = ""

 footer = ""
 copyright = {}
 tagline = ##f
}


staffUpper = {\change Staff = RightHand}
staffLower = {\change Staff = LeftHand}


global = { %\easyHeadsOn
\key g \major \time 2/2
}

RHI = \relative d'' {
  \global
  \voiceOne
    \repeat volta 2 { %begin repeated section
		\tempo "Alla breve"
	\stemUp
	R1 | % 1
        R1 | % 2
        R1 | % 3
	R1 | % 4 
	b2\rest d ~ | % 5
        d4 c8 [ b ] c4 e | % 6
        a,4 d2 c4^~ | % 7
        c4 b8 [ a ] b2^~ | % 8
        b4 b8 [ a ] b4 e | % 9
        cs4 a'2 g8 [ fs ] | % 10
        g1 \downprall ~ | % 11
        g1 ~ | % 12
        g4 fs8 [ e ] fs4 a | % 13
        d,2 g ~ | % 14
        g4 fs e2 | % 15
        d1 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d2\rest a'2 ~ | % 17
        a4 g8 [ fs ] g4 b | % 18
        e,1 ~ | % 19
        e4 ds8 [ cs ] ds4 fs | % 20
        b4 b, b'2 ~ | % 21
        b4 a8 [ g ] a4 c | % 22
        fs,4 g a2 ~  | % 23
        a4 g8 [ fs ] g4 b | % 24
        e,1 | % 25
        d1 | % 26
        c1 | % 27
        b2\rest d2 ~ | % 28
        d4 c8 [ b ] c4 e | % 29
        a,2^~ a8 [ e' d e ] | % 30
        a,4 d2 c4^~ | % 31
        c4 b8 [ a ] b2 | % 32

    } %end repeated section
}



RHII = \relative g' { \override NoteHead.color = #red
  \global
  \voiceTwo
  \repeat volta 2 { %begin repeated section

        R1 | % 1
	g\rest  | % 2
        g2\rest \shiftOn g2^~ | % 3
        g4 \stemDown fs8 [ e ] fs4 a | % 4
        d,2. f4 | % 5
        e2. \tieDown g4 ~ | % 6
        g4 fs8 [ e ] fs4 a ~ | % 7
        a4 g8 [ fs ] g4 b | % 8
        e,2 b' | % 9
        a2 d | % 10
        e1 ~ | % 11
        e1 ~ | % 12
        e4 d8 [ cs ] d4 fs | % 13
        b,2. e8 [ d ] | % 14
        e4 d2 cs4 | % 15
        d4 a8 [ g ] a2 | % 16
        \break
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
		R1 | % 17
		b2\rest b2^~ | % 18
		b4 a8 [ g ] a4 c | % 19
		fs,2 b2| % 20
		b2\rest \shiftOff g'2 ~ | % 21
		g4 fs8 [ e ]  fs4 a | % 22
		ds,4  e2 ds4 | % 23
		e2 b2 ~ | % 24
		b4 a8 [ g ] a4 c | % 25
		fs,4 d g2 ~ | % 26
		g4 fs8 [ e ] fs4 a | % 27
		d,2 r2 | % 28
		r2 g2 ~ | % 29
		g4 g8 [ fs ] g2 ~ | % 30
		g4 fs8 [ e ] fs4 a ~ | % 31
		a4 g8 [ fs ] g2 | % 32
  
    } %end repeated section
}

LHI = \relative e' { \override NoteHead.color = #darkgreen
        \global
        \voiceThree
        \repeat volta 2 { %begin repeated section
	\staffUpper \stemDown
        e2\rest e2 ~ | % 1
        e4 d8 [ cs8 ] d2 ~ | % 2
        d4 cs8 [ b8 ] cs4 e4 | % 3
        \staffLower \stemUp a,1 ~ | % 4
        a4 g8 [ fs8 ] g2 ~ | % 5
        g4 e4 a2 ~ | % 6
        a4 a8 [ g8 ] a4 fs4 | % 7
        \staffUpper\stemDown d'2 \staffLower r2 | % 8
        r2 \staffUpper e2_~ | % 9
        e4 \staffLower \stemUp d8 [ cs8 ] d2^~ | % 10
        d4 cs8 [ b8 ] cs4 e4 | % 11
        a,1 | % 12
        r2 a2 ~ | % 13
        a4 g8 [ fs8 ] g4 b4 | % 14
        cs,4 d4 e8 [ fs8 ] g4 ~ | % 15
        g4 fs8 [ e8 ] fs2 | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
         R1 | % 17
         R1 | % 18
         R1 | % 19
\staffUpper
        s4 s4 fs'2_~ | % 20
        fs4 e8 [ ds8 ] e4 g4 | % 21
        c,4 e4 a2_~ | % 22
        a4 g4 fs2 | % 23
        e2 g,2\rest  | % 24
	R1 | % 25
	R1 \undo | % 26
        \staffLower r2 c2 ~ | % 27
        c4 b8 [ a8 ] b4 d4 | % 28
        g,2. b4 | % 29
        e,2 a2 ~ | % 30
        a4 a8 [ g8 ] a4 fs4 | % 31
        \staffUpper d'1 | % 32
  
    } %end repeated section
}


LHII =  \relative g { \override NoteHead.color = #blue
    \global
    \voiceFour
    \repeat volta 2 { %begin repeated section
	\stemDown	    
        g1 | % 1
        fs1 | % 2
        e1 | % 3
        d2. c4  | % 4
        b1 | % 5
        c1 | % 6
        d1 | % 7
        g,1 ~ | % 8
        g4 g'8 [ fs ]  g2^~ | % 9
        g4 fs8 [ e ] fs4 b | % 10
        e,2. d4 ~ | % 11
        d4 cs8 [ b ] cs4 e | % 12
        fs,2 fs' | % 13
        g,2 e' | % 14
        a,1 | % 15
        d1  | % 16
    } %end of repeated section
  
    \repeat volta 2 { %begin repeated section
        d'2. c4 | % 17
        b4 d \staffUpper g \staffLower \stemDown g, | % 18
        c4 e c a | % 19
        b4 \stemNeutral b, b' a | % 20
        g1 | % 21
        a1 | % 22
        b1 | % 23
        e,2. d4 | % 24
        \stemDown c2 c' ~ | % 25
        c4 b8 [ a ] b4 e | % 26
        a,2. g4 | % 27
        fs2 g | % 28
        e2. d4 | % 29
        c2 cs | % 30
        d1 | % 31
        g,1 | % 32
 
    } %end repeated section
}

Dynamics = {
}


\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number "22" }
        \line \large {  }
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
