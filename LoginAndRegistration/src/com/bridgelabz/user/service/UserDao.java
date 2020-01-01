package com.bridgelabz.user.service;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface UserDao {
public String register(String ufname,String ulname,String umobile,String uaddr,String upin,String uemail,String upwd) throws SQLException;
public String checkLogin(String uemail,String upwd) throws SQLException;
public ResultSet display() throws SQLException;
public ResultSet profile(String uemail) throws SQLException;
public ResultSet update(int uid) throws SQLException;
public String updatedInsert(String ufname,String ulname,String umobile,String uaddr,String upin,String uemail,String upwd);

}
