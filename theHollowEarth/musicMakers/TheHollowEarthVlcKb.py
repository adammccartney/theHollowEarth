# Very short script to iterate through an array that
# contains strings representing the notes and rests of
# an ostinato.

import itertools


##################################################
## This is the pitch material 

MelodyTones = [ "g", "b", "es", "h",
                "h", "cis", "fis", "es",
                "es", "g", "c", "as",
                "as", "c", "f", "cis",
                "cis", "f", "b", "fis",
                "fis", "a", "cis", "f",
                "f", "a", "cis", "b"]

MelodyTThirds = [ "b", "cis", "fis", "dis",
                  "dis", "f", "b", "fis",
                  "fis", "b", "es", "c",
                  "c", "es", "as", "f",
                  "f", "as", "cis", "b",
                  "b", "c", "f", "as",
                  "as", "c", "f", "cis"]

MelodyTFifths = [ "cis", "f", "b", "fis",
                  "fis", "as", "cis", "b",
                  "b", "cis", "g", "es",
                  "es", "g", "c", "as",
                  "as", "c", "f", "cis",
                  "cis", "es", "as", "c",
                  "c", "es", "as", "f"]

TailTones = ["f","b","fis","as","f","b","h"]
TailTriTones = ["h","e","c","d","h","e","f"]

Fundamentals = ["b","es","as","des","b"]
FndThirdPartial = ["f","b","es","as","f"]
FndFifthPartial = ["d","g","c","f","d"]
ThreeQuarterTonesAboveF = ["ceh","feh","beh","eseh","ceh"] # Three quarter tone above the fundamental
ThreeQuarterTonesBelowF = ["aeh","deh","geh","hih","aeh"] # Three quarter tone below the fundamental
DiatonicThirdsAboveF = ["des","ges","c","f","des"] # Diatonic third above the fundamental
DiatonicThirdsBelowF = ["g","c","f","b","g"] # Diatonic third below the fundamental

#################################################

## These strings convey information about the Octave position of pitch  

Octave = (",,,",",,",",","","'","''","'''","''''")

Viergestr = Octave[7]
Dreigestr = Octave[6]
Zweigestr = Octave[5]
Eingestr = Octave[4]
Klein = Octave[3]
Gross = Octave[2]
Contra = Octave[1]
SubContra = Octave[0]

###################################################

## These strings contain the rhythmical information

# Each on of these strings will receive a .format() suffix when running the script that iterates through
# the pitchspace. As the two different types of permutation take a different number of placeholder arguments
# it would be good to design some method to error check these.

## To do: it also looks as if we need to go up a level
#  in abstraction at this stage i.e. design two distinct classses with member functions for each speed of Perm. 


PermOneSlow = "r4 {0}4\ppp^\ord r16 {1}8. ~ {1}8. r16 | {2}2 r4 {0}4 | r16 {1}8. ~ {1}8. r16 {2}2 | "

PermTwoSlow = "r4 {0}4\ppp^\ord r16 {2}8. ~ {2}8. r16 | {1}2 r4 {0}4 | r16 {2}8. ~ {2}8. r16 {1}2 | "

PermThreeSlow = "r4 {1}4\ppp^\ord r16 {0}8. ~ {0}8. r16 | {2}2 r4 {1}4 | r16 {0}8. ~ {0}8. r16 {2}2 | "

PermFourSlow = "r4 {1}4\ppp^\ord r16 {2}8. ~ {2}8. r16 | {0}2 r4 {1}4 | r16 {2}8. ~ {2}8. r16 {0}2 | "

PermFiveSlow = "r4 {2}4\ppp^\ord r16 {1}8. ~ {1}8. r16 | {0}2 r4 {2}4 | r16 {1}8. ~ {1}8. r16 {0}2 | "

PermSixSlow = "r4 {2}4\ppp^\ord r16 {0}8. ~ {0}8. r16 | {1}2 r4 {2}4 | r16 {0}8. ~ {0}8. r16 {1}2 | "

GreenSixteenths = "\\repeat unfold 3 {{ r4 {0}16[\pp\< {1} {0} {2}] {0}16[ {1} {0} {2}] {0}16[\mp {1} {0} {2}] }} |"


