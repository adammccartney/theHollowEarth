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

MelodyTQT = [ "gih", "bih", "eeh", "hih",
                "hih", "cisih", "fisih", "eeh",
                "eeh", "gih", "cih", "aeh",
                "aeh", "cih", "fih", "cisih",
                "cisih", "fih", "bih", "fisih",
                "fisih", "aih", "cisih", "fih",
                "fih", "aih", "cisih", "bih"]

MelodyTThirds = [ "b", "cis", "fis", "dis",
                  "dis", "f", "b", "fis",
                  "fis", "b", "es", "c",
                  "c", "es", "as", "f",
                  "f", "as", "cis", "b",
                  "b", "c", "f", "as",
                  "as", "c", "f", "cis"]

MelodyTThirdsQT = [ "bih", "cisih", "fisih", "disih",
                  "disih", "fih", "bih", "fisih",
                  "fisih", "bih", "eeh", "cih",
                  "cih", "eeh", "aeh", "fih",
                  "fih", "aeh", "cisih", "bih",
                  "bih", "cih", "fih", "aeh",
                  "aeh", "cih", "fih", "cisih"]


Fundamentals = ["b","es","as","des","b"]
ThreeQuarterTonesAboveF = ["ceh","feh","beh","eseh","ceh"] # Three quarter tone above the fundamental
ThreeQuarterTonesBelowF = ["aeh","deh","geh","hih","aeh"] # Three quarter tone below the fundamental
DiatonicThirdsAboveF = ["des","ges","c","f","des"] # Diatonic third above the fundamental
DiatonicThirdsBelowF = ["g","c","f","b","g"] # Diatonic third below the fundamental


#################################################

## These strings convey information about the Octave position of pitch  

## Range of Vibraphone = f - f'''

Octave = ("","'","''","'''")

Dreigestr = Octave[3]
Zweigestr = Octave[2]
Eingestr = Octave[1]
Klein = Octave[0]


###################################################

## These strings contain the rhythmical information

# Each on of these strings will receive a .format() suffix when running the script that iterates through
# the pitchspace. As the two different types of permutation take a different number of placeholder arguments
# it would be good to design some method to error check these.

## To do: it also looks as if we need to go up a level
#  in abstraction at this stage i.e. design two distinct classses with member functions for each speed of Perm. 

ThreeBarRest = " r1 | r1 | r1 |"

PermSlow = """ r4 {0}2.--\pp\<\glissando |
{1}4.\!\mp r8 r4 {0}4\pp\<\glissando \glissandoSkipOn |
{0}2 \glissandoSkipOff {1}4.\!\mp r8 | """

PermFast = """ r2 r4 {0}4--\pp ~ |
\\repeat unfold 4 {{ {0}4 {0}4.-- {0}8 {0}4 ~ | }}
{0}4 {0}4.-- r8 r4 | """

GreenSixteenths = "\\repeat unfold 3 {{ r4 {0}16[\pp\< {1} {0} {2}] {0}16[ {1} {0} {2}] {0}16[\mp {1} {0} {2}] }} |"


## These routines build phrases out of Pitch, Octave and Rhythmic information
#  A phrase can be three or six bars long

###########################################################################

## Section 1 / 7 %% Bar 1
Fundamental = Fundamentals[0] # b
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[0]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[0]
DiatonicThirdAboveF = DiatonicThirdsAboveF[0]
DiatonicThirdBelowF = DiatonicThirdsBelowF[0]

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,ThreeQuarterToneAboveF+Dreigestr,ThreeQuarterToneBelowF+Zweigestr)
print(phrase)


# Blue
phrase = ""
MiddleThird = MelodyTThirds[1]
phrase = PermFast.format(MiddleThird+Zweigestr)
print(phrase)

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,DiatonicThirdAboveF+Dreigestr,ThreeQuarterToneBelowF+Zweigestr)
print(phrase)


