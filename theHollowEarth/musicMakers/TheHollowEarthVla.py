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


PermOneSlow = "r4 {0}4\ppp^\ord r16 {1}8. ~ {1}8. r16 | {2}2:32^\pont r4 {0}4 | r16 {1}8. ~ {1}8. r16 {2}2:32^\pont | "

PermTwoSlow = "r4 {0}4\ppp^\ord r16 {2}8. ~ {2}8. r16 | {1}2:32^\pont r4 {0}4 | r16 {2}8. ~ {2}8. r16 {1}2:32^\pont | "

PermThreeSlow = "r4 {1}4\ppp^\ord r16 {0}8. ~ {0}8. r16 | {2}2:32^\pont r4 {1}4 | r16 {0}8. ~ {0}8. r16 {2}2:32^\pont | "

PermFourSlow = "r4 {1}4\ppp^\ord r16 {2}8. ~ {2}8. r16 | {0}2:32^\pont r4 {1}4 | r16 {2}8. ~ {2}8. r16 {0}2:32^\pont | "

PermFiveSlow = "r4 {2}4\ppp^\ord r16 {1}8. ~ {1}8. r16 | {0}2:32^\pont r4 {2}4 | r16 {1}8. ~ {1}8. r16 {0}2:32^\pont | "

PermSixSlow = "r4 {2}4\ppp^\ord r16 {0}8. ~ {0}8. r16 | {1}2:32^\pont r4 {2}4 | r16 {0}8. ~ {0}8. r16 {1}2:32^\pont | "

GreenPedal = " r2. {0}4\pp ~ | {0}1 ~ | {0}1 | "

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
ThirdPartial = FndThirdPartial[0]
Fundamental = Fundamentals[0]

# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Zweigestr)
print(phrase)

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[3]
phrase = PermTwoSlow.format(ThirdPartial+Klein,Middle+Eingestr,Tail+Eingestr)
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
phrase = PermTwoSlow.format(ThirdPartial+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

phrase = ""
Middle = MelodyTones[5]
phrase = PermThreeSlow.format(ThirdPartial+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

ThirdPartial = FndThirdPartial[1]
Fundamental = Fundamentals[1] # es

# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[7]
phrase = PermFourSlow.format(ThirdPartial+Zweigestr,Middle+Eingestr,Tail+Eingestr)
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
phrase = PermFourSlow.format(ThirdPartial+Zweigestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Zweigestr)
print(phrase)

ThirdPartial = FndThirdPartial[2]
Fundamental = Fundamentals[2] # as

# Red/Green
phrase = ""
Middle = MelodyTones[10]
phrase = PermFiveSlow.format(ThirdPartial+Eingestr,Middle+Eingestr,Tail+Eingestr)
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
phrase = PermOneSlow.format(ThirdPartial+Eingestr,Middle+Eingestr,Tail+Eingestr)
print(phrase)

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[15]
phrase = PermTwoSlow.format(ThirdPartial+Eingestr,Middle+Zweigestr,Tail+Eingestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 
Tail = TailTones[4]
ThirdPartial = FndThirdPartial[3]
Fundamental = Fundamentals[3] #des

# Red
phrase = ""
Middle = MelodyTones[16]
phrase = PermTwoSlow.format(ThirdPartial+Zweigestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)


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

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 73
\mark #5""")

###############################################################

## Section 6 / 7 
Tail = TailTones[5]


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[22]
phrase = PermOneSlow.format(ThirdPartial+Eingestr,Middle+Klein,Tail+Klein)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[23]
phrase = PermTwoSlow.format(ThirdPartial+Eingestr,Middle+Eingestr,Tail+Eingestr)
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
ThirdPartial = FndThirdPartial[4]
Fundamental = Fundamentals[4] #b


# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[25]
phrase = PermFiveSlow.format(ThirdPartial+Eingestr,Middle+Klein,Tail+Klein)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[26]
phrase = PermOneSlow.format(ThirdPartial+Klein,Middle+Eingestr,Tail+Eingestr)
print(phrase)

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

