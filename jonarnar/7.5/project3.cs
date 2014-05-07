using System;
using System.IO;

namespace project3
{
	class MainClass
	{

		public static int BuyCandy(int money, int price, int wrappers)
		{
			int pieces =  money / price;
			money = money - pieces * price;

			int currentwrappers = pieces;

			while ((currentwrappers / wrappers) > 0) 
			{
				pieces += currentwrappers / wrappers;
				currentwrappers = currentwrappers % wrappers + currentwrappers / wrappers;
			}

			return pieces;
		}



		public static void Main (string[] args)
		{
			Console.WriteLine ("Welcome to the candy store!");

			string[] lines = File.ReadAllLines ("input.txt");

			for (int i = 1; i < lines.Length; i++) 
			{
				string[] values = lines [i].Split (' ');
				int money = int.Parse (values [0]);
				int price = int.Parse (values [1]);
				int wrappers = int.Parse (values [2]);
				Console.WriteLine (BuyCandy(money, price, wrappers));
			}
		}
	}
}

