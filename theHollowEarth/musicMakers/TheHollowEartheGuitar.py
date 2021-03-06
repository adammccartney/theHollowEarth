# Very short script to iterate through an array that
# contains strings representing the notes and rests of
# an ostinato.


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


Fundamentals = ["b","es","as","des","b"]
ThreeQuarterTonesAboveF = ["ceh","feh","beh","eseh","ceh"] # Three quarter tone above the fundamental
ThreeQuarterTonesBelowF = ["aeh","deh","geh","hih","aeh"] # Three quarter tone below the fundamental
DiatonicThirdsAboveF = ["des","ges","c","f","des"] # Diatonic third above the fundamental
DiatonicThirdsBelowF = ["g","c","f","b","g"] # Diatonic third below the fundamental

#################################################

## These strings convey information about the Octave position of pitch  

## Range of Vibraphone = f - f'''

Octave = (",","","'","''","'''")

Dreigestr = Octave[4]
Zweigestr = Octave[3]
Eingestr = Octave[2]
Klein = Octave[1]
Gross = Octave[0]


###################################################

## These strings contain the rhythmical information

# Each on of these strings will receive a .format() suffix when running the script that iterates through
# the pitchspace. As the two different types of permutation take a different number of placeholder arguments
# it would be good to design some method to error check these.

## To do: it also looks as if we need to go up a level
#  in abstraction at this stage i.e. design two distinct classses with member functions for each speed of Perm. 

ThreeBarRest = " r1 | r1 | r1 |"

PermSlow = """r4 <{1} {3}>4.--\pp <{1} {3}>8 <{1} {3}>4-- |
<{1} {3}>8[ <{1} {3}>8] <{1} {3}>4.-- <{1} {3}>8 <{1} {3}>4-- |
<{1} {3}>8[ <{1} {3}>8] <{0} {2}>4.-- <{0} {2}>8 <{0} {2}>4-- |"""

PermFast = """\\stemNeutral r4 {0}4.--\p {0}8 {0}4 |
\\repeat unfold 5 {{ r4 {0}4.-- {0}8 {0}4 | }}"""


GreenPedal = " r2. {0}4\p\<^\ebow ~ | {0}1 ~ | {0}1\mp | "

## These routines build phrases out of Pitch, Octave and Rhythmic information
#  A phrase can be three or six bars long

###########################################################################

## Section 1 / 7 %% Bar 1
Fundamental = Fundamentals[0]

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Blue
phrase = ""
MiddleThird = MelodyTThirds[1]
phrase = PermFast.format(MiddleThird+Klein)
print(phrase)


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Red
phrase = ""
Middle = MelodyTones[3]
MiddleThird = MelodyTThirds[3]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1""")

###############################################################################

## Section 2 / 7 %% Bar 16

# Red
phrase = ""
Middle = MelodyTones[4]
MiddleThird = MelodyTThirds[4]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[5]
MiddleThird = MelodyTThirds[5]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

Fundamental = Fundamentals[1] # es

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[7]
MiddleThird = MelodyTThirds[7]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2""")

#################################################################################


## Section 3 / 7 %% Bar 28

# Red
phrase = ""
Middle = MelodyTones[8]
MiddleThird = MelodyTThirds[8]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


Fundamental = Fundamentals[2] # as

# Red/Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Blue
phrase = ""
MiddleThird = MelodyTThirds[11]
phrase = PermFast.format(MiddleThird+Klein)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3""")

###############################################################################

## Section 4 / 7 %% Bar 43

# Blue
phrase = ""
MiddleThird = MelodyTThirds[12]
phrase = PermFast.format(MiddleThird+Klein)
print(phrase)

# Red/Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Red
phrase = ""
Middle = MelodyTones[15]
MiddleThird = MelodyTThirds[15]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 %% Bar 58
Fundamental = Fundamentals[3] # des

# Red
phrase = ""
Middle = MelodyTones[16]
MiddleThird = MelodyTThirds[16]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)


# Green
phrase = ""
phrase=GreenPedal.format(Fundamental+Klein)
print(phrase)


# Blue
phrase = ""
MiddleThird = MelodyTThirds[18]
phrase = PermFast.format(MiddleThird+Klein)
print(phrase)


# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Klein)
print(phrase)


print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5""")

###############################################################

## Section 6 / 7 %% Bar 73
Fundamental = Fundamentals[4] #b

# Green
phrase = ""
phrase = GreenPedal.format(Fundamental+Klein)
print(phrase)


# Red
phrase = ""
Middle = MelodyTones[21]
MiddleThird = MelodyTThirds[21]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[22]
MiddleThird = MelodyTThirds[22]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)



print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6""")

###############################################################

## Section 7 / 7 %% Bar 85

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Red
phrase = ""
Middle = MelodyTones[25]
MiddleThird = MelodyTThirds[25]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

# Red
phrase = ""
Middle = MelodyTones[26]
MiddleThird = MelodyTThirds[26]
phrase = PermSlow.format(Middle+Klein,MiddleThird+Klein,Middle+Eingestr,MiddleThird+Eingestr)
print(phrase)

# Blue
# Blue
phrase = ""
MiddleThird = MelodyTThirds[27]
phrase = PermFast.format(MiddleThird+Eingestr)
print(phrase)


