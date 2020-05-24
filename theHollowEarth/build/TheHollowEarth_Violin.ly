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

TheHollowEarth_Violin = {

\time 4/4
\clef treble
 r2. b'''4\pp ~ | b'''1 ~ | b'''1 | 
r1 | r1 | r1 |
r1 | r1 | r1 |
 r2. b'''4\pp ~ | b'''1 ~ | b'''1 | 
r4 d'4\ppp^\ord r16 f''8. ~ f''8. r16 | h''2:32^\pont r4 d'4 | r16 f''8. ~ f''8. r16 h''2:32^\pont | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 16
\mark #1
r4 d''4\ppp^\ord r16 b'''8. ~ b'''8. r16 | h'''2:32^\pont r4 d''4 | r16 b'''8. ~ b'''8. r16 h'''2:32^\pont | 
r4 cis'''4\ppp^\ord r16 d''8. ~ d''8. r16 | b'''2:32^\pont r4 cis'''4 | r16 d''8. ~ d''8. r16 b'''2:32^\pont | 
 r2. es'''4\pp ~ | es'''1 ~ | es'''1 | 
r4 es''4\ppp^\ord r16 b''8. ~ b''8. r16 | g'''2:32^\pont r4 es''4 | r16 b''8. ~ b''8. r16 g'''2:32^\pont | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 28
\mark #2
r4 es'''4\ppp^\ord r16 fis'''8. ~ fis'''8. r16 | g'''2:32^\pont r4 es'''4 | r16 fis'''8. ~ fis'''8. r16 g'''2:32^\pont | 
 r2. es'''4\pp ~ | es'''1 ~ | es'''1 | 
r4 fis''4\ppp^\ord r16 c''8. ~ c''8. r16 | c''2:32^\pont r4 fis''4 | r16 c''8. ~ c''8. r16 c''2:32^\pont | 
r1 | r1 | r1 |
r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 43
\mark #3
r1 | r1 | r1 |
r1 | r1 | r1 |
r4 c''4\ppp^\ord r16 c''8. ~ c''8. r16 | as''2:32^\pont r4 c''4 | r16 c''8. ~ c''8. r16 as''2:32^\pont | 
r1 | r1 | r1 |
r4 c''4\ppp^\ord r16 as''8. ~ as''8. r16 | cis'''2:32^\pont r4 c''4 | r16 as''8. ~ as''8. r16 cis'''2:32^\pont | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 58
\mark #4
r4 f'''4\ppp^\ord r16 f'''8. ~ f'''8. r16 | cis'''2:32^\pont r4 f'''4 | r16 f'''8. ~ f'''8. r16 cis'''2:32^\pont | 
r1 | r1 | r1 |
r1 | r1 | r1 |
r1 | r1 | r1 |
r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 73
\mark #5
r1 | r1 | r1 |
r4 f''4\ppp^\ord r16 cis'8. ~ cis'8. r16 | b'2:32^\pont r4 f''4 | r16 cis'8. ~ cis'8. r16 b'2:32^\pont | 
r4 f''4\ppp^\ord r16 b''8. ~ b''8. r16 | f''2:32^\pont r4 f''4 | r16 b''8. ~ b''8. r16 f''2:32^\pont | 
r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 85
\mark #6
 r2. b'''4\pp ~ | b'''1 ~ | b'''1 | 
r4 h'4\ppp^\ord r16 a'8. ~ a'8. r16 | d'2:32^\pont r4 h'4 | r16 a'8. ~ a'8. r16 d'2:32^\pont | 
r4 d''4\ppp^\ord r16 cis'8. ~ cis'8. r16 | h'2:32^\pont r4 d''4 | r16 cis'8. ~ cis'8. r16 h'2:32^\pont | 
r1 | r1 | r1 |
r1 | r1 | r1 |
 
 \bar "|."

  
}
