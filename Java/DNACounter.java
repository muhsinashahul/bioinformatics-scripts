import java.util.Scanner;

public class DNACounter {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter DNA sequence: ");
        String dna = sc.nextLine().toUpperCase();

        int a = 0, t = 0, c = 0, g = 0;

        for (int i = 0; i < dna.length(); i++) {
            char ch = dna.charAt(i);

            if (ch == 'A') a++;
            else if (ch == 'T') t++;
            else if (ch == 'C') c++;
            else if (ch == 'G') g++;
        }

        System.out.println("A: " + a + " T: " + t + " C: " + c + " G: " + g);
    }
}
