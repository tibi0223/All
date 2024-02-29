import sqlite3 #sql beimportálása
import random

# kapcsolat=sqlite3.connect("Micimacko.db") #Ha nem létezik a fájl, létrehozza
# # print(kapcsolat)

# sql1="""
#         CREATE TABLE IF NOT EXISTS kik(
#             kID INTEGER PRIMARY KEY,
#             nev TEXT NOT NULL);
# """
# kapcsolat.execute(sql1)

# kik=["Micimackó", "Malacka", "Füles", "Kanga", "Tigris", "Róbert Gida", "Zsebi baba", "Nyuszi", "Bagoly"]

# sql3="SELECT COUNT(*) AS db FROM kik;"
# mutato=kapcsolat.cursor()
# mutato.execute(sql3)
# eredmeny=mutato.fetchall()
# for sor in eredmeny:
#     db=sor[0]
# if db==0:
#     for i,ki in enumerate(kik):
#         sql2="INSERT INTO kik VALUES(?,?)"
#         kapcsolat.execute(sql2,(i, ki))
#     kapcsolat.commit()

def Letrehozas():
    kapcsolat=sqlite3.connect("Micimacko.db")
    sql1="""
        CREATE TABLE IF NOT EXISTS kik(
            kID INTEGER PRIMARY KEY AUTOINCREMENT,
            nev TEXT NOT NULL);"""
    sql2="""
        CREATE TABLE IF NOT EXISTS mik(
            mID INTEGER PRIMARY KEY AUTOINCREMENT,
            megnevezes TEXT NOT NULL);"""
    sql3="""
        CREATE TABLE IF NOT EXISTS ki_mit_szeret(
            kID INTEGER,
            mID INTEGER,
            PRIMARY KEY(kID, mID),
            FOREIGN KEY (kID) REFERENCES kik(kID),
            FOREIGN KEY (mID) REFERENCES kik(mID);"""
    
    kapcsolat.execute(sql1)
    kapcsolat.execute(sql2)
    kapcsolat.execute(sql3)

    kik=["Micimackó", "Malacka", "Füles", "Kanga", "Tigris", "Róbert Gida", "Zsebi baba", "Nyuszi", "Bagoly"]
    mik=["alma", "körte", "málna", "banán", "barack", "meggy", "cseresznye", "eper", "narancs", "mandarin"]
    sql4="INSERT INTO kik(nev) VALUES(?);"
    sql5="INSERT INTO mik(megnevezes) VALUES(?);"
    for ki in kik:
        kapcsolat.execute(sql4,(ki,))
    kapcsolat.commit()
    for mi in mik:
        kapcsolat.execute(sql5,(mi,))
    kapcsolat.commit()


    db=1
    while db<=8:
        sql6="INSERT INTO ki_mit_szeret VALUES(?,?);"
        sql7="SELECT kID FROM kik WHERE nev=?;"
        sql8="SELECT mID FROM mik WHERE megnevezes=?;"

        vsz1=random.randint(0,len(kik)-1)
        mutato=kapcsolat.cursor()
        mutato.execute(sql7,(kik[vsz1],))
        kID=mutato.fetchone()[0]

        vsz2=random.randint(0,len(mik)-1)
        mutato=kapcsolat.cursor()
        mutato.execute(sql8,(mik[vsz2],))
        mID=mutato.fetchone()[0]

        try:
            kapcsolat.execute(sql6,(kID,mID))
            kapcsolat.commit()
            db+=1
        except:
            pass
    sql9="""SELECT nev, megnevezes
    FROM (kik INNER JOIN ki_mit_szeret ON kik.kID=ki_mit_szeret.kID)
    INNER JOIN mik ON mik.mID=ki_mit_szeret.mID;"""
    mutato=kapcsolat.cursor()
    mutato.execute(sql9)
    eredmeny=mutato.fetchall()
    print("NÉV\tGYÜMÖLCS")
    for sor in eredmeny:
        print(f"{sor[0]} \t{sor[1]}")
if __name__ == "__main__":
    Letrehozas()