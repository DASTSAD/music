\version "2.19.49"

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

#(set-default-paper-size "a3" 'landscape)
%#(set-default-paper-size "letter")

%#(set-global-staff-size 30)
#(set-global-staff-size 22)
EHO = {%\easyHeadsOn
}


\header {
        title = "\"Goldberg Variations\""
        subtitle = "BWV 988"
        piece = "Aria"
        mutopiatitle = "Goldberg Variations - Aria"
        composer = "J. S. Bach (1685-1750)"
        arranger = "arranged by Daniel Studzinski"
        mutopiacomposer = "BachJS"
        opus = "2019-10-27"
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


% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemUp}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}

global =   {
  \override ClefModifier.color = #red
  \override Staff.KeySignature.sharp-positions = #'((-5 . 5))
  \override Staff.KeyCancellation.sharp-positions = #'((-5 . 5))
  \override Staff.KeySignature.flat-positions = #'((-5 . 5))
  \override Staff.KeyCancellation.flat-positions = #'((-5 . 5))
  \key g \major \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%
%% Treble Clef
%%

soprano = \relative c'' {\EHO
    \override Staff.NoteCollision.merge-differently-dotted = ##t
    \override Script.padding = #1.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     



        
        
        %1-4 A
\mark #1 %\mark {A}
        g'4-3 g4-3( a8.-4  ) b16-5       
        a8-4  fs8-2  d2-5                                 \noBreak        
        g,4-3 g4.-3  fs16-2 g16-3                         \noBreak
        a32-4[( g32-3 fs16-2) g32(-4 fs32-3 e16-2)] d2-1  \noBreak %\noPageBreak

%         
%       %5-8 B 
\mark #2
        d'4-5 d4-2( e8.^3) f16^4                          \noBreak
        e8^3  c8^1   a4.^1  fs'8^3                        \noBreak 
        g32[(^4 fs16.)^3 a32(^5 g16.)]^4 fs32[(^3 e16.)^2 d32(^1 c16.)]^2  a'8.^5 c,16^1 \noBreak
        b32[(^3 g16.)^2 fs8]^3  g2                        \break 


%         
%       %9-12 C 

\mark #3 
        b4^5 b4(^2 cs8.^3)  d16-4 \stemUp  \noBreak
        d16-4 cs16-3 b16-2 a16-1~  <a d>2  \noBreak
        g'64~_5 <g~ e~_4> <g~ e~ b~_2> <g~ e~ b~ g~_1> <g e b g>8. \stemDown g4.^3  fs16^2 g16^5 \noBreak
        g8^5   e8^3  cs4.^1 e8^2 \noBreak

%         
%       %13-16 D 

\mark #4
        a16(^5 g16^4 fs16^3 e16)^2 d8^1 \stemNeutral  a4_~^2 a32 b32^3 c!16^4 | \noBreak
        b16(^3 a16^2 g16^1 fs16)^2 e8^1 cs'4_~^3 cs32 d32^4 e16^5 \noBreak
        \stemUp d16^4_( cs16^3 b16^2 a16)^1 g'8^5 b,4^2 cs8^3 \noBreak
        d8^~[^4 d32 e32^5 d32^4 cs32]^3  d2^4    \bar "||" \break


        
      
        %1-4 A2
\mark "A2" \stemDown %\mark {A}
        g4-3 g4-3( a32-4 g-3 a8-4  ) b16-5       
        a8-4  g16-3( fs16-2)  e16-1( d8.-\finger \markup \tied-lyric #"2~5")~ d4-5 %%\noBreak        
        g,32-3( fs-2 g8.-3) a32([-4 g-3 fs-2 g-3 a16-4 g8.-3]) fs16-2 g16-3       
        a32-4[( g32-3 fs16-2) g32(-4 fs32-3 e16-2)] e8(-2 d4.-1) %\noBreak %\noPageBreak

%         
%       %5-8 B2 
\mark #2
        d'4-5 d4-2( e32^3 d^2 e8^3) f16^4 %\noBreak
        e8^3  d16(^2 c16^1)  b8(^2  a4^1)  g'32^4 fs^3 e^2 fs^3                                  \noBreak 
        g32[(^4 fs16.)^3 a32(^5 g16.)]^4 fs32[(^3 e16.)^2 d32(^1 c16.)]^2  c16(^1 a'8^5 c,16^1)  \noBreak \stemNeutral
        b32[(^3 g16.)^2 fs8]^3 fs8^(^3 {g32^4) fs32-3 g16-4~ g4} \break 


%         
%       %9-12 C2 

\mark #3 
        b4^5 b4(^2 cs32^3 b^2 cs8^3) d16-4 \stemUp
        d16-4 cs16-3 b16-2 a16-1~  <a d>2  %\noBreak
        g'64~_5 <g~ e~_4> <g~ e~ b~_2> <g~ e~ b~ g~_1> <g e b g>8. \stemDown a32([^4 g^3 fs^2 g a g a g a g a g] fs16^2 g16^5) %\noBreak
        g8^5  fs16^4 e16^3  d8^2 cs4^1 e8^2 %\noBreak

%         
%       %13-16 D2 

\mark #4
        a16(^5 g16^4 fs16^3 e16)^2 d8^1 \stemNeutral  a4_~^2 a32 b32^3 c!16^4 | 
        b16(^3 a16^2 g16^1 fs16)^2 e8^1 d'8[^4 cs8]_~^3 cs32 d32^4 e16^5 \noBreak
        \stemUp d16^4_( cs16^3 b16^2 a16)^1 g'8^5 b,4^2 cs8^3            \noBreak
        cs16^3^( d16)^~[^4 d32 e32^5 d32^4 cs32]^3 cs8^3 d4.^4   \bar "||" \pageBreak 

        

        
            
        


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     


%         
%       %17-20 E 

\mark #5
       {a4^3 }  a^3~  a16^3 a32^1( b^2 c^3 d^4 e16^5)  \stemNeutral
       d8^4  b8^1  g4.^1 g'8^5 \noBreak
       e8.^3 fs32^4 ds32^3 e4.^4  a32^3( b32^4 a32^3 g32^2) \noBreak
       a8.^3( fs16^2)  ds4.^2 b8^1 \noBreak
% 
%      %21-24 F
\mark #6
       \stemDown  g'8.^5 fs16^3 e4^2^~ e16[ b16^1 c32^4( b32^3 a32^2 b32^1)] \noBreak
       g'32^5[( e16.^3) fs32^4( ds16.^3)] e4^5^~ \stemUp e16 g,16^1 fs16^2 e16^1 \noBreak
       fs8.^( e'16^5) ds8^2 a'8^5 g8^4 fs8^3
       e8.^2 fs32^3 ds32^2  e2^3 \break %\pageBreak
       %%\pageBreak
%       
%      %25-28 G 
\mark #7
       \stemDown e8^3  c8^1 a4.^1 b16^2[ c16^3]
       d32^4[( c32^3 b16^2) c32^4( b32^3 a16^2)]  \stemUp g4._1 a16_2 b16_3    \noBreak
       c16^4 d16^5 c16^4 b16^3 c16^4 a16^2 e16 a16^2 c4^5^~                         \noBreak
       c16^3 d16^4 c16^3 b16^2 c16^3 a16^2 fs16_1 a16^2 c16^3 e16^5 d16^4 c16^5     \noBreak
%
%      %28-32 H
\mark #8 %\stemNeutral
       b16^2 c16^4 b16^3 a16^2 b16^3 g16^2 d16 g16^3 b16^5 g16 c16^2 d16^3 \noBreak
       e16^4 f16^5 e16^4 d16^3 e16^4 c16^2 g16 c16^2 e16^3 c16 fs16^2 g16^3 \stemNeutral \noBreak
       a16^5 c,16^3 b16^2 a16^1 b16^2 c16^3 d16^4 g,16^1 b16^5 a16^4 g16^3 fs16^2        \noBreak
       g4^4^~ g16 d16^2 g16^3 fs16^2  g4^3 \bar "||"                              \break %\pageBreak
 

%%%%%%%%%%%
%%%%%%%%%%%
%%%%%%%%%%%
%%%%%%%%%%%



%         
%       %17-20 E 

\mark #5
       {a32^3 g^2 a8.^3}  b32^4[ a^3 g^2 a^3 b16^4 a8^3] a32^1( b^2 c^3 d^4 e16^5)  \stemNeutral
       e16^5( d^4)  c16^3( b16^1)  a8^2( g4^1) g'8^5                                              \noBreak
       fs16^4(\( e8^3) fs32^4 ds32^3\) ds8^3\([ e32^4 ds^3 e16^1~ e8]\) a32^3( b32^4 a32^3 g32^2) \noBreak
       a8.^3( fs16^2) \stemUp e8^1( \stemDown ds4^2) b8^1 \noBreak
% 
%      %21-24 F
\mark #6
       \stemDown  e32^3( fs32^4 g8^5) fs16^3 fs16( e8.^2)^~ e16[ b16^1 c32^4( b32^3 a32^2 b32^1)] \noBreak
       g'32^5[( e16.^3) fs32^4( ds16.^3)]  ds16^3( e8.^5)^~ \stemUp e16 g,16^1 fs16^2 e16^1 \noBreak
       fs8.^( e'16^5) e16^5^( ds16^2) fs32^3^( g32^4 a16^5) g8^4 fs8^3 \noBreak
       fs16^3^( e8^2) fs32^3 ds32^2 ds8^2^( e4.^3) \break %\pageBreak
       %%\pageBreak
%       
%      %25-28 G 
\mark #7
       \stemDown e8^3 d!16^2( c16^1) b8^2( a4^1) b16^2[ c16^3]
       d32^4[( c32^3 b16^2) c32^4( b32^3 a16^2)] a8^2( \stemUp g4_1) a16_2 b16_3 \noBreak
       c16^4 d16^5 c16^4 b16^3 c16^4 a16^2 e16 a16^2 c4^5^~                      \noBreak
       c16^3 d16^4 c16^3 b16^2 c16^3 a16^2 fs16_1 a16^2 c16^3 e16^5 d16^4 c16^5 \noBreak
%
%      %28-32 H
\mark #8 %\stemNeutral
       b16^2 c16^4 b16^3 a16^2 b16^3 g16^2 d16 g16^3 b16^5 g16 c16^2 d16^3 \noBreak
       e16^4 f16^5 e16^4 d16^3 e16^4 c16^2 g16 c16^2 e16^3 c16 fs16^2 g16^3 \stemNeutral \noBreak
       a16^5 c,16^3 b16^2 a16^1 b16^2 c16^3 d16^4 g,16^1 b16^5 a16^4 g16^3 fs16^2        \noBreak
       g4^4^~ g16 d16^2 g16^3 fs16^2 fs8^2( g8^3) \bar "|."\mark\markup{\musicglyph #"scripts.ufermata"}
 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
        
    
}

%%
%% Bass Clef
%% 

bassOne = \relative c' {\stemDown\EHO

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
\override NoteHead.color = #red
%\override Fingering.font-size = #-7

    %1- 4 A
    g2._3
    fs2._\finger \markup \tied-lyric #"4~3"
    e2._4
    d2_~_\finger \markup \tied-lyric #"5~3" d8 c8_4
    
    %5-8 B
    b2._5
    c2_~_4 c8 d8_3
    e8_3 c8_5 d2_\finger \markup \tied-lyric #"4~5"
    g,4._5 d'8[-4 e8.-3  fs16-2] 

    %9-12 C
    g2._~_\finger \markup \tied-lyric #"1~3" 
    g4_3  fs8 e8_4 fs8_3 b8_1
    e,4._5 e8_5 fs8_4 g8_3
    a4._3 b8_2 a8_3 g8_4
    
    %13-16 D
    fs2.
    g2._5
    a2._5
    d,2._5 \stemDown

%1- 4 A2
    g2._3
    fs2._\finger \markup \tied-lyric #"4~3"
    e2._4
    d2_~_\finger \markup \tied-lyric #"5~3" d8 c8_4
    
    %5-8 B2
    b2._5
    c2_~_4 c8 d8_3
    e8_3 c8_5 d2_\finger \markup \tied-lyric #"4~5"
    g,4._5 d'8[-4 e64-3 d-4 e32~ e8 fs16-2] 

    %9-12 C2
    g2._~_\finger \markup \tied-lyric #"1~3" 
    g4_3 g64_2 fs_3 g_2 fs64~_3 fs16 e8_4 fs8_3 b8_1
    e,4._5 e8_5 fs8_4 g8_3
    a4._3 b8_2 a8_3 g8_4
    
    %13-16 D2
    fs2.
    g2._5
    a2._5
    d,2._5 \stemNeutral
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
        
\relative c { \EHO    
%   %17-120 E
%    
    d'2_3 c4_4    
    b4._4 a8_5 b4_4
    c4._3 b8_4 a4_5
    b4._1 a8^5 g8^4 fs8^3 \stemDown

% 
%     %21-24 F

    e2_4 d4_\finger \markup \tied-lyric #"5~4"
    c2_5 b4_5
    a8_5 c8_3 b8_4 a8_5 b4_4
    \stemDown e8^1 b8^2 e,8^5 b'8^2 e8^1 d!8^2 \stemNeutral

% 
%     %25-28 G

    c2._3
    \stemDown b2._5 \set fingeringOrientations = #'(right)
    a4._5 g8_5 <fs-3>8 <e-4>8 \stemNeutral
    \stemUp <d-5>8 <a'-2>8 <d-1>8 <c-2>8 <b-3>8 <a-4>8

% 
%     %29-32 H

    \stemDown g8^5 d'8^2 g8^1 f8^2 e8^3 d8^4
    c8^5 g'8^2 c8^1 b8^2 a8^1 g8^2
    fs8^3 d8^5 g8^3 b8^2 d8^1 d,8^5
    g4.^1 d8^2  \once \override Script.padding = #.8 g,4^5
}    

%%%%%%%%%%%%     
%%%%%%%%%%%%     
%%%%%%%%%%%%     
%%%%%%%%%%%%

\relative c { \EHO    
%   %17-120 E
%    
    d'2_3 c4_4    
    b4._4 a8_5 b4_4
    c4._3 b8_4 a4_5
    b4._1 a8^5 g8^4 fs8^3

% 
%     %21-24 F

    e2_4 d4_\finger \markup \tied-lyric #"5~4"
    c2_5 b4_5
    a8_5 c8_3 b8_4 a8_5 b4_4
    \stemDown e8^1 b8^2 e,8^5 b'8^2 e8^1 d!8^2 \stemNeutral

% 
%     %25-28 G

    c2._3
    \stemDown b2._5 \set fingeringOrientations = #'(right)
    a4._5 g8_5 <fs-3>8 <e-4>8 \stemNeutral
    \stemUp <d-5>8 <a'-2>8 <d-1>8 <c-2>8 <b-3>8 <a-4>8

% 
%     %29-32 H

    \stemDown g8^5 d'8^2 g8^1 f8^2 e8^3 d8^4
    c8^5 g'8^2 c8^1 b8^2 a8^1 g8^2
    fs8^3 d8^5 g8^3 b8^2 d8^1 d,8^5
    g4.^1 d8^2 \stemUp \once \override Script.padding = #.8 g,4^5
} 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     

}

bassTwo = \relative c' { \EHO
    \override Script.padding = #1.0
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
\override NoteHead.color = #blue  
%\override Fingering.font-size = #-7 
    %1-4 A
    \stemDown f4\rest b,2_2
    f'4\rest a,2_2
    f'4\rest g,2_2
    f'4\rest \stemUp fs,2_2
    
    %5-8 B
    f'4\rest d,2_3
    f'4\rest e,4._2 s8
    f'8\rest c8^~^1^( c8[ b16_1 a16_2] g16_1 fs16_2 e16_3 fs16_1)
    g8^1 a8^1 \staffUpper b2_1 \staffLower

    %9-12 C
    s4 b2_2
    a4^2 s2 
    c8\rest b8_2 e4._1 d8^1
    cs8^1 d8^1  e2^1 
    
    %13-16 D
    s4 a,2
    e'4\rest b4_3  e4_1
    fs4^2  e8._1  fs16_2 \staffUpper g4_1_~
    g4 fs2_1 \staffLower

    %1-4 A2
    \stemDown f4\rest b,2_2
    f'4\rest a,2_2
    f'4\rest g,2_2
    f'4\rest \stemUp fs,2_2
    
    %5-8 B2
    f'4\rest d,2_3
    f'4\rest e,4._2 s8
    f'8\rest c8^~^1^( c8[ b16_1 a16_2] g16_1 fs16_2 e16_3 fs16_1)
    g8^1 a8^1 \staffUpper b2_1 \staffLower

    %9-12 C2
    s4 b2_2
    a4^2 s2 
    c8\rest b8_2 e4._1 d8^1
    cs8^1 d8^1  e2^1 
    
    %13-16 D2
    s4 a,2
    e'4\rest b4_3  e4_1
    fs4^2  e8._1  fs16_2 \staffUpper g4_1_~
    g4 fs2_1 \staffLower


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
   
%
%   %17-20 E

     \staffLower \relative c''
     a8\rest e8_2 fs2_1  %fs32 e fs8. ~ fs4

     f8\rest c8_3 d2_2 \set fingeringOrientations = #'(left)
     f8\rest e8_2 g4_1 <fs-1>8  e8_2
     \set fingeringOrientations = #'(right)
     <ds-4>8 <e-2>8  \staffUpper<fs-1>2\staffLower
% 
%    %21-24 F
     \staffLower f8\rest a,8_1 g4_2 g4^1
     f'8\rest a,8^1( g8^2 fs8^3 g8^2 b8^1)
     \staffUpper fs'4.^2 c'8_1 b8_1 a8_1_~
     a4 g2_1
% 
%    %25-28 G     
     \staffLower s4 e,2_2
     \skip 2.
     \skip 4. \staffUpper e'8_1_~ e16 b'16^4 a16^3 g16^2
     fs4_1 r8 fs4.
% 
%    %29-32 H         
     g8_1 r8 r8 d8._1 g8._1_~
     g4 r8 g8._1 c8._1
     \skip 2. \set fingeringOrientations = #'(up)
     c,16\rest <c-2>16 <b-1>16 \staffLower  <a-2>16^\markup { \postscript "-0.5 0 moveto -1 0 rlineto 0 -3 rlineto 0.2 setlinewidth stroke" }  \staffUpper b2_1 
     
%%%%%%%%%%%%     
%%%%%%%%%%%%     
%%%%%%%%%%%%     
%%%%%%%%%%%%
%
%   %17-20 E

     \staffLower \relative c''
     a8\rest e8_2 fs2_1  %fs32 e fs8. ~ fs4

     f8\rest c8_3 d2_2 \set fingeringOrientations = #'(left)
     f8\rest e8_2 g4_1 <fs-1>32 e_2 fs16_1 e8_2
     \set fingeringOrientations = #'(right)
     <ds-4>8 <e-2>8  \staffUpper<fs-1>2\staffLower
% 
%    %21-24 F
     \staffLower f8\rest a,8_1([ g32_2 a_1 g16_2 fs8_3]) g4^1
     f'8\rest a,8^1( g8^2 fs8^3 g8^2 b8^1)
     \staffUpper fs'4.^2 c'8_1 b8_1 a8_1_~
     a4 g2_1
% 
%    %25-28 G     
     \staffLower s4 e,2_2
     \skip 2.
     \skip 4. \staffUpper e'8_1_~ e16 b'16^4 a16^3 g16^2
     fs4_1 r8 fs4.
% 
%    %29-32 H         
     g8_1 r8 r8 d8._1 g8._1_~
     g4 r8 g8._1 c8._1
     \skip 2. \set fingeringOrientations = #'(up)
     c,16\rest <c-2>16 <b-1>16 \staffLower  <a-2>16^\markup { \postscript "-0.5 0 moveto -1 0 rlineto 0 -3 rlineto 0.2 setlinewidth stroke" }  \staffUpper b2_1 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
     
    
} 

bassThree = \relative c' {\EHO

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
\override NoteHead.color = #darkgreen
%\override Fingering.font-size = #-7

    %1-4 A
    \stemUp s4 f4\rest d4_1
    s4 f4\rest d4_1
    s4 f4\rest cs4_1
    s4 f4\rest a,^1
    
    %5-8 B
    s4 f'4\rest g,4_1
    s4 g'4\rest a,4^1
    \skip 2.
    \skip 2.
    
    %9-12 C
    f'4\rest f4\rest  e4_1
    \skip 2.
    \skip 2.
    \skip 2.
    
    %13-16 D
    d4\rest e4\rest d4
    \skip 2.
    \skip 2.
    c4\rest c8\rest a8_3 d4_1

\relative c'
    %1-4 A2
    \stemUp s4 f4\rest d4_1
    s4 f4\rest d4_1
    s4 f4\rest cs4_1
    s4 f4\rest a,^1
    
    %5-8 B2
    s4 f'4\rest g,4_1
    s4 g'4\rest a,4^1
    \skip 2.
    \skip 2.
    
    %9-12 C2
    f'4\rest f4\rest  e4_1
    \skip 2.
    \skip 2.
    \skip 2.
    
    %13-16 D2
    d4\rest e4\rest d4
    \skip 2.
    \skip 2.
    c4\rest c8\rest a8_3 d4_1
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
        
    
%     
%   %17-20 E 
    \skip 2.
    \skip 2.
    \skip 2.
    \skip 2.
% 
%    %21-24 F
    \skip 2.
    \skip 2.
    r4 r4 r8 ds,8^2
    e4 \skip 2
    
% 
%    %25-28 G   
     f'4\rest f4\rest a,4_1^~
     a8 fs8_2  d8_4[ e16_3 fs16_2] g16_1[ fs16_2 g8_1]^~
     g8[ e8_2 a8_1] a8\rest a4\rest
     s2.
% 
%    %29-32 G
     s2.
     s2.
     s2.
     s2.
     
%%%%%%%%%%%%     
%%%%%%%%%%%%     
%%%%%%%%%%%%     
        
    
%     
%   %17-20 E 
    \skip 2.
    \skip 2.
    \skip 2.
    \skip 2.
% 
%    %21-24 F
    \skip 2.
    \skip 2.
    r4 r4 r8 ds,8^2
    e4 r2
    
% 
%    %25-28 G   
     f'4\rest f4\rest a,4_1^~
     a8 fs8_2 e16_3_([ d16_4 e16_3 fs16_2] g16_1[ fs16_2 g8_1)]^~
     g8[ e8_2 a8_1] a8\rest a4\rest
     s2.
% 
%    %29-32 G
     s2.
     s2.
     s2.
     s2.     
     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
     
     
    
}

%% Merge Bass

bass = << \bassOne \\ \bassTwo \\ \bassThree >>

%% Merge score - Piano staff in key of G Major, 3/4 time.

\score {
    
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = #"acoustic grand"
        \context Staff = "upper" { 
          \clef treble \global << \soprano >>  
        }
        \context Staff = "lower"  { 
          \clef bass \global \bass 
        }
    >>
    \layout{  }
    \midi { \tempo 4=40}
}
