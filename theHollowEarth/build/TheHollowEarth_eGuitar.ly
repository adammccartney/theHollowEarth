\version "2.18.2"
\language "deutsch"
  
  %%%%%%%%
  %%%%%%%%Macros
  %%%%%%%%

makeBeamAccel = { \override Beam.grow-direction = #RIGHT }
  
makeBeamDeccel = { \override Beam.grow-direction = #LEFT }
  
makeBeamNeutral = { \override Beam.grow-direction = #'() }
  
    startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

ebow = \markup { ebow }

  %%%%%%%%
  %%%%%%%%
  %%%%%%%%
 
%{
ModuleTwo_GuitChordVoicings = {
  \time 2/4
<es' f' a' f''>2\arpeggio \bar "!"
<des' f' b' f''>2\arpeggio \bar "!"
<des' es' b' es''>2\arpeggio \bar "!"
<c' es' a' es''>2\arpeggio \bar"!" 

<c' des' f' des''>2\arpeggio \bar"!"
<b des' g' d''>2\arpeggio \bar"!"
<b c' es' c''>2\arpeggio \bar"!"
<as c' f' c''>2\arpeggio \bar"!"

<as b des' b'>2\arpeggio \bar"!"
<g a es' b'>2\arpeggio \bar"!"
<fis a cis' a'>2\arpeggio \bar"!"
<f a cis' a'>2\arpeggio \bar"!"

<f ges des' as'>2\arpeggio \bar"!"
<es as c' as'>2\arpeggio \bar"!"
<es as c' f'>2\arpeggio \bar"!"
<des bes des' f'>2\arpeggio \bar"!"

}

%}

TheHollowEarth_eGuitar = {
 
\time 4/4
\clef treble
 r1 | r1 | r1 |
\stemNeutral r4 cis4.--\p cis8 cis4 |
\repeat unfold 5 { r4 cis4.-- cis8 cis4 | }
 r1 | r1 | r1 |
r4 <dis dis'>4.--\pp <dis dis'>8 <dis dis'>4-- |
<dis dis'>8[ <dis dis'>8] <dis dis'>4.-- <dis dis'>8 <dis dis'>4-- |
<dis dis'>8[ <dis dis'>8] <h h'>4.-- <h h'>8 <h h'>4-- |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1
r4 <dis dis'>4.--\pp <dis dis'>8 <dis dis'>4-- |
<dis dis'>8[ <dis dis'>8] <dis dis'>4.-- <dis dis'>8 <dis dis'>4-- |
<dis dis'>8[ <dis dis'>8] <h h'>4.-- <h h'>8 <h h'>4-- |
r4 <f f'>4.--\pp <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <f f'>4.-- <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <cis cis'>4.-- <cis cis'>8 <cis cis'>4-- |
 r1 | r1 | r1 |
r4 <fis fis'>4.--\pp <fis fis'>8 <fis fis'>4-- |
<fis fis'>8[ <fis fis'>8] <fis fis'>4.-- <fis fis'>8 <fis fis'>4-- |
<fis fis'>8[ <fis fis'>8] <es es'>4.-- <es es'>8 <es es'>4-- |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2
r4 <fis fis'>4.--\pp <fis fis'>8 <fis fis'>4-- |
<fis fis'>8[ <fis fis'>8] <fis fis'>4.-- <fis fis'>8 <fis fis'>4-- |
<fis fis'>8[ <fis fis'>8] <es es'>4.-- <es es'>8 <es es'>4-- |
 r1 | r1 | r1 |
 r1 | r1 | r1 |
\stemNeutral r4 c4.--\p c8 c4 |
\repeat unfold 5 { r4 c4.-- c8 c4 | }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3
\stemNeutral r4 c4.--\p c8 c4 |
\repeat unfold 5 { r4 c4.-- c8 c4 | }
 r1 | r1 | r1 |
 r1 | r1 | r1 |
r4 <f f'>4.--\pp <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <f f'>4.-- <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <cis cis'>4.-- <cis cis'>8 <cis cis'>4-- |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4
r4 <f f'>4.--\pp <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <f f'>4.-- <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <cis cis'>4.-- <cis cis'>8 <cis cis'>4-- |
 r2. des4\p\<^\ebow ~ | des1 ~ | des1\mp | 
\stemNeutral r4 cis4.--\p cis8 cis4 |
\repeat unfold 5 { r4 cis4.-- cis8 cis4 | }
 r2. des4\p\<^\ebow ~ | des1 ~ | des1\mp | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5
 r2. b4\p\<^\ebow ~ | b1 ~ | b1\mp | 
r4 <c c'>4.--\pp <c c'>8 <c c'>4-- |
<c c'>8[ <c c'>8] <c c'>4.-- <c c'>8 <c c'>4-- |
<c c'>8[ <c c'>8] <a a'>4.-- <a a'>8 <a a'>4-- |
r4 <f f'>4.--\pp <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <f f'>4.-- <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <cis cis'>4.-- <cis cis'>8 <cis cis'>4-- |
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6
 r1 | r1 | r1 |
r4 <c c'>4.--\pp <c c'>8 <c c'>4-- |
<c c'>8[ <c c'>8] <c c'>4.-- <c c'>8 <c c'>4-- |
<c c'>8[ <c c'>8] <a a'>4.-- <a a'>8 <a a'>4-- |
r4 <f f'>4.--\pp <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <f f'>4.-- <f f'>8 <f f'>4-- |
<f f'>8[ <f f'>8] <cis cis'>4.-- <cis cis'>8 <cis cis'>4-- |
\stemNeutral r4 cis'4.--\p cis'8 cis'4 |
\repeat unfold 5 { r4 cis'4.-- cis'8 cis'4 | }

 \bar "|."

   }


