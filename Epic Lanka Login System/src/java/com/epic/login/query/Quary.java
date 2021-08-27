/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.epic.login.query;

/**
 *
 * @author MCTech
 */
public class Quary {
    
    public static String registerUser = "INSERT INTO users" +
                "  ( user_name , address , email_address , contact, password, role , mothername) VALUES " +
                " ( ?, ?, ?, ?, ?,?,?);";
    
    public static String getuserbyNameAndPAssword = "select * from users where user_name = ? and password = ? ";
    
    public static String validateByName = "select * from users where user_name = ? ";
    
    public static String validateByPassword = "select * from users where password = ? ";
    
    public static String getDetailsByName="select user_name,address,email_address,contact,password,role,image from users WHERE user_name=?";
    
    public static String updateByName = "UPDATE users SET user_name=?,address=?,email_address=?,contact=?,password=?,role=? WHERE user_name=?";
    
    public static String updateImage = "UPDATE users SET image=? WHERE user_name=?";
    
    public static String getroleByName="select role from users WHERE user_name=?";
    
    public static String getDetailsByRole = "Select id, user_name, address, email_address, contact,image,status,password from Users where role = ?";
    
    public static String updateById = "UPDATE users SET user_name=?,address=?,email_address=?,contact=?, password=?  WHERE id=?";
    
    public static String deleteById="delete from users, user_log using users Inner Join user_log where users.id = ? and users.id= user_log.id;";
    
    public static String updateStatusById = "UPDATE users SET status=?  WHERE id=?";
    
    public static String getDetailsByNameAndRole = "select * from users where user_name = ? and status = ? ";
    
    public static String resetPassword = "select * from users where user_name = ? and contact = ? and mothername = ? ";
    
    public static String updateByNameReset = "UPDATE users SET password=?  WHERE user_name=?";
    
    public static String getImage="select image from users WHERE user_name=?";
    
    public static String getCountByRole="select count(id) from users where role=?";
    
    public static String getCountByStatesAndRole="select count(id) from users where status=? and role = 'USER'";
    
    public static String getIdFromName="select id from users where user_name=?";
    
    public static String addLog = "INSERT INTO user_log" +
                "  ( id , time  , data  , log) VALUES " +
                " ( ?, ?, ?, ?);";
    
    public static String getLog = "select user_log.id,time,data,log from users,user_log where users.id= user_log.id and user_name=?";
    
    
}
