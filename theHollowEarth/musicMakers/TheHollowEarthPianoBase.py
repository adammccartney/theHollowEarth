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


PermOneSlow = "r4 r8 r16 {0}16 r16 {1}8. r8 r16 {2}16 | r2 r4 r8 r16 {0}16 | r16 {1}8. r8 r16 {2}16 r2 |"
PermOneSlowGreen = "r4 r8 r16 <{0} {3}>16 r16 <{1} {4}>8. r8 r16 <{2} {5}>16 | r2 r4 r8 r16 <{0} {3}>16 | r16 <{1} {4}>8. r8 r16 <{2} {5}>16 r2 |"
PermOneFast = """r8 r16 {0}16 r16 {1}16[ {2}8] r4 r8 r16 {0}16 | r16 {1}16[ {2}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {0}8] r4 |"""
PermTwoSlow = "r4 r8 r16 {0}16 r16 {2}8. r8 r16 {1}16 | r2 r4 r8 r16 {0}16 | r16 {2}8. r8 r16 {1}16 r2 |"
PermTwoSlowGreen = "r4 r8 r16 <{0} {3}>16 r16 <{2} {5}>8. r8 r16 <{1} {4}>16 | r2 r4 r8 r16 <{0} {3}>16 | r16 <{2} {5}>8. r8 r16 <{1} {4}>16 r2 |"
PermTwoFast = """r8 r16 {0}16 r16 {2}16[ {1}8] r4 r8 r16 {0}16 | r16 {2}16[ {1}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {0}8] r4 |"""
PermThreeSlow = "r4 r8 r16 {1}16 r16 {0}8. r8 r16 {2}16 | r2 r4 r8 r16 {1}16 | r16 {0}8. r8 r16 {2}16 r2 |"
PermThreeSlowGreen = "r4 r8 r16 <{1} {4}>16 r16 <{0} {3}>8. r8 r16 <{2} {5}>16 | r2 r4 r8 r16 <{1} {4}>16 | r16 <{0} {3}>8. r8 r16 <{2} {5}>16 r2 |"
PermThreeFast ="""r8 r16 {1}16 r16 {0}16[ {2}8] r4 r8 r16 {1}16 | r16 {0}16[ {2}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {1}8] r4 |"""
PermFourSlow = "r4 r8 r16 {1}16 r16 {2}8. r8 r16 {0}16 | r2 r4 r8 r16 {1}16 | r16 {2}8. r8 r16 {0}16 r2 |"
PermFourSlowGreen = "r4 r8 r16 <{1} {4}>16 r16 <{2} {5}>8. r8 r16 <{0} {3}>16 | r2 r4 r8 r16 <{1} {4}>16 | r16 <{2} {5}>8. r8 r16 <{0} {3}>16 r2 |"
PermFourFast = """r8 r16 {1}16 r16 {2}16[ {0}8] r4 r8 r16 {1}16 | r16 {2}16[ {0}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {1}8] r4 |"""
PermFiveSlow = "r4 r8 r16 {2}16 r16 {1}8. r8 r16 {0}16 | r2 r4 r8 r16 {2}16 | r16 {1}8. r8 r16 {0}16 r2 |"
PermFiveSlowGreen = "r4 r8 r16 <{2} {5}>16 r16 <{1} {4}>8. r8 r16 <{0} {3}>16 | r2 r4 r8 r16 <{2} {5}>16 | r16 <{1} {4}>8. r8 r16 <{0} {3}>16 r2 |"
PermFiveFast = """r8 r16 {2}16 r16 {1}16[ {0}8] r4 r8 r16 {2}16 | r16 {1}16[ {0}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {2}8] r4 |"""
PermSixSlow = "r4 r8 r16 {2}16 r16 {0}8. r8 r16 {1}16 | r2 r4 r8 r16 {2}16 | r16 {0}8. r8 r16 {1}16 r2 |"
PermSixSlowGreen = "r4 r8 r16 <{2} {5}>16 r16 <{0} {3}>8. r8 r16 <{1} {4}>16 | r2 r4 r8 r16 <{2} {5}>16 | r16 <{0} {3}>8. r8 r16 <{1} {4}>16 r2 |"


## These routines build phrases out of Pitch, Octave and Rhythmic information
#  A phrase can be three or six bars long

###########################################################################

## Section 1 / 7 %% Bar 1
Tail = TailTones[0]
Fundamental = Fundamentals[0]

# Green
phrase = ""
Middle = MelodyTones[0]
phrase = PermOneSlowGreen.format(Fundamental+Gross,Middle+Klein,Tail+Klein,Fundamental+Contra,Middle+Gross,Tail+Gross)
print(phrase)

# Blue
phrase = ""
Middle = MelodyTones[1]
phrase = PermOneFast.format(Fundamental+Gross,Middle+Klein,Tail+Klein,Middle+Gross,Tail+Gross,Fundamental+Klein)
print(phrase)

