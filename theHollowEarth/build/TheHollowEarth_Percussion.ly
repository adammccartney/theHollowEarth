\version "2.18.2"
\language "deutsch"
  
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%Macros
  %%%%%%%%
  
  beamAccel = { \override Beam.grow-direction = #RIGHT }
  
  beamDeccel = { \override Beam.grow-direction = #LEFT }
  
  beamNeutral = { \override Beam.grow-direction = #f }
  
    startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

  %%%%%%%%
  %%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55


% Sequence %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TheHollowEarth_Crotales = { 
 r1 | r1 | r1 |
\stemNeutral r4 cis''4.--\p cis''8 cis''4 |
\repeat unfold 5 { \stemNeutral r4 cis''4.-- cis''8 cis''4 | }
 r1 | r1 | r1 |
\stemNeutral r4 <h'' dis''>4.--\mf <h'' dis''>8 <h'' dis''>4 |
r4 <h'' dis''>4.--\pp <h'' dis''>8 <h'' dis''>4 |
r4 <h'' dis''>4.--\mf <h'' dis''>8 <h'' dis''>4 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1
\stemNeutral r4 <h'' dis''>4.--\mf <h'' dis''>8 <h'' dis''>4 |
r4 <h'' dis''>4.--\pp <h'' dis''>8 <h'' dis''>4 |
r4 <h'' dis''>4.--\mf <h'' dis''>8 <h'' dis''>4 |
\stemNeutral r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\pp <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
 r1 | r1 | r1 |
\stemNeutral r4 <es'' fis''>4.--\mf <es'' fis''>8 <es'' fis''>4 |
r4 <es'' fis''>4.--\pp <es'' fis''>8 <es'' fis''>4 |
r4 <es'' fis''>4.--\mf <es'' fis''>8 <es'' fis''>4 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2
\stemNeutral r4 <es'' fis''>4.--\mf <es'' fis''>8 <es'' fis''>4 |
r4 <es'' fis''>4.--\pp <es'' fis''>8 <es'' fis''>4 |
r4 <es'' fis''>4.--\mf <es'' fis''>8 <es'' fis''>4 |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\stemNeutral r4 c''4.--\p c''8 c''4 |
\repeat unfold 5 { \stemNeutral r4 c''4.-- c''8 c''4 | }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3
\stemNeutral r4 c''4.--\p c''8 c''4 |
\repeat unfold 5 { \stemNeutral r4 c''4.-- c''8 c''4 | }
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\stemNeutral r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\pp <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4
\stemNeutral r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\pp <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
 r1 | r1 | r1 |
\stemNeutral r4 cis''4.--\p cis''8 cis''4 |
\repeat unfold 5 { \stemNeutral r4 cis''4.-- cis''8 cis''4 | }
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5
 r1 | r1 | r1 |
\stemNeutral r4 <a'' c''>4.--\mf <a'' c''>8 <a'' c''>4 |
r4 <a'' c''>4.--\pp <a'' c''>8 <a'' c''>4 |
r4 <a'' c''>4.--\mf <a'' c''>8 <a'' c''>4 |
\stemNeutral r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\pp <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6
 r1 | r1 | r1 |
\stemNeutral r4 <a'' c''>4.--\mf <a'' c''>8 <a'' c''>4 |
r4 <a'' c''>4.--\pp <a'' c''>8 <a'' c''>4 |
r4 <a'' c''>4.--\mf <a'' c''>8 <a'' c''>4 |
\stemNeutral r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\pp <cis'' f''>8 <cis'' f''>4 |
r4 <cis'' f''>4.--\mf <cis'' f''>8 <cis'' f''>4 |
\stemNeutral r4 cis''4.--\p cis''8 cis''4 |
\repeat unfold 5 { \stemNeutral r4 cis''4.-- cis''8 cis''4 | }

\bar "|."
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TheHollowEarth_Vibes = {
 \set Staff.pedalSustainStyle = #'bracket
\clef treble
<<{\stemDown r4 b8[\pp\sustainOn g8] b8[ g8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f' h'>4 <f' h'>4 <f' h'>4 } r4 |}>>
<<{ \stemDown r4 b8[ g8] b8[ g8] r4 | r4 b8[ g8] b8[ g8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f' h'>4 <f' h'>4 <f' h'>4 } r4 | r4 \tuplet 3/2 { \stemUp <f' h'>4 <f' h'>4 <f' h'>4 } r4 | }>>
\stemNeutral r4 <b f'>4.--\mf\sustainOn <b f'>8 <b f'>4 |
\repeat unfold 4 { \stemNeutral r4 <b f'>4.-- <b f'>8 <b f'>4 | }
r4 <b f'>4.-- <b f'>8 <b f'>4\sustainOff |
<<{\stemDown r4 b8[\pp\sustainOn es'8] b8[ es'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f'' h''>4 <f'' h''>4 <f'' h''>4 } r4 |}>>
<<{ \stemDown r4 b8[ es'8] b8[ es'8] r4 | r4 b8[ es'8] b8[ es'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f'' h''>4 <f'' h''>4 <f'' h''>4 } r4 | r4 \tuplet 3/2 { \stemUp <f'' h''>4 <f'' h''>4 <f'' h''>4 } r4 | }>>
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1
 r1 | r1 | r1 |
 r1 | r1 | r1 |
<<{\stemDown r4 es'8[\pp\sustainOn fis'8] es'8[ fis'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <b'' e''>4 <b'' e''>4 <b'' e''>4 } r4 |}>>
<<{ \stemDown r4 es'8[ fis'8] es'8[ fis'8] r4 | r4 es'8[ fis'8] es'8[ fis'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <b'' e''>4 <b'' e''>4 <b'' e''>4 } r4 | r4 \tuplet 3/2 { \stemUp <b'' e''>4 <b'' e''>4 <b'' e''>4 } r4 | }>>
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2
 r1 | r1 | r1 |
