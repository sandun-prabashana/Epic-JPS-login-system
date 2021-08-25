/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.epic.login.controller;

import com.epic.login.dao.registerDAO;
import com.epic.login.model.UserLog;
import com.epic.login.model.Users;
import com.epic.login.security.AES;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonNumber;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/updateById") 

public class updateUserById extends HttpServlet {

    //create reference variable
    private registerDAO registrationDao;

    //create object class loading time
    public void init() {
        registrationDao =new registerDAO();
    }

    
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            
            
        try {
            JsonReader reader = Json.createReader(req.getReader());
            JsonObject jsonObject = reader.readObject();
            
            int id = Integer.parseInt(jsonObject.getString("id"));
            String userName = jsonObject.getString("user_name");
            String address = jsonObject.getString("address");
            String email = jsonObject.getString("email_address");
            String contact = jsonObject.getString("contact");
            String password = jsonObject.getString("password");
            
            System.out.println(id);
            System.out.println(userName);
            System.out.println(address);
            System.out.println(email);
            
            AES aes = new AES("gtevdywoap12gryd");
            String encdata = aes.encrypt(password);
            System.out.println(encdata);
            
            Users user = new Users();
            
            user.setId(id);
            user.setUser_name(userName);
            user.setAddress(address);
            user.setEmail_address(email);
            user.setContact(contact);
            user.setPassword(encdata);
            
            boolean b = registrationDao.updateUserById(user);
            PrintWriter writer = resp.getWriter();
            resp.setContentType("application/json");
            if (b){
                
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        String date = simpleDateFormat.format(new Date());
        System.out.println(date);
        
        
        Format f = new SimpleDateFormat("HH:mm:ss");
        String strResult = f.format(new Date());
        System.out.println("Time = "+strResult);
            
            
        String log="User Update By Admin";
        
        UserLog userlog = new UserLog();
        userlog.setId(id);
        userlog.setTime(strResult);
        userlog.setDate(date);
        userlog.setLog(log);
            
         registrationDao.addLog(userlog);
                
            writer.write("{\"operation\":\"success\"}");
            

            }else{
                writer.write("{\"operation\":\"failed\"}");
            }
            writer.close();
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(userUpdateController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(userUpdateController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
        
        
}


