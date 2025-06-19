package com.actionbeans.login;

import java.util.Random;

public class PasswordGenerationActionBean {

    private static final Random random = new Random();
    private static final String CHAR_POOL = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    private static final int PASSWORD_LENGTH = 10;

    public static String getPassword() {
        StringBuilder password = new StringBuilder(PASSWORD_LENGTH);
        try {
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = random.nextInt(CHAR_POOL.length());
                password.append(CHAR_POOL.charAt(index));
            }
            System.out.println("Generated password: " + password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return password.toString();
    }
}
