using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;

namespace AutoAnimacio
{
    internal class Program
    {
        static void Main(string[] args)
        {
            /*Console.Write("A");
            Console.ReadKey();
            Console.Clear(); //képernyőtörlés
            Console.Write("A");
            Console.ReadKey();*/
            int sor = 13;
            int oszlop = 115; // int 4 byte, long 8 byte, short 2 byte, byte 1 byte (nem előjeles, az előjeles sbyte)
            while (true) 
            {
                Console.SetCursorPosition(oszlop, sor);
                Console.Write("A-1");
                //Console.ReadKey();
                //for (int i = 1; i <= 10000000; i++);
                Thread.Sleep(1000 / 16);
                Console.Clear();
                if (oszlop >= 5) oszlop -= 5; else oszlop=115;
            }
        }
    }
}
