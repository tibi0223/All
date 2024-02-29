class Helyiseg:
    def __init__(self):
        pass
    def __str__(self):
        return "Én egy hely vagyok"
h=Helyiseg()
print(h)
print(dir())
print(globals())

class Szoba(Helyiseg):
    pass

sz=Szoba()
print(sz)

