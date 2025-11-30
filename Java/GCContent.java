import java.util.Scanner;

public class GCContent {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter DNA sequence: ");
        String dna = sc.nextLine().toUpperCase();

        int gc = 0;

        for (int i = 0; i < dna.length(); i++) {
            char ch = dna.charAt(i);
            if (ch == 'G' || ch == 'C') {
                gc++;
            }
        }

        double gcPercent = (gc * 100.0) / dna.length();
        System.out.println("GC Content: " + gcPercent + "%");
    }
}
