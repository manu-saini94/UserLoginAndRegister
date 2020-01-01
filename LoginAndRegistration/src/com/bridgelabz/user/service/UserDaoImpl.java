package com.bridgelabz.user.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDaoImpl implements UserDao {

	ResultSet rs=null;
	Connection con=null;
	Statement st=null;
	String status="";
    
	public UserDaoImpl()
	{
		  try 
	   	    {
	   	        Class.forName("com.mysql.cj.jdbc.Driver");
	   	 
	   	         con= DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","root");
	   	         st= con.createStatement();
        	}
		  catch(Exception e)
		  {e.printStackTrace();
		  }
	}
	
	@Override
	public String checkLogin(String uemail,String upwd) throws SQLException {
		
		String s="select * from userlog where uemail='"+uemail+"' and upwd='"+upwd+"'";	
		 rs = st.executeQuery(s);
		 if(rs.next())
		 status="success";	 
	     else
		 status="failure";
		 return status;
	}

	@Override
	public String register(String ufname, String ulname, String umobile, String uaddr, String upin, String uemail,
			String upwd) throws SQLException
	{
		try {
		String s1="select * from userlog";
		ResultSet rs1=st.executeQuery(s1);
		while(rs1.next())
		{
			if(uemail.equals(rs1.getString(6)))
			status="existed";
			break;
		}
		if(!status.equals("existed"))
		{
			String s2="insert into userlog(ufname,ulname,umobile,uaddr,upin,uemail,upwd) values('"+ufname+"','"+ulname+"','"+umobile+"','"+uaddr+"','"+upin+"','"+uemail+"','"+upwd+"')";
		    int n=st.executeUpdate(s2);
		    System.out.println("Record added: "+n);
			status="success";
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			status="failure";
		}
			return status;
	}

	
	@Override
	public ResultSet display() throws SQLException {
		
	  String s="select * from userlog";
	  rs=st.executeQuery(s);
	  return rs;
	}

	@Override
	public ResultSet profile(String uemail) throws SQLException {
	
        String s="select * from userlog where uemail='"+uemail+"'";  

        rs=st.executeQuery(s);
		return rs;
	}

	@Override
	public ResultSet update(int uid) throws SQLException {
		
		 String s = "select * from userlog where uid='"+uid+"'";
	       rs=st.executeQuery(s);
		return rs;
	}

	
	

}