<<{\stemDown r4 es'8[\pp\sustainOn g'8] es'8[ g'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <fis'' c''>4 <fis'' c''>4 <fis'' c''>4 } r4 |}>>
<<{ \stemDown r4 es'8[ g'8] es'8[ g'8] r4 | r4 es'8[ g'8] es'8[ g'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <fis'' c''>4 <fis'' c''>4 <fis'' c''>4 } r4 | r4 \tuplet 3/2 { \stemUp <fis'' c''>4 <fis'' c''>4 <fis'' c''>4 } r4 | }>>
<<{\stemDown r4 as'8[\pp\sustainOn c''8] as'8[ c''8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <fis'' c'''>4 <fis'' c'''>4 <fis'' c'''>4 } r4 |}>>
<<{ \stemDown r4 as'8[ c''8] as'8[ c''8] r4 | r4 as'8[ c''8] as'8[ c''8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <fis'' c'''>4 <fis'' c'''>4 <fis'' c'''>4 } r4 | r4 \tuplet 3/2 { \stemUp <fis'' c'''>4 <fis'' c'''>4 <fis'' c'''>4 } r4 | }>>
\stemNeutral r4 <as'' es''>4.--\mf\sustainOn <as'' es''>8 <as'' es''>4 |
\repeat unfold 4 { \stemNeutral r4 <as'' es''>4.-- <as'' es''>8 <as'' es''>4 | }
r4 <as'' es''>4.-- <as'' es''>8 <as'' es''>4\sustainOff |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3
\stemNeutral r4 <as'' es''>4.--\mf\sustainOn <as'' es''>8 <as'' es''>4 |
\repeat unfold 4 { \stemNeutral r4 <as'' es''>4.-- <as'' es''>8 <as'' es''>4 | }
r4 <as'' es''>4.-- <as'' es''>8 <as'' es''>4\sustainOff |
<<{\stemDown r4 as'8[\pp\sustainOn c''8] as'8[ c''8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <as'' d'''>4 <as'' d'''>4 <as'' d'''>4 } r4 |}>>
<<{ \stemDown r4 as'8[ c''8] as'8[ c''8] r4 | r4 as'8[ c''8] as'8[ c''8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <as'' d'''>4 <as'' d'''>4 <as'' d'''>4 } r4 | r4 \tuplet 3/2 { \stemUp <as'' d'''>4 <as'' d'''>4 <as'' d'''>4 } r4 | }>>
<<{\stemDown r4 as'8[\pp\sustainOn f'8] as'8[ f'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <as'' d'''>4 <as'' d'''>4 <as'' d'''>4 } r4 |}>>
<<{ \stemDown r4 as'8[ f'8] as'8[ f'8] r4 | r4 as'8[ f'8] as'8[ f'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <as'' d'''>4 <as'' d'''>4 <as'' d'''>4 } r4 | r4 \tuplet 3/2 { \stemUp <as'' d'''>4 <as'' d'''>4 <as'' d'''>4 } r4 | }>>
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4
 r1 | r1 | r1 |
<<{\stemDown r4 des''8[\pp\sustainOn f''8] des''8[ f''8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f''' h''>4 <f''' h''>4 <f''' h''>4 } r4 |}>>
<<{ \stemDown r4 des''8[ f''8] des''8[ f''8] r4 | r4 des''8[ f''8] des''8[ f''8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f''' h''>4 <f''' h''>4 <f''' h''>4 } r4 | r4 \tuplet 3/2 { \stemUp <f''' h''>4 <f''' h''>4 <f''' h''>4 } r4 | }>>
\stemNeutral r4 <b' f'>4.--\mf\sustainOn <b' f'>8 <b' f'>4 |
\repeat unfold 4 { \stemNeutral r4 <b' f'>4.-- <b' f'>8 <b' f'>4 | }
r4 <b' f'>4.-- <b' f'>8 <b' f'>4\sustainOff |
<<{\stemDown r4 des'8[\pp\sustainOn fis'8] des'8[ fis'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f'' h'>4 <f'' h'>4 <f'' h'>4 } r4 |}>>
<<{ \stemDown r4 des'8[ fis'8] des'8[ fis'8] r4 | r4 des'8[ fis'8] des'8[ fis'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <f'' h'>4 <f'' h'>4 <f'' h'>4 } r4 | r4 \tuplet 3/2 { \stemUp <f'' h'>4 <f'' h'>4 <f'' h'>4 } r4 | }>>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5
<<{\stemDown r4 des'8[\pp\sustainOn fis'8] des'8[ fis'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <b'' e''>4 <b'' e''>4 <b'' e''>4 } r4 |}>>
<<{ \stemDown r4 des'8[ fis'8] des'8[ fis'8] r4 | r4 des'8[ fis'8] des'8[ fis'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <b'' e''>4 <b'' e''>4 <b'' e''>4 } r4 | r4 \tuplet 3/2 { \stemUp <b'' e''>4 <b'' e''>4 <b'' e''>4 } r4 | }>>
 r1 | r1 | r1 |
 r1 | r1 | r1 |
