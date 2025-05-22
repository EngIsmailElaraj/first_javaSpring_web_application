/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.in28muints.myfirstwebapp0.login;

import org.springframework.stereotype.Service;

/**
 *
 * @author LEGION
 */
@Service
public class AuthenticactionService {
    public boolean authenticate(String username,String password){
        
       boolean validUsername = username.equalsIgnoreCase("ismail");
       boolean validPassword = password.equalsIgnoreCase("123");
    return validUsername&&validPassword;
    }
}
