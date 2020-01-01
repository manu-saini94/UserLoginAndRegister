package com.bridgelabz.user.service;

import java.sql.SQLException;

public interface UserDao {
public String register(String ufname,String ulname,String umobile,String uaddr,String upin,String uemail,String upwd);
public String checkLogin(String uemail,String upwd) throws SQLException;

}
