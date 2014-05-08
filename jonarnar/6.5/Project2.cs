using System;

namespace project2
{
	class Pair
	{
		public int Number1;
		public int Number2;

		public Pair(int Number1, int Number2)
		{
			this.Number1 = Number1;
			this.Number2 = Number2;
		}
	}

	class Case
	{
		public int Credit;
		public int NumberOfItems;
		public int[] Items;

		public Case(int Credit, int NumberOfItems, string[] Items)
		{
			this.Credit = Credit;
			this.NumberOfItems = NumberOfItems;
			this.Items = new int[NumberOfItems];

			for(int i=0;i<NumberOfItems;i++)
			{
				this.Items [i] = int.Parse (Items [i]);
			}
		}

		public Pair FindHighestSum()
		{
			for (int i = 0; i < NumberOfItems; i++) 
			{
				for (int j = i; j < NumberOfItems; j++) 
				{
					if ((Items [i] + Items [j]) == Credit && i!=j) 
					{
						return new Pair (i+1, j+1);
					}
				}
			}
			return null;
		}

	}

	class MainClass
	{
		public static void Main (string[] args)
		{
			int numberOfCases;
			Case[] cases;

			try
			{
				numberOfCases = int.Parse (Console.ReadLine ());
				cases = new Case[numberOfCases];

				for (int i = 0; i < numberOfCases; i++) 
				{
					int credit = int.Parse (Console.ReadLine ());
					int numberOfItems = int.Parse (Console.ReadLine ());
					string[] items = Console.ReadLine ().Split(' ');
					if(items.Length!=numberOfItems)
					{
						Console.WriteLine ("Innsláttur ekki á réttu formi");
						return;
					}
					cases [i] = new Case (credit, numberOfItems, items);
				}
			}
			catch
			{
				Console.WriteLine ("Innsláttur ekki á réttu formi");
				return;
			}

			for (int i = 0; i < numberOfCases; i++) 
			{
				Pair solution = cases [i].FindHighestSum ();
				if (solution != null) 
				{
					Console.WriteLine ("Case #{0}: {1} {2}", i, solution.Number1, solution.Number2);
				} 
				else 
				{
					Console.WriteLine ("Case #{0}: Engin lausn", i);
				}
			}

		}
	}
}

