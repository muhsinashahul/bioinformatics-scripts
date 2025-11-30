import java.util.Scanner;

public class DNAPalindrome {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter DNA sequence: ");
        String dna = sc.nextLine().toUpperCase();

        String rev = "";

        for (int i = dna.length() - 1; i >= 0; i--) {
            rev += dna.charAt(i);
        }

        if (dna.equals(rev)) {
            System.out.println("Palindrome");
        } else {
            System.out.println("Not palindrome");
        }
    }
}
