MelodyTThirds = [ "b", "cis", "fis", "dis",
                  "dis", "f", "b", "ges",
                  "fis", "b", "es", "c",
                  "c", "es", "as", "f",
                  "f", "as", "cis", "b",
                  "b", "c", "f", "as",
                  "as", "c", "f", "cis"]
MiddleThird = MelodyTThirds[1]
print(MiddleThird)


Octave = ("","'","''","'''")

Dreigestr = Octave[3]
Zweigestr = Octave[2]
Eingestr = Octave[1]
Klein = Octave[0]

PermFast = """\\stemNeutral r4 {0}4.--\p {0}8 {0}4 |
\\repeat unfold 5 {{ \\stemNeutral r4 {0}4.-- {0}8 {0}4 | }}"""

# Blue
phrase = ""
MiddleThird = MelodyTThirds[1]
phrase = PermFast.format(MiddleThird+Zweigestr)
print(phrase)
