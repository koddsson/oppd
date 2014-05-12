using System;
using System.Collections.Generic;

namespace project5
{
	class MainClass
	{
		public static int[] Fibonacci()
		{
			int i = 1;
			int j = 1;

			int[] numbers = new int[46];
			numbers [0] = 1;
			numbers [1] = 1;

			for (int f = 2; f < 46; f++) 
			{
				i = i + j;
				j = i - j;
				numbers [f] = i;
			}

			return numbers;
		}

		public static List<int> Zeckendorf(int n)
		{
			List<int> zecks = new List<int> ();
			int[] fibonacci = Fibonacci ();

			for (int i = 45; i >= 0; i--) 
			{
				if (fibonacci [i] <= n) 
				{
					zecks.Add (fibonacci[i]);
					n = n - fibonacci [i];
				}
				if (n == 0) 
				{
					break;
				}
			}

			return zecks;
		}

		public static void Main (string[] args)
		{
			Console.Write ("Sláðu inn tölu:");
			int n = int.Parse (Console.ReadLine ());

			List<int> zecks = Zeckendorf (n);
			foreach (int i in zecks) 
			{
				Console.Write (i + " ");
			}
		}
	}
}
