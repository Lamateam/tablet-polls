package java.helpers;

import java.util.Random;
import java.lang.String;

public class RandomGenerator {
    public StringBuilder RandomGenerator(int length)
    {

        String symbols = "qwerty";
        StringBuilder randString = new StringBuilder();
        int count = (int)(Math.random()*30);
        for(int i=0;i<count;i++)
            randString.append(symbols.charAt((int)(Math.random()*symbols.length())));
        return randString;

    }
}
