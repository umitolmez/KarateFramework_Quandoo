package utilities;

import java.util.Random;

public class RandomIDGenerator {

    public static int generateID(){
        Random random = new Random();

        return random.nextInt(12)+1;
    }
}
