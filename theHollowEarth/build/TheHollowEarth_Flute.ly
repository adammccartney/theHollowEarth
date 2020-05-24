\version "2.18.2"
\language "deutsch"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

textSpanOrd = { \override TextSpanner.bound-details.left.text = "Ord. -> Pont." }
textSpanPont = { \override TextSpanner.bound-details.left.text = "Sul Pont." }
textSpanTasto = { \override TextSpanner.bound-details.left.text = "Sul Tasto" }
ord = \markup { ord. }
tasto = \markup { sul tasto }
pont = \markup{ sul pont.  }
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }
bowTrem = \markup{ bow tremolo }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }


glissUDefFSounding = { \override Staff.Glissando.bound-details.right.Y = #3 }
glissUDefDSounding = { \override Staff.Glissando.bound-details.right.Y = #2 }
glissUDef = { \override Staff.Glissando.bound-details.right.Y = #1.5 }
glissDefault = { \revert Staff.Glissando.bound-detils.right.Y }

glissandoSkipOn = {
  \override NoteColumn.glissando-skip = ##t
  \hide NoteHead
  \override NoteHead.no-ledgers = ##t
}

glissandoSkipOff = {
  \revert NoteColumn.glissando-skip
  \undo \hide NoteHead
  \revert NoteHead.no-ledgers
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vcModules in authentic vcMode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


TheHollowEarth_Flute = {

\clef treble
\repeat unfold 3 { r4 b'16[\mp\> ceh'' b' aeh'] b'16[ ceh'' b' aeh'] b'16[\pp ceh'' b' aeh'] } |
\stemNeutral r2 r4 cis''4--\pp ~ |
\repeat unfold 4 { \stemNeutral cis''4 cis''4.-- cis''8 cis''4 ~ | }
\stemNeutral cis''4 cis''4.-- r8 r4 | 
\repeat unfold 3 { r4 b'16[\mp\> des'' b' aeh'] b'16[ des'' b' aeh'] b'16[\pp des'' b' aeh'] } |
\stemNeutral r4 h''2.--\pp\<\glissando |
hih''4.\!\mp r8 r4 h''4\pp\<\glissando \glissandoSkipOn |
h''2 \glissandoSkipOff hih''4.\!\mp r8 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1
\stemNeutral r4 h''2.--\pp\<\glissando |
hih''4.\!\mp r8 r4 h''4\pp\<\glissando \glissandoSkipOn |
h''2 \glissandoSkipOff hih''4.\!\mp r8 | 
\stemNeutral r4 cis''2.--\pp\<\glissando |
cisih''4.\!\mp r8 r4 cis''4\pp\<\glissando \glissandoSkipOn |
cis''2 \glissandoSkipOff cisih''4.\!\mp r8 | 
\repeat unfold 3 { r4 es''16[\mp\> ges'' es'' c''] es''16[ ges'' es'' c''] es''16[\pp ges'' es'' c''] } |
\stemNeutral r4 es''2.--\pp\<\glissando |
eeh''4.\!\mp r8 r4 es''4\pp\<\glissando \glissandoSkipOn |
es''2 \glissandoSkipOff eeh''4.\!\mp r8 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2
\stemNeutral r4 es''2.--\pp\<\glissando |
eeh''4.\!\mp r8 r4 es''4\pp\<\glissando \glissandoSkipOn |
es''2 \glissandoSkipOff eeh''4.\!\mp r8 | 
\repeat unfold 3 { r4 es''16[\mp\> feh'' es'' c''] es''16[ feh'' es'' c''] es''16[\pp feh'' es'' c''] } |
 r1 | r1 | r1 |
\stemNeutral r2 r4 c''4--\pp ~ |
\repeat unfold 4 { \stemNeutral c''4 c''4.-- c''8 c''4 ~ | }
\stemNeutral c''4 c''4.-- r8 r4 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3
\stemNeutral r2 r4 c''4--\pp ~ |
\repeat unfold 4 { \stemNeutral c''4 c''4.-- c''8 c''4 ~ | }
\stemNeutral c''4 c''4.-- r8 r4 | 
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\stemNeutral r4 cis''2.--\pp\<\glissando |
cisih''4.\!\mp r8 r4 cis''4\pp\<\glissando \glissandoSkipOn |
cis''2 \glissandoSkipOff cisih''4.\!\mp r8 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4
\stemNeutral r4 cis''2.--\pp\<\glissando |
cisih''4.\!\mp r8 r4 cis''4\pp\<\glissando \glissandoSkipOn |
cis''2 \glissandoSkipOff cisih''4.\!\mp r8 | 
 r1 | r1 | r1 |
\stemNeutral r2 r4 cis''4--\pp ~ |
\repeat unfold 4 { \stemNeutral cis''4 cis''4.-- cis''8 cis''4 ~ | }
\stemNeutral cis''4 cis''4.-- r8 r4 | 
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5
 r1 | r1 | r1 |
\stemNeutral r4 a''2.--\pp\<\glissando |
aih''4.\!\mp r8 r4 a''4\pp\<\glissando \glissandoSkipOn |
a''2 \glissandoSkipOff aih''4.\!\mp r8 | 
\stemNeutral r4 cis''2.--\pp\<\glissando |
cisih''4.\!\mp r8 r4 cis''4\pp\<\glissando \glissandoSkipOn |
cis''2 \glissandoSkipOff cisih''4.\!\mp r8 | 
\repeat unfold 3 { r4 des''16[\mp\> eseh'' des'' des''] des''16[ eseh'' des'' des''] des''16[\pp eseh'' des'' des''] } |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6
\repeat unfold 3 { r4 b''16[\mp\> ceh''' b'' aeh''] b''16[ ceh''' b'' aeh''] b''16[\pp ceh''' b'' aeh''] } |
\stemNeutral r4 a''2.--\pp\<\glissando |
aih''4.\!\mp r8 r4 a''4\pp\<\glissando \glissandoSkipOn |
a''2 \glissandoSkipOff aih''4.\!\mp r8 | 
\stemNeutral r4 cis''2.--\pp\<\glissando |
cisih''4.\!\mp r8 r4 cis''4\pp\<\glissando \glissandoSkipOn |
cis''2 \glissandoSkipOff cisih''4.\!\mp r8 | 
\stemNeutral r2 r4 cis''4--\pp ~ |
\repeat unfold 4 { \stemNeutral cis''4 cis''4.-- cis''8 cis''4 ~ | }
\stemNeutral cis''4 cis''4.-- r8 r4 | 
 
 \bar "|."

}
