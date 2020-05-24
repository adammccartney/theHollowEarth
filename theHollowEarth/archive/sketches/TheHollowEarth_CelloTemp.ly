\version "2.18.2"
\language "deutsch"

% Macros %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


ord = \markup { ord. }
tasto = \markup { sul tasto }
pont = \markup{ sul pont.  }
pizz = \markup{ pizz. }
arco = \markup { arco }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% vcModules in authentic vcMode %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

TheHollowEarth_CelloTemp = {

\time 4/4

\clef bass
r1 | r1 | r1 |
r4 b,4-.\mp^\pizz r4 b,4-. | r4 b,4-. r4 r8 b8-. | r4 b,4-. r4 b,4-. |
r4 b,4-. r4 r8 b8-. | r4 b,4-. r4 b,4-. | r4 b,4-. r4 r8 b8-. |
r1 | r1 | r1 |
r4 b,4\ppp^\ord^\arco r16 f,8. ~ f,8. r16 | h,2 r4 b,4 | r16 f,8. ~ f,8. r16 h,2 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 16
\mark #1
r4 b,4\ppp^\ord r16 b8. ~ b8. r16 | h2 r4 b,4 | r16 b8. ~ b8. r16 h2 | 
r4 cis4\ppp^\ord r16 b,8. ~ b,8. r16 | b2 r4 cis4 | r16 b,8. ~ b,8. r16 b2 | 
r1 | r1 | r1 |
r4 es4\ppp^\ord r16 b8. ~ b8. r16 | es'2 r4 es4 | r16 b8. ~ b8. r16 es'2 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 28
\mark #2
r4 es'4\ppp^\ord r16 fis'8. ~ fis'8. r16 | es'2 r4 es'4 | r16 fis'8. ~ fis'8. r16 es'2 | 
r1 | r1 | r1 |
r4 fis4\ppp^\ord r16 c8. ~ c8. r16 | as2 r4 fis4 | r16 c8. ~ c8. r16 as2 | 
r4 as,4-.\mp^\pizz r4 as,4-. | r4 as,4-. r4 r8 fis,8-. | r4 as,4-. r4 as,4-. |
r4 as,4-. r4 r8 fis,8-. | r4 as,4-. r4 as,4-. | r4 as,4-. r4 r8 fis,8-. |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 43
\mark #3
r4 as,4-.\mp^\pizz r4 as,4-. | r4 as,4-. r4 r8 as,8-. | r4 as,4-. r4 as,4-. |
r4 as,4-. r4 r8 as,8-. | r4 as,4-. r4 as,4-. | r4 as,4-. r4 r8 as,8-. |
r4 as4\ppp^\ord^\arco r16 c8. ~ c8. r16 | as2 r4 as4 | r16 c8. ~ c8. r16 as2 | 
\repeat unfold 3 { r4 as,16[\pp\< beh, as, f,] as,16[ beh, as, f,] as,16[\mp beh, as, f,] } |
r4 as4\ppp^\ord r16 as8. ~ as8. r16 | cis'2 r4 as4 | r16 as8. ~ as8. r16 cis'2 | 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 58
\mark #4
r4 des'4\ppp^\ord r16 f'8. ~ f'8. r16 | cis'2 r4 des'4 | r16 f'8. ~ f'8. r16 cis'2 | 
\repeat unfold 3 { r4 des16[\pp\< f des b,] des16[ f des b,] des16[\mp f des b,] } |
r4 des4-.\mp^\pizz r4 des4-. | r4 des4-. r4 r8 b8-. | r4 des4-. r4 des4-. |
r4 des4-. r4 r8 b8-. | r4 des4-. r4 des4-. | r4 des4-. r4 r8 b8-. |
r4 des16[\pp\<^\arco eseh des b,] des16[ eseh des b,] des16[\mp eseh des b,]
\repeat unfold 2 { r4 des16[\pp\< eseh des b,] des16[ eseh des b,] des16[\mp eseh des b,] } |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 73
\mark #5
\repeat unfold 3 { r4 des16[\pp\< eseh des hih,] des16[ eseh des hih,] des16[\mp eseh des hih,] } |
r4 des4\ppp^\ord r16 cis,8. ~ cis,8. r16 | b,2 r4 des4 | r16 cis,8. ~ cis,8. r16 b,2 | 
r4 des4\ppp^\ord r16 b8. ~ b8. r16 | f2 r4 des4 | r16 b8. ~ b8. r16 f2 | 
r1 | r1 | r1 |
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 85
\mark #6
r1 | r1 | r1 |
r4 h,4\ppp^\ord r16 a,8. ~ a,8. r16 | b2 r4 h,4 | r16 a,8. ~ a,8. r16 b2 | 
r4 b,4\ppp^\ord r16 cis8. ~ cis8. r16 | h2 r4 b,4 | r16 cis8. ~ cis8. r16 h2 | 
r4 b,4-.\mp^\pizz r4 b,4-. | r4 b,4-. r4 r8 b8-. | r4 b,4-. r4 b,4-. |
r4 b,4-. r4 r8 b8-. | r4 b,4-. r4 b,4-. | r4 b,4-. r4 r8 b8-. 

\bar "|."

}