<<{\stemDown r4 des'8[\pp\sustainOn f'8] des'8[ f'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <b' e''>4 <b' e''>4 <b' e''>4 } r4 |}>>
<<{ \stemDown r4 des'8[ f'8] des'8[ f'8] r4 | r4 des'8[ f'8] des'8[ f'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <b' e''>4 <b' e''>4 <b' e''>4 } r4 | r4 \tuplet 3/2 { \stemUp <b' e''>4 <b' e''>4 <b' e''>4 } r4 | }>>
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6
<<{\stemDown r4 b8[\pp\sustainOn f'8] b8[ f'8] r4 | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <h' f''>4 <h' f''>4 <h' f''>4 } r4 |}>>
<<{ \stemDown r4 b8[ f'8] b8[ f'8] r4 | r4 b8[ f'8] b8[ f'8] r4\sustainOff | }\\
{\tupletUp r4 \tuplet 3/2 { \stemUp <h' f''>4 <h' f''>4 <h' f''>4 } r4 | r4 \tuplet 3/2 { \stemUp <h' f''>4 <h' f''>4 <h' f''>4 } r4 | }>>
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\stemNeutral r4 <b'' f''>4.--\mf\sustainOn <b'' f''>8 <b'' f''>4 |
\repeat unfold 4 { \stemNeutral r4 <b'' f''>4.-- <b'' f''>8 <b'' f''>4 | }
r4 <b'' f''>4.-- <b'' f''>8 <b'' f''>4\sustainOff |


\bar"|."

  }


%% There are some useful snippets below - in particular the drum staff

%{
cellOne_Perc = { bes'!16[ bes' bes' bes'] bes'16[ bes' bes' bes']  }
cellTwo_Perc = { bes'!16[ cis''! bes' bes'] bes'16[ cis'' bes' bes'] }
cellThree_Perc = { bes'!16[ d'' bes' es''!] bes'16[ d'' bes' es''] }
cellFour_Perc = { f''16[ bes'! bes' bes'] f''16[ bes' bes' bes'] } 
cellFive_Perc = {  g''16[ bes'! es''! bes'] g''16[ bes' es'' bes'] }

  
PercTwoCOne = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
             } 


up = \drummode { 
  \override NoteHead.style = #'xcircle
  \repeat unfold 16 { \stemUp crashcymbal16 crashcymbal crashcymbal crashcymbal } } 
