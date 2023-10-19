package data;

public class DataGenerator {
    public static String getEmail() {
//        instructor_mohammad_82710@tekschool.us
        String email = "instructor_mohammad_";
        int random = (int) (Math.random() * 8921000);
        return email + random + "@tekschool.us";
    }

    public static String getFirstName() {
        char[] alphabet = {'A', 'B', 'C', 'D', 'E', 'F'};
        String name = "";
        for (int i = 0; i < 5; i++) {
            int index = (int) (Math.random() * alphabet.length);
            name += alphabet[index];
        }
        return name;
    }
}