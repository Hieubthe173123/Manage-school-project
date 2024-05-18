/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Entity.Account;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class AccountDBContext extends DBContext{
    public List<Account> getAllAccount(){
        List<Account> list = new ArrayList<>();
        
        
        return list;
    }
    
    public Account getAccountById(String username){
        Account acc = new Account();
  
        return acc;
    }
}