# Red
phrase = ""
MiddleThird = MelodyTThirds[3]
MiddleThirdQT = MelodyTThirdsQT[3]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1""")

###############################################################################

## Section 2 / 7 %% Bar 16

# Red
phrase = ""
MiddleThird = MelodyTThirds[4]
MiddleThirdQT = MelodyTThirdsQT[4]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

# Red
phrase = ""
MiddleThird = MelodyTThirds[5]
MiddleThirdQT = MelodyTThirdsQT[5]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

Fundamental = Fundamentals[1] # es
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[1]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[1]
DiatonicThirdAboveF = DiatonicThirdsAboveF[1]
DiatonicThirdBelowF = DiatonicThirdsBelowF[1]

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,DiatonicThirdAboveF+Zweigestr,DiatonicThirdBelowF+Zweigestr)
print(phrase)

# Red
phrase = ""
MiddleThird = MelodyTThirds[7]
MiddleThirdQT = MelodyTThirdsQT[7]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2""")

#################################################################################


## Section 3 / 7 %% Bar 28

# Red
phrase = ""
MiddleThird = MelodyTThirds[8]
MiddleThirdQT = MelodyTThirdsQT[8]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,ThreeQuarterToneAboveF+Zweigestr,DiatonicThirdBelowF+Zweigestr)
print(phrase)

Fundamental = Fundamentals[2]
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[2]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[2]
DiatonicThirdAboveF = DiatonicThirdsAboveF[2]
DiatonicThirdBelowF = DiatonicThirdsBelowF[2]

# Red/Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,ThreeQuarterToneAboveF+Zweigestr,ThreeQuarterToneBelowF+Zweigestr)
print(phrase)


# Blue
phrase = ""
MiddleThird = MelodyTThirds[11]
phrase = PermFast.format(MiddleThird+Zweigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3""")

###############################################################################

## Section 4 / 7 %% Bar 43

# Blue
phrase = ""
MiddleThird = MelodyTThirds[12]
phrase = PermFast.format(MiddleThird+Zweigestr)
print(phrase)

# Red/Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,Fundamental+Zweigestr,ThreeQuarterToneBelowF+Zweigestr)
print(phrase)


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Red
phrase = ""
MiddleThird = MelodyTThirds[15]
MiddleThirdQT = MelodyTThirdsQT[15]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 %% Bar 58
Fundamental = Fundamentals[3] #des
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[3]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[3]
DiatonicThirdAboveF = DiatonicThirdsAboveF[3]
DiatonicThirdBelowF = DiatonicThirdsBelowF[3]

# Red
phrase = ""
MiddleThird = MelodyTThirds[16]
MiddleThirdQT = MelodyTThirdsQT[16]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Blue
phrase = ""
MiddleThird = MelodyTThirds[18]
phrase = PermFast.format(MiddleThird+Zweigestr)
print(phrase)


# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5""")

###############################################################

## Section 6 / 7 %% Bar 73

# Green
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Red
phrase = ""
MiddleThird = MelodyTThirds[21]
MiddleThirdQT = MelodyTThirdsQT[21]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

# Red
phrase = ""
MiddleThird = MelodyTThirds[22]
MiddleThirdQT = MelodyTThirdsQT[22]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,ThreeQuarterToneAboveF+Zweigestr,Fundamental+Zweigestr)
print(phrase)



print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6""")

###############################################################

## Section 7 / 7 %% Bar 85
Fundamental = Fundamentals[4] #b
ThreeQuarterToneAboveF = ThreeQuarterTonesAboveF[4]
ThreeQuarterToneBelowF = ThreeQuarterTonesBelowF[4]
DiatonicThirdAboveF = DiatonicThirdsAboveF[4]
DiatonicThirdBelowF = DiatonicThirdsBelowF[4]

# Green
phrase = ""
phrase = GreenSixteenths.format(Fundamental+Zweigestr,ThreeQuarterToneAboveF+Dreigestr,ThreeQuarterToneBelowF+Zweigestr)
print(phrase)


# Red
phrase = ""
MiddleThird = MelodyTThirds[25]
MiddleThirdQT = MelodyTThirdsQT[25]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

# Red
phrase = ""
MiddleThird = MelodyTThirds[26]
MiddleThirdQT = MelodyTThirdsQT[26]
phrase = PermSlow.format(MiddleThird+Zweigestr,MiddleThirdQT+Zweigestr)
print(phrase)

# Blue
# Blue
phrase = ""
MiddleThird = MelodyTThirds[27]
phrase = PermFast.format(MiddleThird+Zweigestr)
print(phrase)


