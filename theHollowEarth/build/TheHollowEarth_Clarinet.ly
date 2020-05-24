\version "2.18.2"
\language "deutsch"


  
    %%%%%%%%
  %%%%%%%%Macros
  %%%%%%%%
  
  beamAccel = { \override Beam.grow-direction = #RIGHT }
  
  beamDeccel = { \override Beam.grow-direction = #LEFT }
  
  beamNeutral = { \override Beam.grow-direction = #f }
  
  startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

  
%% Glissando Macros
glissUDefGWritten = { \override Staff.Glissando.bound-details.right.Y = #3.25 }  
glissUDef = { \override Staff.Glissando.bound-details.right.Y = #2.5 }
glissUDefDWritten = { \override Staff.Glissando.bound-details.right.Y = #1.5 }
glissDefault = { \revert Staff.Glissando.bound-details }

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

  %%%%%%%%
  %%%%%%%%
  %%%%%%%%


  TheHollowEarth_Clarinet = {
    \transpose c' b
%\glissandoUDef
\clef treble
\repeat unfold 3 { r4 b''16[\pp\< ceh''' b'' aeh''] b''16[ ceh''' b'' aeh''] b''16[\mp ceh''' b'' aeh''] } |
 r2 r4 cis''4--\pp ~ |
\repeat unfold 4 { cis''4 cis''4.-- cis''8 cis''4 ~ | }
cis''4 cis''4.-- r8 r4 | 
\repeat unfold 3 { r4 b''16[\pp\< des''' b'' aeh''] b''16[ des''' b'' aeh''] b''16[\mp des''' b'' aeh''] } |
 r4 dis''2.--\pp\<\glissando |
disih''4.\!\mp r8 r4 dis''4\pp\<\glissando \glissandoSkipOn |
dis''2 \glissandoSkipOff disih''4.\!\mp r8 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1
 r4 dis''2.--\pp\<\glissando |
disih''4.\!\mp r8 r4 dis''4\pp\<\glissando \glissandoSkipOn |
dis''2 \glissandoSkipOff disih''4.\!\mp r8 | 
 r4 f''2.--\pp\<\glissando |
fih''4.\!\mp r8 r4 f''4\pp\<\glissando \glissandoSkipOn |
f''2 \glissandoSkipOff fih''4.\!\mp r8 | 
\repeat unfold 3 { r4 es''16[\pp\< ges'' es'' c''] es''16[ ges'' es'' c''] es''16[\mp ges'' es'' c''] } |
 r4 fis''2.--\pp\<\glissando |
fisih''4.\!\mp r8 r4 fis''4\pp\<\glissando \glissandoSkipOn |
fis''2 \glissandoSkipOff fisih''4.\!\mp r8 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2
 r4 fis''2.--\pp\<\glissando |
fisih''4.\!\mp r8 r4 fis''4\pp\<\glissando \glissandoSkipOn |
fis''2 \glissandoSkipOff fisih''4.\!\mp r8 | 
\repeat unfold 3 { r4 es''16[\pp\< feh'' es'' c''] es''16[ feh'' es'' c''] es''16[\mp feh'' es'' c''] } |
\repeat unfold 3 { r4 as''16[\pp\< beh'' as'' geh''] as''16[ beh'' as'' geh''] as''16[\mp beh'' as'' geh''] } |
 r2 r4 c''4--\pp ~ |
\repeat unfold 4 { c''4 c''4.-- c''8 c''4 ~ | }
c''4 c''4.-- r8 r4 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3
 r2 r4 c''4--\pp ~ |
\repeat unfold 4 { c''4 c''4.-- c''8 c''4 ~ | }
c''4 c''4.-- r8 r4 | 
\repeat unfold 3 { r4 as''16[\pp\< as'' as'' geh''] as''16[ as'' as'' geh''] as''16[\mp as'' as'' geh''] } |
 r1 | r1 | r1 |
 r4 f''2.--\pp\<\glissando |
fih''4.\!\mp r8 r4 f''4\pp\<\glissando \glissandoSkipOn |
f''2 \glissandoSkipOff fih''4.\!\mp r8 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4
 r4 f''2.--\pp\<\glissando |
fih''4.\!\mp r8 r4 f''4\pp\<\glissando \glissandoSkipOn |
f''2 \glissandoSkipOff fih''4.\!\mp r8 | 
 r1 | r1 | r1 |
 r2 r4 cis''4--\pp ~ |
\repeat unfold 4 { cis''4 cis''4.-- cis''8 cis''4 ~ | }
cis''4 cis''4.-- r8 r4 | 
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5
 r1 | r1 | r1 |
 r4 c''2.--\pp\<\glissando |
cih''4.\!\mp r8 r4 c''4\pp\<\glissando \glissandoSkipOn |
c''2 \glissandoSkipOff cih''4.\!\mp r8 | 
 r4 f''2.--\pp\<\glissando |
fih''4.\!\mp r8 r4 f''4\pp\<\glissando \glissandoSkipOn |
f''2 \glissandoSkipOff fih''4.\!\mp r8 | 
\repeat unfold 3 { r4 des''16[\pp\< eseh'' des'' des''] des''16[ eseh'' des'' des''] des''16[\mp eseh'' des'' des''] } |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6
\repeat unfold 3 { r4 b''16[\pp\< ceh''' b'' aeh''] b''16[ ceh''' b'' aeh''] b''16[\mp ceh''' b'' aeh''] } |
 r4 c''2.--\pp\<\glissando |
cih''4.\!\mp r8 r4 c''4\pp\<\glissando \glissandoSkipOn |
c''2 \glissandoSkipOff cih''4.\!\mp r8 | 
 r4 f''2.--\pp\<\glissando |
fih''4.\!\mp r8 r4 f''4\pp\<\glissando \glissandoSkipOn |
f''2 \glissandoSkipOff fih''4.\!\mp r8 | 
 r2 r4 cis''4--\pp ~ |
\repeat unfold 4 { cis''4 cis''4.-- cis''8 cis''4 ~ | }
cis''4 cis''4.-- r8 r4 | 
 
	\bar "|."
  }
  
  