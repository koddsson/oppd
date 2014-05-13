namespace project6
{
	class MainClass
	{
		public static void Sherlock(int n)
		{
			// Reynum að koma eins mörgum þristum að, ef það er ekki nóg þá fækkum við þeim og setjum fimmur í staðinn.
			// Ef það gengur ekki upp ... nú þá gengur það ekki upp ;)
			int threes = n / 5;
			while (threes >= 0) 
			{
				int fives = n - threes * 5;
				if (fives % 3==0) 
				{
					Print (3, threes*5);
					Print (5, fives);
					Console.WriteLine ();
					return;
				}
				threes--;
			}
			// Ef við höfum komist hingað, þá gengur þetta greinilega ekki upp
			Console.WriteLine (-1);

		}

		public static void Print(int number, int times)
		{
			for (int i = 0; i < times; i++) 
			{
				Console.Write(number);
			}
		}
					

		public static void Main (string[] args)
		{
			int cases = int.Parse (Console.ReadLine ());
			int[] numbers = new int[cases];
			for (int i = 0; i < cases; i++) 
			{
				numbers [i] = int.Parse (Console.ReadLine ());
			}

			for (int i = 0; i < cases; i++) 
			{
				Sherlock (numbers [i]);
			}
		}
	}
}

