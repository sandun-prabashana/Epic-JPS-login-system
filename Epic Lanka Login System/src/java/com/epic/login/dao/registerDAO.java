    /*
     * To change this license header, choose License Headers in Project Properties.
     * To change this template file, choose Tools | Templates
     * and open the template in the editor.
     */
    package com.epic.login.dao;

    import com.epic.login.db.DBConnection;
    import com.epic.login.model.UserLog;
    import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.PreparedStatement;
    import java.sql.SQLException;

    import com.epic.login.model.Users;
import com.epic.login.query.Quary;
    import com.epic.login.security.AES;
    import java.sql.ResultSet;
    import java.util.ArrayList;
    import java.util.logging.Level;
    import java.util.logging.Logger;

    public class registerDAO extends Quary{
        
        Quary quary = new Quary();
    public boolean registerEmployee(Users users) throws ClassNotFoundException {

            
            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.registerUser); 
                        preparedStatement.setString(1, users.getUser_name());
                        preparedStatement.setString(2, users.getAddress());
                        preparedStatement.setString(3, users.getEmail_address());
                        preparedStatement.setString(4, users.getContact());
                        preparedStatement.setString(5, users.getPassword());
                        preparedStatement.setString(6, users.getRole());
                        preparedStatement.setString(7, users.getMothername());
                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }

            public boolean validate(Users users) throws ClassNotFoundException {

                    boolean status = false;

                    DBConnection connection = null;

                    try {
                             connection = new DBConnection();


                            PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.getuserbyNameAndPAssword) ;
                                        preparedStatement.setString(1, users.getUser_name());
                                        preparedStatement.setString(2, users.getPassword());

                            System.out.println(preparedStatement);
                            ResultSet rs = preparedStatement.executeQuery();
                            status = rs.next();
                    } catch (SQLException e) {
                        try {
                            connection.connection.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }


                    return status;
            }

            public boolean user_name_validate(Users users) throws ClassNotFoundException {

                    

                    boolean status = false;

                    DBConnection connection = null;

                    try {
                             connection = new DBConnection();


                            PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.validateByName) ;
                            preparedStatement.setString(1, users.getUser_name());

                            System.out.println(preparedStatement);
                            ResultSet rs = preparedStatement.executeQuery();
                            status = rs.next();
                    } catch (SQLException e) {
                        try {
                            connection.connection.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }


                    return status;
            }


                    public boolean user_password_validate(Users users) throws ClassNotFoundException {



                    boolean status = false;

                    DBConnection connection = null;

                    try {
                             connection = new DBConnection();


                            PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.validateByPassword) ;
                            preparedStatement.setString(1, users.getPassword());

                            System.out.println(preparedStatement);
                            ResultSet rs = preparedStatement.executeQuery();
                            status = rs.next();
                    } catch (SQLException e) {
                        try {
                            connection.connection.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }


                    return status;
            }




           public ArrayList<Users> userDetails(String name) {
            DBConnection connection = null;
            try {
                connection = new DBConnection();

                PreparedStatement pstm = connection.getConnection().prepareStatement(quary.getDetailsByName);
                pstm.setString(1, name);
                ResultSet rst = pstm.executeQuery();
                ArrayList<Users> load = new ArrayList<>();
                while (rst.next()) {
                    System.out.println(rst.getString(5));

                    AES aes = new AES("gtevdywoap12gryd");
                    String decdata =  aes.decrypt(rst.getString(5));

                    System.out.println(decdata);

                    load.add(new Users(rst.getString(1), rst.getString(2), rst.getString(3), rst.getString(4), decdata, rst.getString(6), rst.getString(7)));
                }
                return load;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return null;

        }

           public boolean updateUser(Users users) throws ClassNotFoundException {


            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.updateByName); 
                        preparedStatement.setString(1, users.getUser_name());
                        preparedStatement.setString(2, users.getAddress());
                        preparedStatement.setString(3, users.getEmail_address());
                        preparedStatement.setString(4, users.getContact());
                        preparedStatement.setString(5, users.getPassword());
                        preparedStatement.setString(6, users.getRole());
                        preparedStatement.setString(7, users.getUser_name());
                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }

            public boolean updateImage(Users users) throws ClassNotFoundException {

            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.updateImage); 
                        preparedStatement.setString(1, users.getImage());
                        preparedStatement.setString(2, users.getUser_name());
                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }




            public String getRole(String name) {
            String role=null;
                DBConnection connection = null;
        try {


            connection = new DBConnection();
            
            PreparedStatement pstm = connection.getConnection().prepareStatement(quary.getroleByName);
            pstm.setString(1, name);
            ResultSet rst = pstm.executeQuery();

            while (rst.next()) {
                    System.out.println(rst.getString(1));

                    role=rst.getString(1);
                }
            return role;
        } catch (SQLException ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

         }


            public ArrayList<Users> loadAllData(String role) {
                System.out.println("reg bd");
        try {
            System.out.println("reg bd");
            

            Users u = new Users();

            DBConnection dbConnection = null;

            ResultSet rst = null;

            dbConnection = new DBConnection();
            PreparedStatement pstm = dbConnection.getConnection().prepareStatement(quary.getDetailsByRole);
            pstm.setString(1, role);
            rst = pstm.executeQuery();

            ArrayList<Users> load = new ArrayList<>();
            while (rst.next()) {

                AES aes = new AES("gtevdywoap12gryd");
                String decdata =  aes.decrypt(rst.getString(8));

                load.add(new Users(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4), rst.getString(5),rst.getString(6),rst.getString(7),decdata));

                System.out.println("hari");
            }
            System.out.println("noo");
            dbConnection.connection.close();
            return load;
        } catch (SQLException ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return null;
        }

        public boolean updateUserById(Users users) throws ClassNotFoundException {


            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.updateById); 
                        preparedStatement.setString(1, users.getUser_name());
                        preparedStatement.setString(2, users.getAddress());
                        preparedStatement.setString(3, users.getEmail_address());
                        preparedStatement.setString(4, users.getContact());
                        preparedStatement.setString(5, users.getPassword());
                        preparedStatement.setInt(6, users.getId());
                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }

            public int deleteUser(int id) throws SQLException {



            System.out.println("wade hari");
            int i = 0;
            DBConnection dbConnection = null;
            try {
                dbConnection = new DBConnection();

                PreparedStatement pstm = dbConnection.getConnection().prepareStatement(quary.deleteById);
                pstm.setObject(1, id);
                System.out.println("bye");
                i = pstm.executeUpdate();
                return i;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } finally {
                dbConnection.connection.close();
            }
            return 0;
        }


            public boolean updateState(Users users) throws ClassNotFoundException {

            
            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.updateStatusById); 
                        preparedStatement.setString(1, users.getStatus());
                        preparedStatement.setInt(2, users.getId());
                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }

                    public boolean validateState(Users users) throws ClassNotFoundException {

                    

                    boolean status = false;

                    DBConnection connection = null;

                    try {
                             connection = new DBConnection();


                            PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.getDetailsByNameAndRole) ;
                                        preparedStatement.setString(1, users.getUser_name());
                                        preparedStatement.setString(2, users.getStatus());

                            System.out.println(preparedStatement);
                            ResultSet rs = preparedStatement.executeQuery();
                            status = rs.next();
                    } catch (SQLException e) {
                        try {
                            connection.connection.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }


                    return status;
            }

                            public boolean uservalidate(Users users) throws ClassNotFoundException {

                    

                    boolean status = false;

                    DBConnection connection = null;

                    try {
                             connection = new DBConnection();


                            PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.resetPassword) ;
                            preparedStatement.setString(1, users.getUser_name());
                            preparedStatement.setString(2, users.getContact());
                            preparedStatement.setString(3, users.getMothername());

                            System.out.println(preparedStatement);
                            ResultSet rs = preparedStatement.executeQuery();
                            status = rs.next();
                    } catch (SQLException e) {
                        try {
                            connection.connection.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
                        }
                    }


                    return status;
            }

           public boolean restPassword(Users users) throws ClassNotFoundException {

            
            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.updateByNameReset); 
                        preparedStatement.setString(1, users.getPassword());;
                        preparedStatement.setString(2, users.getUser_name());

                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }

            public ArrayList<Users> getImage(String name) {
            DBConnection connection = null;
            try {
                connection = new DBConnection();

                PreparedStatement pstm = connection.getConnection().prepareStatement(quary.getImage);
                pstm.setString(1, name);
                ResultSet rst = pstm.executeQuery();
                ArrayList<Users> load = new ArrayList<>();
                while (rst.next()) {

                    load.add(new Users(rst.getString(1)));
                }
                return load;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return null;

        }

            public String getCount(String role) {
            DBConnection connection = null;
            String count = null;
            try {
                connection = new DBConnection();

                PreparedStatement pstm = connection.getConnection().prepareStatement(quary.getCountByRole);
                pstm.setString(1, role);
                ResultSet rst = pstm.executeQuery();
                while (rst.next()) {
                     count = rst.getString(1);
                }
                return count;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return null;

        }

            public String getCountBystatus(String status) {
            DBConnection connection = null;
            String count = null;
            try {
                connection = new DBConnection();

                PreparedStatement pstm = connection.getConnection().prepareStatement(quary.getCountByStatesAndRole);
                pstm.setString(1, status);
                ResultSet rst = pstm.executeQuery();
                while (rst.next()) {
                     count = rst.getString(1);
                }
                return count;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return null;

        }

            public int getId(String name) {
            DBConnection connection = null;
            int id = 0;
            try {
                connection = new DBConnection();

                PreparedStatement pstm = connection.getConnection().prepareStatement(quary.getIdFromName);
                pstm.setString(1, name);
                ResultSet rst = pstm.executeQuery();
                while (rst.next()) {
                     id = rst.getInt(1);
                }
                return id;
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            ;
        return 0;

        }

            public boolean addLog(UserLog userlog) throws ClassNotFoundException {

            
            DBConnection connection = null;
            try {
                connection = new DBConnection();


                        PreparedStatement preparedStatement = connection.getConnection().prepareStatement(quary.addLog); 
                        preparedStatement.setInt(1,userlog.getId() );
                        preparedStatement.setString(2, userlog.getTime() );
                        preparedStatement.setString(3, userlog.getDate());
                        preparedStatement.setString(4, userlog.getLog());
                        System.out.println(preparedStatement);

                int i = preparedStatement.executeUpdate();
                if (i >= 0) {
                    return true;
                } else {
                    return false;
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    connection.connection.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            return false;
        }


           public ArrayList<UserLog> searchLog(String name) {
        try {
            System.out.println("reg bd");


            Users u = new Users();

            DBConnection dbConnection = null;

            ResultSet rst = null;

            dbConnection = new DBConnection();
            PreparedStatement pstm = dbConnection.getConnection().prepareStatement(quary.getLog);
            pstm.setString(1, name);
            rst = pstm.executeQuery();

            ArrayList<UserLog> load = new ArrayList<>();
            while (rst.next()) {



                load.add(new UserLog(rst.getInt(1), rst.getString(2), rst.getString(3), rst.getString(4)));

                System.out.println("hari");
            }
            System.out.println("noo");
            dbConnection.connection.close();
            return load;
        } catch (SQLException ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(registerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            return null;
        }

    }