## Rests ####################################################################

ThreeBarRest = "r1 | r1 | r1 |"
SixBarRest = """r1 | r1 | r1 |
r1 | r1 | r1 |"""

#############################################################################

## These routines build phrases out of Pitch, Octave and Rhythmic information
#  A phrase can be three or six bars long

###########################################################################

## Section 1 / 7 %% Bar 1
Tail = TailTones[0]
Fundamental = Fundamentals[0]
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[0]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[0]
DiatonicThirdAboveF = DiatonicThirdsAboveF[0]
DiatonicThirdBelowF = DiatonicThirdsBelowF[0]

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[3]
phrase = PermTwoSlow.format(Fundamental+Gross,Middle+Gross,Tail+Gross)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 16
\mark #1""")

###############################################################################

## Section 2 / 7 
Tail = TailTones[1]

# Red * 2
phrase = ""
Middle = MelodyTones[4]
phrase = PermTwoSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

phrase = ""
Middle = MelodyTones[5]
phrase = PermThreeSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

Fundamental = Fundamentals[1] # es
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[1]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[1]
DiatonicThirdAboveF = DiatonicThirdsAboveF[1]
DiatonicThirdBelowF = DiatonicThirdsBelowF[1]

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[7]
phrase = PermFourSlow.format(Fundamental+Eingestr,Middle+Klein,Tail+Klein)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 28
\mark #2""")

#################################################################################


## Section 3 / 7 
Tail = TailTones[2]

# Red
phrase = ""
Middle = MelodyTones[8]
phrase = PermFourSlow.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr)
print(phrase)

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

Fundamental = Fundamentals[2] # as
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[2]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[2]
DiatonicThirdAboveF = DiatonicThirdsAboveF[2]
DiatonicThirdBelowF = DiatonicThirdsBelowF[2]

# Red/Green
phrase = ""
Middle = MelodyTones[10]
phrase = PermFiveSlow.format(Fundamental+Klein,Middle+Klein,Tail+Klein)
print(phrase)


# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 43
\mark #3""")

###############################################################################

## Section 4 / 7 
Tail = TailTones[3]

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

# Red/Green
phrase = ""
Middle = MelodyTones[13]
phrase = PermOneSlow.format(Fundamental+Klein,Middle+Klein,Tail+Klein)
print(phrase)

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Gross,ThreeQuarterToneAboveF+Gross,DiatonicThirdBelowF+Gross)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[15]
phrase = PermTwoSlow.format(Fundamental+Klein,Middle+Eingestr,Tail+Klein)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 
Tail = TailTones[4]
Fundamental = Fundamentals[3] # des
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[3]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[3]
DiatonicThirdAboveF = DiatonicThirdsAboveF[3]
DiatonicThirdBelowF = DiatonicThirdsBelowF[3]


# Red
phrase = ""
Middle = MelodyTones[16]
phrase = PermTwoSlow.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr)
print(phrase)


# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Klein,DiatonicThirdAboveF+Klein,DiatonicThirdBelowF+Gross)
print(phrase)

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)


# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Klein,ThreeQuarterToneAboveF+Klein,DiatonicThirdBelowF+Gross)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 73
\mark #5""")

###############################################################

## Section 6 / 7 
Tail = TailTones[5]


# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Klein,ThreeQuarterToneAboveF+Klein,ThreeQuarterToneBelowF+Gross)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[22]
phrase = PermOneSlow.format(Fundamental+Klein,Middle+Gross,Tail+Gross)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[23]
phrase = PermTwoSlow.format(Fundamental+Klein,Middle+Klein,Tail+Klein)
print(phrase)

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 85
\mark #6""")

###############################################################

## Section 7 / 7 
Tail = TailTones[6]
Fundamental = Fundamentals[4] #b
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[4]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[4]
DiatonicThirdAboveF = DiatonicThirdsAboveF[4]
DiatonicThirdBelowF = DiatonicThirdsBelowF[4]


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[25]
phrase = PermFiveSlow.format(Fundamental+Klein,Middle+Gross,Tail+Gross)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[26]
phrase = PermOneSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

