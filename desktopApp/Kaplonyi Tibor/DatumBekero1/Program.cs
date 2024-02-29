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
            Console.Write("Születési dátum(éééé-hh-nn): ");
            //Console.ReadKey(true); // Ha nincs true vagy false szerepel, akkor láthatóvá válhat a leütött karakter

            // Az elős szám 1 vagy 2 lehet
            char elozo = '#';
            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);

                if (cki.KeyChar == '1' || cki.KeyChar == '2') //Char aposztróffal határolandó, nem idézőjellel
                {
                    Console.Write(cki.KeyChar);
                    elozo = cki.KeyChar;
                    break;
                }
            }

            // a második szám, ha az első 1, akkor 9 lehet. Ha 2 az első szám akkor 0.
            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);

                if (elozo == '1' && cki.KeyChar == '9' || elozo=='2' && cki.KeyChar == '0')
                {
                    Console.Write(cki.KeyChar);
                    elozo = cki.KeyChar;
                    break;
                }

            }
            // a harmadik ha 9 -> 2,3,4,5,6,7,8,9. Ha 0 akkor 1,2 lehet

            while (true)
            {
                ConsoleKeyInfo cki = Console.ReadKey(true);

                char szamjegy = cki.KeyChar-48;

                {
                    Console.Write(cki.KeyChar);
                    elozo = cki.KeyChar;
                    break;
                }

            }

        }
    }
}