# Green
phrase = ""
Middle = MelodyTones[2]
phrase = PermOneSlowGreen.format(Fundamental+Contra,Middle+Gross,Tail+Gross,Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[3]
phrase = PermTwoSlow.format(Fundamental+Contra,Middle+Contra,Tail+Contra)
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
phrase = PermTwoSlow.format(Fundamental+Contra,Middle+Gross,Tail+Gross)
print(phrase)

phrase = ""
Middle = MelodyTones[5]
phrase = PermThreeSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

Fundamental = Fundamentals[1]

# Green
phrase = ""
Middle = MelodyTones[6]
phrase = PermThreeSlowGreen.format(Fundamental+Klein,Middle+Eingestr,Tail+Eingestr,Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[7]
phrase = PermFourSlow.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
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
phrase = PermFourSlow.format(Fundamental+Zweigestr,Middle+Eingestr,Tail+Eingestr)
print(phrase)

# Green
phrase = ""
Middle = MelodyTones[9]
phrase = PermFiveSlowGreen.format(Fundamental+Gross,Middle+Klein,Tail+Klein,Fundamental+Klein,Middle+Gross,Tail+Gross)
print(phrase)

Fundamental = Fundamentals[2]

# Red/Green
phrase = ""
Middle = MelodyTones[10]
phrase = PermFiveSlow.format(Fundamental+Contra,Middle+Gross,Tail+Gross)
print(phrase)


# Blue
phrase = ""
Middle = MelodyTones[11]
phrase = PermTwoFast.format(Fundamental+Contra,Middle+Contra,Tail+Contra,Middle+Gross,Tail+Gross,Fundamental+Gross)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 43
\mark #3""")

###############################################################################

## Section 4 / 7 
Tail = TailTones[3]

# Blue
phrase = ""
Middle = MelodyTones[12]
phrase = PermThreeFast.format(Fundamental+Contra,Middle+Gross,Tail+Gross,Middle+Klein,Tail+Klein,Fundamental+Klein)
print(phrase)

# Red/Green
phrase = ""
Middle = MelodyTones[13]
phrase = PermOneSlow.format(Fundamental+Klein,Middle+Klein,Tail+Klein)
print(phrase)

# Green
phrase = ""
Middle = MelodyTones[14]
phrase = PermOneSlowGreen.format(Fundamental+Klein,Middle+Eingestr,Tail+Eingestr,Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[15]
phrase = PermTwoSlow.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 
Tail = TailTones[4]
Fundamental = Fundamentals[3]


# Red
phrase = ""
Middle = MelodyTones[16]
phrase = PermTwoSlow.format(Fundamental+Zweigestr,Middle+Dreigestr,Tail+Dreigestr)
print(phrase)


# Green
phrase = ""
Middle = MelodyTones[17]
phrase = PermThreeSlowGreen.format(Fundamental+Dreigestr,Middle+Viergestr,Tail+Viergestr,Fundamental+Zweigestr,Middle+Dreigestr,Tail+Dreigestr)
print(phrase)

# Blue
phrase = ""
Middle = MelodyTones[18]
phrase = PermThreeFast.format(Fundamental+Zweigestr,Middle+Dreigestr,Tail+Dreigestr,Middle+Zweigestr,Tail+Zweigestr,Fundamental+Eingestr)
print(phrase)


# Green
phrase = ""
Middle = MelodyTones[19]
phrase = PermFourSlowGreen.format(Fundamental+Dreigestr,Middle+Viergestr,Tail+Viergestr,Fundamental+Zweigestr,Middle+Dreigestr,Tail+Dreigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 73
\mark #5""")

###############################################################

## Section 6 / 7 
Tail = TailTones[5]


# Green
phrase = ""
Middle = MelodyTones[20]
phrase = PermFiveSlowGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr,Fundamental+Klein,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[21]
phrase = PermOneSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[22]
phrase = PermTwoSlow.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr)
print(phrase)

# Green
phrase = ""
Middle = MelodyTones[23]
phrase = PermThreeSlowGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr,Fundamental+Zweigestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)


print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 85
\mark #6""")

###############################################################

## Section 7 / 7 
Tail = TailTones[6]
Fundamental = Fundamentals[4]


# Green
phrase = ""
Middle = MelodyTones[24]
phrase = PermFourSlowGreen.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr,Fundamental+Zweigestr,Middle+Dreigestr,Tail+Dreigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[25]
phrase = PermFiveSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[26]
phrase = PermOneSlow.format(Fundamental+Contra,Middle+Gross,Tail+Gross)
print(phrase)

# Blue
phrase = ""
Middle = MelodyTones[27]
phrase = PermFourFast.format(Fundamental+Contra,Middle+Gross,Tail+Gross,Middle+Klein,Tail+Klein,Fundamental+Klein)
print(phrase)