down = \drummode { 
  \override NoteHead.style = #'cross
  \repeat unfold 16 { \stemDown \tuplet 3/2 { hihat8 hh hh } } }

PercTwoCTwo =  { 
               \revert NoteHead.style
               \tuplet 3/2 { bes,8\pp bes, bes, }
               \repeat unfold 2 { \tuplet 3/2 { bes,8 bes, bes, } }
               \repeat unfold 3 { \tuplet 3/2 { bes,8 bes, bes, } }
               \repeat unfold 2 { bes,4 \glissando_\markup{gliss with pedal} a,4 }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               }
               
PercTwoCThree = { 
               \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 2 { a,4 \glissando_\markup{sim.} bes,4 }
               \repeat unfold 3 { \tuplet 3/2 { bes,8 bes, bes, } }
               \repeat unfold 3 { \tuplet 3/2 { bes,8 bes, bes, } }
               } 
PercTwoCFour = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
              } 
PercTwoCFive = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
              } 
PercTwoCSix = { \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { bes,8 bes, bes, } }
               \repeat unfold 3 { \tuplet 3/2 { bes,8 bes, bes, } }
               \repeat unfold 2 { bes,4 \glissando a,4 }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
             } 
PercTwoCSeven = { \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 2 { a,4 \glissando f,4 }
               \repeat unfold 3 { \tuplet 3/2 { f,8 f, f, } }
               \repeat unfold 3 { \tuplet 3/2 { f,8 f, f, } }
               } 
PercTwoCEight = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
               } 
PercTwoCNine = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
              } 
PercTwoCTen = { \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { f,8 f, f, } }
               \repeat unfold 3 { \tuplet 3/2 { f,8 f, f, } }
               \repeat unfold 2 { f,4 \glissando a,4 }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
             } 
PercTwoCEleven = { 
               \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 3 { \tuplet 3/2 { a,8 a, a, } }
               \repeat unfold 2 { a,4 \glissando g,4 }
               \repeat unfold 3 { \tuplet 3/2 { g,8 g, g, } }
               \repeat unfold 3 { \tuplet 3/2 { g,8 g, g, } }
                } 
PercTwoCTwelve = {
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
               } 
PercTwoCThirteen = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 } 
                  } 
PercTwoCFourteen = { 
               \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { g,8 g, g, } }
               \repeat unfold 3 { \tuplet 3/2 { g,8 g, g, } }
               \repeat unfold 2 { g,4 \glissando es,4 }
               \repeat unfold 3 { \tuplet 3/2 { es,8 es, es, } }
               \repeat unfold 3 { \tuplet 3/2 { es,8 es, es, } }
                  } 
PercTwoCFifteen = { 
               \revert NoteHead.style
               \repeat unfold 3 { \tuplet 3/2 { es,8 es, es, } }
               \repeat unfold 3 { \tuplet 3/2 { es,8 es, es, } }
               \repeat unfold 2 { es,4 \glissando g,4 }
               \repeat unfold 3 { \tuplet 3/2 { g,8 g, g, } }
               \repeat unfold 3 { \tuplet 3/2 { g,8 g, g, } }
                 } 
                 
PercTwoCSixteen = { 
               \repeat unfold 3 { r4 } 
               \repeat unfold 3 { r4 }
               \repeat unfold 4 { r4 }
               \repeat unfold 3 { r4 }
               \repeat unfold 3 { r4 }
                 } 
  
  theHollowEarth_Percussion_ModuleTwo = {
    \time 4/4
   \clef bass
   % One
  %<< \up \\ \down >>
  \repeat unfold 3 { r1 }
  r1^\markup{Timpani and Cymbals with soft mallets}
  <<   \up \\ \PercTwoCTwo >>
  << \up \\ \PercTwoCThree >>
  % Four
  << \up \\ \down >>
  \mark #1
  % Five
  %<< \up \\ \down >>
  \repeat unfold 4 { r1 }
  \PercTwoCSix 
  \PercTwoCSeven
  % Eight
  << \up \\ \down >>
  \mark #2
  % Nine
  %<< \up \\ \down >>
  \repeat unfold 4 { r1 }
  \PercTwoCTen
  \PercTwoCEleven
  << \up \\ \down >>
  \mark #3
  % Thirteen
  %<< \up \\ \down >>
  \repeat unfold 4 { r1 }
  << \up \\ \PercTwoCFourteen >>
  << \up \\ \PercTwoCFifteen >>
  << \up \\ \down >>
  %}