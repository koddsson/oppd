using System;
using System.Collections.Generic;
using System.IO;

namespace project4
{
	class MainClass
	{
		public static int Fairness(List<int> packets, int children)
		{
			packets.Sort ();

			int fairness = int.MaxValue;
			for (int i = 0; (i + children -1 ) < packets.Count; i++) 
			{
				if ((packets [i + children - 1] - packets [i]) < fairness) 
				{
					fairness = (packets [i + children - 1] - packets [i]);
				}
			}

			return fairness;
		}

		public static void Main (string[] args)
		{
			string[] lines = File.ReadAllLines ("input.txt");
			int count = int.Parse (lines [0]);
			int children = int.Parse (lines [1]);

			List<int> packets = new List<int> ();
			for (int i = 0; i < count; i++) 
			{
				packets.Add (int.Parse(lines [i + 2]));
			}

			Console.WriteLine (Fairness (packets, children));
		}
	}
}
