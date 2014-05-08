import java.util.Arrays;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;


public class AngryChildren {
    public static void main(String[] args) throws IOException {
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));

        int n = Integer.parseInt(in.readLine());
        int k = Integer.parseInt(in.readLine());
        int[] packets = new int[n];
        for(int i = 0; i < n; i++) {
            packets[i] = Integer.parseInt(in.readLine());
        }

        int solution = solve(k, packets);

        System.out.println(solution);
    }

    public static int solve(int k, int[] packets) {
        Arrays.sort(packets);
        int min = packets[0];
        int max = packets[k - 1];
        for(int i = 1; i < packets.length - k; i++) {
            int newMin = packets[i];
            int newMax = packets[i + k - 1];
            if(newMax - newMin < max - min) {
                min = newMin;
                max = newMax;
            }
        }
        return max - min;
    }
}
