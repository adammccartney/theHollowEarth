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

MelodyTThirds = [ "b", "cis", "fis", "es",
                  "es", "f", "b", "fis",
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
TailThirds = ["as","des","b","c","a","des","es"]

Fundamentals = ["b","es","as","des","b"]
FndDThirds = ["des","ges","c","f","des"]

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
PermOneFast = """r8 r16 {0}16 r16 {1}16[ {2}8] r4 r8 r16 {0}16 | r16 {1}16[ {2}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {0}8] r4 |"""
PermTwoSlow = "r4 r8 r16 {0}16 r16 {2}8. r8 r16 {1}16 | r2 r4 r8 r16 {0}16 | r16 {2}8. r8 r16 {1}16 r2 |"
PermTwoFast = """r8 r16 {0}16 r16 {2}16[ {1}8] r4 r8 r16 {0}16 | r16 {2}16[ {1}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {0}8] r4 |"""
PermThreeSlow = "r4 r8 r16 {1}16 r16 {0}8. r8 r16 {2}16 | r2 r4 r8 r16 {1}16 | r16 {0}8. r8 r16 {2}16 r2 |"
PermThreeFast ="""r8 r16 {1}16 r16 {0}16[ {2}8] r4 r8 r16 {1}16 | r16 {0}16[ {2}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {1}8] r4 |"""
PermFourSlow = "r4 r8 r16 {1}16 r16 {2}8. r8 r16 {0}16 | r2 r4 r8 r16 {1}16 | r16 {2}8. r8 r16 {0}16 r2 |"
PermFourFast = """r8 r16 {1}16 r16 {2}16[ {0}8] r4 r8 r16 {1}16 | r16 {2}16[ {0}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {1}8] r4 |"""
PermFiveSlow = "r4 r8 r16 {2}16 r16 {1}8. r8 r16 {0}16 | r2 r4 r8 r16 {2}16 | r16 {1}8. r8 r16 {0}16 r2 |"
PermFiveFast = """r8 r16 {2}16 r16 {1}16[ {0}8] r4 r8 r16 {2}16 | r16 {1}16[ {0}8] r4 r8 r16 {0}16 r16 {3}16[ {2}8] | r4 r8 r16 {0} r16 {3}16[ {2}8] r4 |
r8 r16 {4}16 r16 {3}16[ {5}8] r4 r8 r16 {4}16 | r16 {3}16[ {5}8] r4 r8 r16 {1}16 r16 {3}16[ {0}8] | r4 r8 r16 {1} r16 {3}16[ {2}8] r4 |"""
PermSixSlow = "r4 r8 r16 {2}16 r16 {0}8. r8 r16 {1}16 | r2 r4 r8 r16 {2}16 | r16 {0}8. r8 r16 {1}16 r2 |"

ThreeBarRest = " r1 | r1 | r1 |"
SixBarRest = """r1 | r1 | r1 |
r1 | r1 | r1 | """

## These routines build phrases out of Pitch, Octave and Rhythmic information
#  A phrase can be three or six bars long

###########################################################################

## Section 1 / 7 %% Bar 1
Tail = TailThirds[0]
Fundamental = FndDThirds[0]

print("\clef treble \stemNeutral")

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
Middle = MelodyTThirds[3]
phrase = PermTwoSlow.format(Fundamental+Klein,Middle+Klein,Tail+Klein)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 16
\mark #1""")

###############################################################################

## Section 2 / 7 
Tail = TailThirds[1]

# Red * 2
phrase = ""
Middle = MelodyTThirds[4]
phrase = PermTwoSlow.format(Fundamental+Klein,Middle+Eingestr,Tail+Eingestr)
print(phrase)

phrase = ""
Middle = MelodyTThirds[5]
phrase = PermThreeSlow.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

Fundamental = FndDThirds[1]

print("\staffLower \clef bass")

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTThirds[7]
phrase = PermFourSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 28
\mark #2""")

#################################################################################


## Section 3 / 7 
Tail = TailThirds[2]

# Red
phrase = ""
Middle = MelodyTThirds[8]
phrase = PermFourSlow.format(Fundamental+Klein,Middle+Gross,Tail+Gross)
print(phrase)

print("\staffUpper \clef treble")

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

Fundamental = FndDThirds[2]

# Red/Green
phrase = ""
Middle = MelodyTThirds[10]
phrase = PermFiveSlow.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr)
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
Tail = TailThirds[3]

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

# Red/Green
phrase = ""
Middle = MelodyTThirds[13]
phrase = PermOneSlow.format(Fundamental+Zweigestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

print("\staffLower \clef bass")

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTThirds[15]
phrase = PermTwoSlow.format(Fundamental+Gross,Middle+Klein,Tail+Klein)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 
Tail = TailThirds[4]
Fundamental = FndDThirds[3]


# Red
phrase = ""
Middle = MelodyTThirds[16]
phrase = PermTwoSlow.format(Fundamental+Klein,Middle+Eingestr,Tail+Eingestr)
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
Tail = TailThirds[5]


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

print("\staffUpper \clef treble")

# Red
phrase = ""
Middle = MelodyTThirds[21]
phrase = PermOneSlow.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

print("\staffLower \clef bass")

# Red
phrase = ""
Middle = MelodyTThirds[22]
phrase = PermTwoSlow.format(Fundamental+Gross,Middle+Gross,Tail+Gross)
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
Tail = TailThirds[6]
Fundamental = FndDThirds[4]


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

print("\staffUpper \clef treble")

# Red
phrase = ""
Middle = MelodyTThirds[25]
phrase = PermFiveSlow.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTThirds[26]
phrase = PermOneSlow.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr)
print(phrase)

# Blue
phrase = ""
phrase = SixBarRest
print(phrase)

