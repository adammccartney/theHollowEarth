\version "2.18.2"
\language "deutsch"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

staffUpper = {\change Staff = upper \stemDown}
staffLower = {\change Staff = lower \stemNeutral}
startRepeat = {\set Score.repeatCommands = #'(start-repeat)}
endRepeat = {\set Score.repeatCommands = #'(end-repeat)}
beamAccel = { \override Beam.grow-direction = #RIGHT }
beamDeccel = { \override Beam.grow-direction = #LEFT }
beamNeutral = { \override Beam.grow-direction = #f }

startRit = { \override TextSpanner.bound-details.left.text =
             \markup { \upright "rit." } }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Themes, right hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TheHollowEarth_PianoRight = {
\clef treble \stemNeutral
 r1 | r1 | r1 |
r1 | r1 | r1 |
r1 | r1 | r1 | 
 r1 | r1 | r1 |
r4 r8 r16 des16 r16 as8. r8 r16 es16 | r2 r4 r8 r16 des16 | r16 as8. r8 r16 es16 r2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 16
\mark #1
r4 r8 r16 des16 r16 des'8. r8 r16 es'16 | r2 r4 r8 r16 des16 | r16 des'8. r8 r16 es'16 r2 |
r4 r8 r16 f''16 r16 des'8. r8 r16 des''16 | r2 r4 r8 r16 f''16 | r16 des'8. r8 r16 des''16 r2 |
\staffLower \clef bass
 r1 | r1 | r1 |
r4 r8 r16 fis16 r16 des8. r8 r16 ges,16 | r2 r4 r8 r16 fis16 | r16 des8. r8 r16 ges,16 r2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 28
\mark #2
r4 r8 r16 fis,16 r16 b,8. r8 r16 ges16 | r2 r4 r8 r16 fis,16 | r16 b,8. r8 r16 ges16 r2 |
\staffUpper \clef treble
 r1 | r1 | r1 |
r4 r8 r16 b'16 r16 es'8. r8 r16 c'16 | r2 r4 r8 r16 b'16 | r16 es'8. r8 r16 c'16 r2 |
r1 | r1 | r1 |
r1 | r1 | r1 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 43
\mark #3
r1 | r1 | r1 |
r1 | r1 | r1 | 
r4 r8 r16 c''16 r16 es''8. r8 r16 c''16 | r2 r4 r8 r16 c''16 | r16 es''8. r8 r16 c''16 r2 |
\staffLower \clef bass
 r1 | r1 | r1 |
r4 r8 r16 c,16 r16 c8. r8 r16 f16 | r2 r4 r8 r16 c,16 | r16 c8. r8 r16 f16 r2 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 58
\mark #4
r4 r8 r16 f16 r16 a'8. r8 r16 f'16 | r2 r4 r8 r16 f16 | r16 a'8. r8 r16 f'16 r2 |
 r1 | r1 | r1 |
r1 | r1 | r1 |
r1 | r1 | r1 | 
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 73
\mark #5
 r1 | r1 | r1 |
\staffUpper \clef treble
r4 r8 r16 f'16 r16 c''8. r8 r16 des''16 | r2 r4 r8 r16 f'16 | r16 c''8. r8 r16 des''16 r2 |
\staffLower \clef bass
r4 r8 r16 f,16 r16 des,8. r8 r16 f,16 | r2 r4 r8 r16 f,16 | r16 des,8. r8 r16 f,16 r2 |
 r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 85
\mark #6
 r1 | r1 | r1 |
\staffUpper \clef treble
r4 r8 r16 es''16 r16 c''8. r8 r16 des'16 | r2 r4 r8 r16 es''16 | r16 c''8. r8 r16 des'16 r2 |
r4 r8 r16 des'16 r16 f'8. r8 r16 es'16 | r2 r4 r8 r16 des'16 | r16 f'8. r8 r16 es'16 r2 |
r1 | r1 | r1 |
r1 | r1 | r1 | 
 
 \bar "|."

  
}

% Themes, left hand %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TheHollowEarth_PianoLeft = {
 \set Staff.pedalSustainStyle = #'bracket
\clef bass

r4 r8 r16 <b, b,,>16\sustainOn r16 <g g,>8. r8 r16 <f f,>16 | r2 r4 r8 r16 <b, b,,>16 | r16 <g g,>8. r8 r16 <f f,>16 r2 |
r8 r16 b,16 r16 b16[ f8] r4 r8 r16 b,16 | r16 b16[ f8] r4 r8 r16 b,16 r16 b,16[ f8] | r4 r8 r16 b, r16 b,16[ f8] r4 |
r8 r16 f,16 r16 b,16[ b8] r4 r8 r16 f,16 | r16 b,16[ b8] r4 r8 r16 b16 r16 b,16[ b,8] | r4 r8 r16 b r16 b,16[ b,8] r4 |
r4 r8 r16 <b,, b,>16 r16 <es, es>8. r8 r16 <f, f>16 | r2 r4 r8 r16 <b,, b,>16 | r16 <es, es>8. r8 r16 <f, f>16 r2 |
r4 r8 r16 b,,16 r16 f,,8. r8 r16 h,,16 | r2 r4 r8 r16 b,,16 | r16 f,,8. r8 r16 h,,16 r2 |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 16
\mark #1

r4 r8 r16 b,,16\sustainOff\sustainOn r16 b,8. r8 r16 h,16 | r2 r4 r8 r16 b,,16 | r16 b,8. r8 r16 h,16 r2 |
r4 r8 r16 cis16 r16 b,8. r8 r16 b16 | r2 r4 r8 r16 cis16 | r16 b,8. r8 r16 b16\unaCorda r2 |
\staffUpper
\clef treble
r4 r8 r16 <fis' fis''>16 r16 <es es'>8. r8 r16 <b' b''>16 | r2 r4 r8 r16 <fis' fis''>16 | r16 <es es'>8. r8 r16 <b' b''>16 r2 |
r4 r8 r16 es''16 r16 b''8. r8 r16 es'16 | r2 r4 r8 r16 es''16 | r16 b''8. r8 r16 es'16 r2 |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 28
\mark #2

r4 r8 r16 es'16 r16 fis'8. r8 r16 es''16 | r2 r4 r8 r16 es'16 | r16 fis'8. r8 r16 es''16 r2 |
\staffLower
\clef bass
r4 r8 r16 <fis fis,>16\sustainOff\sustainOn\treCorde  r16 <g g,>8. r8 r16 <es, es>16 | r2 r4 r8 r16 <fis fis,>16 | r16 <g g,>8. r8 r16 <es, es>16 r2 |
r4 r8 r16 fis,16 r16 c,8. r8 r16 as,,16 | r2 r4 r8 r16 fis,16 | r16 c,8. r8 r16 as,,16 r2 |
\ottava #-1
r8 r16 as,,16\sustainOff\sustainOn r16 fis,,16[ as,,8] r4 r8 r16 as,,16 | r16 fis,,16[ as,,8] r4 r8 r16 as,,16 r16 as,16[ fis,,8] | r4 r8 r16 as,, r16 as,16[ fis,,8] r4 |
r8 r16 fis,16 r16 as,16[ as,8] r4 r8 r16 fis,16 | r16 as,16[ as,8] r4 r8 r16 as,,16 r16 as,16[ as,,8] | r4 r8 r16 as,, r16 as,16[ as,,8] r4 |


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 43
\mark #3
\ottava #0

r8 r16 as,16 r16 as,,16[ as,8] r4 r8 r16 as,16 | r16 as,,16[ as,8] r4 r8 r16 as,,16 r16 as16[ as,8] | r4 r8 r16 as,, r16 as16[ as,8] r4 |
r8 r16 as16 r16 as16[ as8] r4 r8 r16 as16 | r16 as16[ as8] r4 r8 r16 as,16 r16 as16[ as,,8] | r4 r8 r16 as, r16 as16[ as,8] r4 |
r4 r8 r16 as16\sustainOff\sustainOn r16 c8. r8 r16 as16 | r2 r4 r8 r16 as16 | r16 c8.\unaCorda r8 r16 as16 r2 |
\staffUpper
\clef treble
r4 r8 r16 <as as'>16 r16 <f' f''>8. r8 r16 <as' as''>16 | r2 r4 r8 r16 <as as'>16 | r16 <f' f''>8. r8 r16 <as' as''>16 r2 |
r4 r8 r16 as'16 r16 as''8. r8 r16 cis''16 | r2 r4 r8 r16 as'16 | r16 as''8. r8 r16 cis''16 r2 |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 58
\mark #4
r4 r8 r16 b''16 r16 f'''8. r8 r16 cis'''16 | r2 r4 r8 r16 b''16 | r16 f'''8. r8 r16 cis'''16 r2 |
\ottava #1
r4 r8 r16 <f'''' f'''>16 r16 <des''' des''>8. r8 r16 <f'''' f'''>16 | r2 r4 r8 r16 <f'''' f'''>16 | r16 <des''' des''>8. r8 r16 <f'''' f'''>16 r2 |
\ottava #0
r8 r16 b'''16 r16 b''16[ f'''8] r4 r8 r16 b'''16 | r16 b''16[ f'''8] r4 r8 r16 b''16 r16 b''16[ f'''8] | r4 r8 r16 b'' r16 b''16[ f'''8] r4 |
r8 r16 f''16 r16 b''16[ b'8] r4 r8 r16 f''16 | r16 b''16[ b'8] r4 r8 r16 b'''16 r16 b''16[ b''8] | r4 r8 r16 b''' r16 b''16[ b'''8] r4 |
\ottava #1
r4 r8 r16 <fis'''' fis'''>16 r16 <f'''' f'''>8. r8 r16 <des''' des''>16 | r2 r4 r8 r16 <fis'''' fis'''>16 | r16 <f'''' f'''>8. r8 r16 <des''' des''>16 r2 |

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 73
\mark #5
\ottava #0

r4 r8 r16 <b' b''>16 r16 <fis' fis''>8. r8 r16 <des' des>16 | r2 r4 r8 r16 <b' b''>16 | r16 <fis' fis''>8. r8 r16 <des' des>16 r2 |
\staffLower
\clef bass
r4 r8 r16 des,16\sustainOff\sustainOn\treCorde r16 a8. r8 r16 b16 | r2 r4 r8 r16 des,16 | r16 a8. r8 r16 b16 r2 |
\staffUpper
\clef treble
r4 r8 r16 des'16 r16 b'8. r8 r16 cis'16 | r2 r4 r8 r16 des'16 | r16 b'8. r8 r16 cis'16 r2 |
r4 r8 r16 <f' f''>16 r16 <des' des''>8. r8 r16 <b' b''>16 | r2 r4 r8 r16 <f' f''>16 | r16 <des' des''>8. r8 r16 <b' b''>16 r2 |


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Bar 85
\mark #6

r4 r8 r16 <f'' f'''>16 r16 <h'' h'''>8. r8 r16 <b' b''>16 | r2 r4 r8 r16 <f'' f'''>16 | r16 <h'' h'''>8. r8 r16 <b' b''>16 r2 |
\staffLower
\clef bass
r4 r8 r16 h16\sustainOff\sustainOn r16 a8. r8 r16 b,16 | r2 r4 r8 r16 h16 | r16 a8. r8 r16 b,16 r2 |
r4 r8 r16 b,,16 r16 cis,8. r8 r16 h,16 | r2 r4 r8 r16 b,,16 | r16 cis,8. r8 r16 h,16 r2 |
r8 r16 b,16 r16 h,16[ b,,8] r4 r8 r16 b,16 | r16 h,16[ b,,8] r4 r8 r16 b,,16 r16 b16[ h,8] | r4 r8 r16 b,, r16 b16[ h,8] r4 |
r8 r16 h16 r16 b16[ b8] r4 r8 r16 h16 | r16 b16[ b8] r4 r8 r16 b,16 r16 b16[ b,,8] | r4 r8 r16 b, r16 b16[ b,8] r4 |
 
 \bar "|."

}

