using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatumBekero
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string szdatum = ""; // Ebben lesz a beolvasott eredmény
            int ev = -1; // amikor összeállt a dátum évrészre, akkor a stringből számot csinálunk, hogy így tudjuk ellenőrizni a szökőévet
            int[] napok = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }; // általában ennyi nap van ennyi hónapban
            // [] azt mutatja, hogy több elem egy azonosító által lesz elérhető, ahol a python listához has. férhetünk hozzá az elemekhez
            // napok[4] hivatkozás az 5. elemre vonatkozik, szerencsésebb volna, ha a hónapok számértékét használhatnánk pl: napok[1]-január lenne(javítva)
            int ho = -1; //tartalmazhatja a hónap számértékét
            int nap = -1; // számértékként tartalmazza a napot

            Console.Write("Születési dátum (éééé-hh-nn): ");
            //Console.ReadKey(true); //ha nincs true, vagy false szerepel, akkor láthatóvá válhat a leütött karakter

            //az első szám 1 vagy 2 lehet
            char elozo = '#';
            while (true) //végtelenciklus
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                if (cki.KeyChar == '1' || cki.KeyChar == '2') //char aposztróffal határolandó és nem idézőjellel a VAGY logikai művelet a: ||
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    elozo=cki.KeyChar;
                    break;
                }
            }

            //a második szám abban az esetben, ha az első 1, akkor 9 lehet, ha viszont az első 2, akkor csak 0 lehet
            while (true) //végtelenciklus
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                if (elozo=='1' && cki.KeyChar == '9' || elozo=='2' && cki.KeyChar == '0') 
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    elozo = cki.KeyChar;
                    break;
                }
            }

            //a harmadik ha az elozo 9, akkor 2,3,4,5,6,7,8 és 9 , ha az elozo 0, akkor 0,1,2 lehet 
            while (true) //végtelenciklus
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                //char szamjegy = (char)48; //48 ASCII kódú karakter, ami a 0, az 57-es kód pedig a 9
                int szamjegy = cki.KeyChar - 48; //szamjegyként a 0,1,2,3,4,5,6,7,8,9 számok kerülnek megállapításra
                //az adattípusok nem biztos, hogy közvetlenül "átjárhatók"
                if(elozo=='9' && szamjegy>=2 && szamjegy<=9 || elozo=='0' && szamjegy>=0 && szamjegy<=2)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    elozo = cki.KeyChar;
                    break;
                }
            }
            //ilyesmi megoldással folytassuk a dátum további karaktereinek bekérést:
            //-a negyedik lényegében 0-tól 9-ig bármilyen számjegy lehet (bár, ha az elozo 2, akkor 4,5,6,7,8,9 és ha az elso 2, akkor 0,1,2,3,4)
            //az ötödik egy kötőjel kell legyen
            //...
            //de figyelni kell arra is, hogy melyik hónap hány napból áll 

            // folytatás, az év 4. számjegye, ami 19xx és 20yy esetén 0-9-ig terjedhet
            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                int szamjegy = cki.KeyChar - 48;
                if (szamjegy >= 0 && szamjegy <= 9)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }
            }
            ev = int.Parse(szdatum); 

            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                if(cki.KeyChar == '-')
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }
            }
            string honap = "";
            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                   if(cki.KeyChar == '0' || cki.KeyChar == '1')
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    elozo = cki.KeyChar;
                    honap += cki.KeyChar;
                    break;
                }
            }
            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                int szamjegy = cki.KeyChar - 48;
                if (elozo=='0' && szamjegy >= 1 && szamjegy <=9 || elozo== '1' && szamjegy >=0 && szamjegy <= 2)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    honap += cki.KeyChar;
                    break;
                }

            }
            ho = int.Parse(honap);


            bool szokoev = false;
            if (ev % 4 == 0)
            {
                if (ev % 100 == 0)
                {
                    if (ev % 400 == 0)
                    {
                        szokoev = true;
                    }
                    else
                    {
                        szokoev = true;
                    }
                }
            }

            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                if (cki.KeyChar == '-')
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }
            }
            string napszamjegyek = "";
            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                int szamjegy = cki.KeyChar - 48;
                if (ho != 2 && szamjegy >= 0 && szamjegy <=3 || ho == 2 && szamjegy >= 0 && szamjegy <= 2)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    napszamjegyek += cki.KeyChar;
                    elozo += cki.KeyChar;
                    break;
                }
            }

            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);
                int szamjegy = cki.KeyChar - 48;
                if(elozo == '0' && szamjegy >= 1 && szamjegy <= 9)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }

                if(elozo == '1' && szamjegy >= 0 && szamjegy <= 9)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }

                if (elozo == '2' && ho == 2 && !szokoev && szamjegy>=0 && szamjegy<=8)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }

                if (elozo == '2' && ho == 2 && szokoev && szamjegy >= 0 && szamjegy <= 9)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }

                if (elozo == '2' && ho == 2 && szamjegy >= 0 && szamjegy <= 9)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }
                if (elozo == '3' && napok[ho] == 30 && szamjegy == 0)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }

                if(elozo == '3' && napok[ho] == 31 && szamjegy >=0 && szamjegy <= 1)
                {
                    Console.Write(cki.KeyChar);
                    szdatum += cki.KeyChar;
                    break;
                }
            }
            
            Console.WriteLine($"\n\n{DateTime.Today - DateTime.Parse(szdatum)} napos vagyok.");
            Console.ReadLine();
        }

    }
}
