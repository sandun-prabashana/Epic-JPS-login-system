/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.epic.login.security;

/**
 *
 * @author MCTech
 */
public class PasswordConveter {
    
    public static String convertPassword(String password) throws Exception{
        AES aes = new AES("gtevdywoap12gryd");
        String encdata =aes.encrypt(password);
        return encdata;
    }
    
}
