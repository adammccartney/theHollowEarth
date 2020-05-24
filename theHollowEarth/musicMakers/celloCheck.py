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

Fundamental = Fundamentals[2] #as
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[2]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[2]
DiatonicThirdAboveF = DiatonicThirdsAboveF[2]
DiatonicThirdBelowF = DiatonicThirdsBelowF[2]


# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Klein,DiatonicThirdAboveF+Klein,DiatonicThirdBelowF+Gross)
print(phrase)

GreenSixteenths.format
