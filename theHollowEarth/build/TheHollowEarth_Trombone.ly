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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vcModules in authentic vcMode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TheHollowEarth_Trombone = {

\time 4/4

\clef bass
  r1 | r1 | r1 |
\stemNeutral r4 cis4.--\p cis8 cis4 |
\repeat unfold 5 { \stemNeutral r4 cis4.-- cis8 cis4 | }
 r1 | r1 | r1 |
r4 h4.--\pp h8 h4-- |
h8[ h8] h4.-- h8 h4-- |
dis8[ dis8] dis4.-- dis8 dis4-- |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1
r4 h4.--\pp h8 h4-- |
h8[ h8] h4.-- h8 h4-- |
dis'8[ dis'8] dis'4.-- dis'8 dis'4-- |
r4 cis'4.--\pp cis'8 cis'4-- |
cis'8[ cis'8] cis'4.-- cis'8 cis'4-- |
f'8[ f'8] f'4.-- f'8 f'4-- |
 r1 | r1 | r1 |
r4 es'4.--\pp es'8 es'4-- |
es'8[ es'8] es'4.-- es'8 es'4-- |
fis'8[ fis'8] fis'4.-- fis'8 fis'4-- |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2
r4 es'4.--\pp es'8 es'4-- |
es'8[ es'8] es'4.-- es'8 es'4-- |
fis'8[ fis'8] fis'4.-- fis'8 fis'4-- |
 r1 | r1 | r1 |
\repeat unfold 3 { r4 as16[\pp\< as as geh] as16[ as as geh] as16[\mp as as geh] } |
\stemNeutral r4 c'4.--\p c'8 c'4 |
\repeat unfold 5 { \stemNeutral r4 c'4.-- c'8 c'4 | }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3
\stemNeutral r4 c'4.--\p c'8 c'4 |
\repeat unfold 5 { \stemNeutral r4 c'4.-- c'8 c'4 | }
\repeat unfold 3 { r4 as16[\pp\< beh as geh] as16[ beh as geh] as16[\mp beh as geh] } |
\repeat unfold 3 { r4 as16[\pp\< beh as f] as16[ beh as f] as16[\mp beh as f] } |
r4 cis'4.--\pp cis'8 cis'4-- |
cis'8[ cis'8] cis'4.-- cis'8 cis'4-- |
f'8[ f'8] f'4.-- f'8 f'4-- |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4
r4 cis'4.--\pp cis'8 cis'4-- |
cis'8[ cis'8] cis'4.-- cis'8 cis'4-- |
f'8[ f'8] f'4.-- f'8 f'4-- |
\repeat unfold 3 { r4 des'16[\pp\< f' des' b] des'16[ f' des' b] des'16[\mp f' des' b] } |
\stemNeutral r4 cis'4.--\p cis'8 cis'4 |
\repeat unfold 5 { \stemNeutral r4 cis'4.-- cis'8 cis'4 | }
\repeat unfold 3 { r4 des'16[\pp\< eseh' des' b] des'16[ eseh' des' b] des'16[\mp eseh' des' b] } |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5
\repeat unfold 3 { r4 des'16[\pp\< eseh' des' hih] des'16[ eseh' des' hih] des'16[\mp eseh' des' hih] } |
r4 a'4.--\pp a'8 a'4-- |
a'8[ a'8] a'4.-- a'8 a'4-- |
c'8[ c'8] c'4.-- c'8 c'4-- |
r4 cis'4.--\pp cis'8 cis'4-- |
cis'8[ cis'8] cis'4.-- cis'8 cis'4-- |
f'8[ f'8] f'4.-- f'8 f'4-- |
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6
 r1 | r1 | r1 |
r4 a'4.--\pp a'8 a'4-- |
a'8[ a'8] a'4.-- a'8 a'4-- |
c'8[ c'8] c'4.-- c'8 c'4-- |
r4 cis'4.--\pp cis'8 cis'4-- |
cis'8[ cis'8] cis'4.-- cis'8 cis'4-- |
f'8[ f'8] f'4.-- f'8 f'4-- |
\stemNeutral r4 cis''4.--\p cis''8 cis''4 |
\repeat unfold 5 { \stemNeutral r4 cis''4.-- cis''8 cis''4 | }
 \bar "|."

  
}
