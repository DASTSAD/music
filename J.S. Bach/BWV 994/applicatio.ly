\version "2.19.82"

\include "english.ly"
%clairnote-type = sn \include "clairnote.ly"

% Uncomment paper block below for fewer pages.
%\paper {
%       obsolete-between-system-padding = #0.1  system-system-spacing.padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing.padding = #(/ obsolete-between-system-padding staff-space)
%       obsolete-between-system-space = #0.1  system-system-spacing.basic-distance = #(/ obsolete-between-system-space staff-space)  score-system-spacing.basic-distance = #(/ obsolete-between-system-space staff-space)
%       ragged-last-bottom = ##f
%       ragged-bottom = ##f
%}

% Uncomment paper block below for evenly-filled pages.
% \paper {
%    obsolete-page-top-space = #0.0  top-system-spacing.basic-distance = #(/ obsolete-page-top-space staff-space)
%    %indent = 0.0
%    line-width = 18.0\cm
%    ragged-bottom = ##f
%    ragged-last-bottom = ##f
% }

#(set-default-paper-size "a4")
#(set-global-staff-size 21)


\header {
        title = "Applicatio"
        subtitle = ""
        piece = ""
        mutopiatitle = "Goldberg Variations - Aria"
        composer = "J. S. Bach (1685-1750)"
        arranger = "arranged by Daniel Studzinski"
        mutopiacomposer = "BachJS"
        opus = "BWV 994"
        date = ""
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


% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
StaffClef = {\key c \major  \time 4/4}


%%
%% Treble Clef
%%

sopranoOne = \relative c' {
  \repeat volta 2 {
    c32[-3 b-2 c16-3  d8-1 e-2 f-1] g32[-3 f-2 g16-3 a8-1 b-2 g]-1 |			% bar 1
    c32-3 b-2 c16-3 d8-1 e-2 \tuplet 6/4 {g32-4 f-3 g f e-2 f-4} \stemDown g4-5 \stemUp g,-1 |			% bar 2
    <<
       {e'2-5 d-4}\\
       {\override NoteHead.color = #darkgreen c32-3 b-2 c4..-3 \stemDown b32-2 a-1 b4..-2 } \\
       {\override NoteHead.color = #darkmagenta r4 \stemDown g-1  r g-1 }
    >> |							% bar 3
    <<
       { r4 d'8[-5 c]-4 <c-5 a-4> b4.-5 } \\
       { \override NoteHead.color = #darkgreen r8 a4.-3 fs8[-2 g32-3 fs-2 g16-3] ~ \stemUp g4 \stemNeutral } \\
       { \override NoteHead.color = #darkmagenta \stemDown fs2_2 r4  d_1 \stemNeutral }
    >> |							% bar 4
  } \break
  \repeat volta 2 {
    g'8[-5 f!-4 e-3 d]-2 \tuplet 3/2 {d32-4 c-3 d-4} c16-3 b8-2 a-1 a'-5 |				% bar 5
     gs32 a b a b a b a~ a8 gs8
    <<
      { a2 } \\
      { \override NoteHead.color = #darkgreen r4 a,8 \tuplet 6/4 {c32 b c b a b} }
    >> |							% bar 6
    <<
      { c8[ c c c] c[ c c c] } \\
      { \override NoteHead.color = #darkgreen e,[ bf' a g] a[ g f e] }
    >> |							% bar 7
    <<
      { b'!32 c d c d c d c~ c8 b8 c2 } \\
      { \override NoteHead.color = #darkgreen d,4. f8 ~ f f64 e f e d16 e4 }
    >> |							% bar 8
  }
    
}

sopranoTwo = \relative c'' {
    \override NoteHead.color = #grey
    
}

sopranoThree = \relative c'' {
    \override NoteHead.color = #darkmagenta
    
}

%%
%% Bass Clef
%% 

bassOne = \relative c {    
    \override NoteHead.color = #red
    
}

bassTwo = \relative c {    
    \override NoteHead.color = #blue
  \repeat volta 2 {
    <c-3 e-1>2 <b-4 d-2> |						% bar 1
    <a-4 c-2> <g-5 b-3> |						% bar 2
    c8[-3 d-2 e32-1 d-2 e16-1 f8]-3 g[-2 a-1 b-3 c]-2 |				% bar 3
    d32-1 c-2 d8.-1 d,4-5
    << 
      { \override NoteHead.color = #red g32-1 fs-2 g4..-1 } \\
      { r4 g,-5 }
    >> |							% bar 4
  }
  \repeat volta 2 {
    <g'-5 b-3>2 <a-4 c-2> |						% bar 5
    <<
      { \override NoteHead.color = #blue <b-3 d-1>2 ~ d8[ d64-1 c-2 d-1 c-2 b16]-3 c8[-2 d]-1 } \\
      { \override NoteHead.color = #red  c,4\rest e-5 a2-4 }
    >>  \override NoteHead.color = #blue							% bar 6
    a8 g f e f g a32 g a16 g8 |				% bar 7
    f d g32 f g16 g,8 
    <<
      { \override NoteHead.color = #red c32 b c4.. } \\
      { r4 c, }
    >> |							% bar 8
  }
    
    
} 

bassThree = \relative c' {    
    \override NoteHead.color = #darkgreen
    
    
}

%% Merge

soprano = << \sopranoOne \\ \sopranoTwo \\ \sopranoThree >>
bass = << \bassOne \\ \bassTwo \\ \bassThree >>

%% Merge score - Piano staff in key of G Major, 3/4 time.

\score {
    
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = #"acoustic grand"
        \context Staff = "upper" { 
          \clef treble \StaffClef \soprano 
        }
        \context Staff = "lower"  { 
          \clef bass   \StaffClef \bass 
        }
    >>
    \layout{  }
    \midi { \tempo 4=40}
}
