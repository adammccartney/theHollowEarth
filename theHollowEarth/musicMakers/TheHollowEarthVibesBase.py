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

PermGreen = """<<{{\\stemDown r4 {0}8[\pp\sustainOn {1}8] {0}8[ {1}8] r4 | }}\\\\
{{\\tupletUp r4 \\tuplet 3/2 {{ \\stemUp <{2} {3}>4 <{2} {3}>4 <{2} {3}>4 }} r4 |}}>>
<<{{ \\stemDown r4 {0}8[ {1}8] {0}8[ {1}8] r4 | r4 {0}8[ {1}8] {0}8[ {1}8] r4\sustainOff | }}\\\\
{{\\tupletUp r4 \\tuplet 3/2 {{ \\stemUp <{2} {3}>4 <{2} {3}>4 <{2} {3}>4 }} r4 | r4 \\tuplet 3/2 {{ \\stemUp <{2} {3}>4 <{2} {3}>4 <{2} {3}>4 }} r4 | }}>>"""

PermSlow = "\\repeat unfold 3 {{ \\stemNeutral r4 <{0} {1}>4.-- <{0} {1}>8 <{0} {1}>4 | }}"

PermFast = """\\stemNeutral r4 <{0} {1}>4.--\mf\sustainOn <{0} {1}>8 <{0} {1}>4 |
\\repeat unfold 4 {{ \\stemNeutral r4 <{0} {1}>4.-- <{0} {1}>8 <{0} {1}>4 | }}
r4 <{0} {1}>4.-- <{0} {1}>8 <{0} {1}>4\sustainOff |"""


## These routines build phrases out of Pitch, Octave and Rhythmic information
#  A phrase can be three or six bars long

###########################################################################

## Section 1 / 7 %% Bar 1
Tail = TailTones[0]
TTritone = TailTriTones[0]
Fundamental = Fundamentals[0]

# Green
phrase = ""
Middle = MelodyTones[0]
MiddleFifth = MelodyTFifths[0]
phrase = PermGreen.format(Fundamental+Klein,Middle+Klein,Tail+Eingestr,TTritone+Eingestr)
print(phrase)


# Blue
phrase = ""
Middle = MelodyTones[1]
MiddleFifth = MelodyTFifths[1]
phrase = PermFast.format(Middle+Klein,MiddleFifth+Eingestr)
print(phrase)


# Green
phrase = ""
Middle = MelodyTones[2]
MiddleFifth = MelodyTFifths[2]
phrase = PermGreen.format(Fundamental+Klein,Middle+Eingestr,Tail+Zweigestr,TTritone+Zweigestr)
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 16
\mark #1""")

###############################################################################

## Section 2 / 7 %% Bar 16
Tail = TailTones[1]
TTritone = TailTriTones[1]

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

Fundamental = Fundamentals[1]

# Green
phrase = ""
Middle = MelodyTones[6]
MiddleFifth = MelodyTFifths[6]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Zweigestr,TTritone+Zweigestr)
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 28
\mark #2""")

#################################################################################


## Section 3 / 7 %% Bar 28
Tail = TailTones[2]
TTritone = TailTriTones[2]

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Green
phrase = ""
Middle = MelodyTones[9]
MiddleFifth = MelodyTFifths[9]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Zweigestr,TTritone+Zweigestr)
print(phrase)

Fundamental = Fundamentals[2]

# Red/Green
phrase = ""
Middle = MelodyTones[10]
MiddleFifth = MelodyTFifths[10]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr,TTritone+Dreigestr)
print(phrase)


# Blue
phrase = ""
Middle = MelodyTones[11]
MiddleFifth = MelodyTFifths[11]
phrase = PermFast.format(Middle+Zweigestr,MiddleFifth+Zweigestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 43
\mark #3""")

###############################################################################

## Section 4 / 7 %% Bar 43
Tail = TailTones[3]
TTritone = TailTriTones[3]

# Blue
phrase = ""
Middle = MelodyTones[12]
MiddleFifth = MelodyTFifths[12]
phrase = PermFast.format(Middle+Zweigestr,MiddleFifth+Zweigestr)
print(phrase)

# Red/Green
phrase = ""
Middle = MelodyTones[13]
MiddleFifth = MelodyTFifths[13]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Zweigestr,Tail+Zweigestr,TTritone+Dreigestr)
print(phrase)

# Green
phrase = ""
Middle = MelodyTones[14]
MiddleFifth = MelodyTFifths[14]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Zweigestr,TTritone+Dreigestr)
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 58
\mark #4""")

##########################################################################


## Section 5 / 7 %% Bar 58
Tail = TailTones[4]
TTritone = TailTriTones[4]
Fundamental = Fundamentals[3]

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)


# Green
phrase = ""
Middle = MelodyTones[17]
MiddleFifth = MelodyTFifths[17]
phrase = PermGreen.format(Fundamental+Zweigestr,Middle+Zweigestr,Tail+Dreigestr,TTritone+Zweigestr)
print(phrase)

# Blue
phrase = ""
Middle = MelodyTones[18]
MiddleFifth = MelodyTFifths[18]
phrase = PermFast.format(Middle+Eingestr,MiddleFifth+Eingestr)
print(phrase)


# Green
phrase = ""
Middle = MelodyTones[19]
MiddleFifth = MelodyTFifths[19]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Zweigestr,TTritone+Eingestr)
print(phrase)

print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 73
\mark #5""")

###############################################################

## Section 6 / 7 %% Bar 73
Tail = TailTones[5]
TTritone = TailTriTones[5]

# Green
phrase = ""
Middle = MelodyTones[20]
MiddleFifth = MelodyTFifths[20]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Zweigestr,TTritone+Zweigestr)
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Green
phrase = ""
Middle = MelodyTones[23]
MiddleFifth = MelodyTFifths[23]
phrase = PermGreen.format(Fundamental+Eingestr,Middle+Eingestr,Tail+Eingestr,TTritone+Zweigestr)
print(phrase)


print("""%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bar 85
\mark #6""")

###############################################################

## Section 7 / 7 %% Bar 85
Tail = TailTones[6]
TTritone = TailTriTones[6]
Fundamental = Fundamentals[4]

# Green
phrase = ""
Middle = MelodyTones[24]
MiddleFifth = MelodyTFifths[24]
phrase = PermGreen.format(Fundamental+Klein,Middle+Eingestr,Tail+Eingestr,TTritone+Zweigestr)
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Red
phrase = ""
phrase = ThreeBarRest
print(phrase)

# Blue
phrase = ""
Middle = MelodyTones[27]
MiddleFifth = MelodyTFifths[27]
phrase = PermFast.format(Middle+Zweigestr,MiddleFifth+Zweigestr)
print(phrase)


