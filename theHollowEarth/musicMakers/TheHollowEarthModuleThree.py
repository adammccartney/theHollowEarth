# Very short script to iterate through an array that
# contains strings representing the notes and rests of
# an ostinato.
import itertools

MelodyTones = [ "g", "b", "es", "h",
                "h", "des", "ges", "es",
                "es", "g", "c", "as",
                "as", "c", "f", "des",
                "des", "f", "b", "ges",
                "ges", "a", "des", "f",
                "f", "a", "des", "b"]

TailTones = ["f","b","ges","as","f","b","h"]

Fundamental = "b"

Viergestr = "''''"
Dreigestr = "'''"
Zweigestr = "''"
Eingestr = "'"
Klein = ""
Gross = ","
Contra = ",,"
SubContra = ",,,"

Tail = TailTones[0]
phrase = ""
for m in itertools.islice(MelodyTones, 0, 4):
    Mid = m
    phrase = "r4 r8 r16 {0}16 r16 {1}8. r8 r16 {2}16 | r2 r4 r8 r16 {0}16 | r16 {1}8. r8 r16 {2}16 r2".format(Fundamental+Gross,Mid,Tail)
    print(phrase)






    

"""            
n = BassTones[1]
for m in itertools.islice(MelodyTones, 4, 8):
    print('r4','r8','r16','a,16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','a,16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[2]
for m in itertools.islice(MelodyTones, 8, 12):
    print('r4','r8','r16','a\'16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','a\'\'16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTones[3]
for m in itertools.islice(MelodyTones, 12, 16):
    print('r4','r8','r16','a\'\'16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','a\'\'16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTonesOne[4]
for m in itertools.islice(MelodyTonesOne, 16, 20):
    print('r4','r8','r16','a\'16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','a\'16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTonesOne[5]
for m in itertools.islice(MelodyTonesOne, 20, 24):
    print('r4','r8','r16','a,16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','a,16','|','r16',m,'r8','r16',n,'r2','|')

n = BassTonesOne[6]
for m in itertools.islice(MelodyTonesOne, 24, 28):
    print('r4','r8','r16','a,16','r16',m,'r8','r16',n,'|','r2','r4','r8','r16','a,16','|','r16',m,'r8','r16',n,'r2','|')

"""            
