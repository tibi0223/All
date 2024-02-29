// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");
for (int oszlop = 1;/*deklaráció és inicializáció*/oszlop <= 10/*ciklusfeltétel*/; oszlop++/*ciklus változó manipulálása, inkrementálás*/)
{
    //ciklusmag - az ismétlődő utasítások
    Console.Write("-");
}
Console.WriteLine();
Console.Write("|");
for (int oszlop = 1; oszlop <= 8; oszlop++)
{
    Console.Write(" ");
}
Console.Write("|");
Console.WriteLine();
for (int oszlop = 1; oszlop <= 10; oszlop++)
{
    Console.Write("=");
}
/*
 * -------------------
 * |                 |
 * ===================*/
