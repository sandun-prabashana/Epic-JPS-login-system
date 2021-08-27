/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.epic.login.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.epic.login.model.Users;
import com.epic.login.dao.registerDAO;
import com.epic.login.model.UserLog;
import com.epic.login.security.AES;
import com.epic.login.security.PasswordConveter;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet("/login")
public class loginController extends HttpServlet {
	private registerDAO registerdao;

        private PasswordConveter conveter = new PasswordConveter();
        
	public void init() {
		registerdao = new registerDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
try{
		String name = request.getParameter("uname");
		String password = request.getParameter("password");
                
                System.out.println(password);

                
                String encdata = conveter.convertPassword(password);
                
		Users users = new Users();
		users.setUser_name(name);
		users.setPassword(encdata);

                
		
			if (registerdao.validate(users)) {
                                
                            String role =registerdao.getRole(name);
                            System.out.println("oyathamay"+role);
                            
                            if(role.equals("ADMIN")){
                                response.sendRedirect("new.jsp?name="+name);
                                
                                
                                ///////////////////////////////////////////////////////
            
        int id = registerdao.getId(name);
        System.out.println("game : "+id);
        
        
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        String date = simpleDateFormat.format(new Date());
        System.out.println(date);
        
        
        Format f = new SimpleDateFormat("HH:mm:ss");
        String strResult = f.format(new Date());
        System.out.println("Time = "+strResult);
            
            
        String log="Admin Sign IN";
        
        UserLog userlog = new UserLog();
        userlog.setId(id);
        userlog.setTime(strResult);
        userlog.setDate(date);
        userlog.setLog(log);
            
         registerdao.addLog(userlog);    
            
         ///////////////////////////////////////////////////////////////////////// 
                                
                            }else{
                                
                                String state="ACTIVE ";
                                
                                users.setStatus(state);
                                
                                if (registerdao.validateState(users)) {
                                response.sendRedirect("profile.jsp?name="+name);
                                
           ///////////////////////////////////////////////////////
            
        int id = registerdao.getId(name);
        System.out.println("game : "+id);
        
        
        String pattern = "yyyy-MM-dd";
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
        String date = simpleDateFormat.format(new Date());
        System.out.println(date);
        
        
        Format f = new SimpleDateFormat("HH:mm:ss");
        String strResult = f.format(new Date());
        System.out.println("Time = "+strResult);
            
            
        String log="User Sign IN";
        
        UserLog userlog = new UserLog();
        userlog.setId(id);
        userlog.setTime(strResult);
        userlog.setDate(date);
        userlog.setLog(log);
            
         registerdao.addLog(userlog);    
            
         ///////////////////////////////////////////////////////////////////////// 
                                
                                }else{
                                    response.sendRedirect("error.jsp");
                                }
                                
                                
                            }
//				response.sendRedirect("profile.jsp?email="+email);
                                System.out.println("ok");
                                
			} else {
                                response.sendRedirect("loginfrom.jsp");
                                System.out.println("kela una");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (Exception ex) {
                Logger.getLogger(loginController.class.getName()).log(Level.SEVERE, null, ex);
            }
	}
}

