package com.model.Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	public static Connection do_Connect()
	{
		Connection con=null;
		/*String url="jdbc:oracle:thin:@172.16.0.30:1521:orcl";
		String usernm="scott";
		String pass="tiger";*/
		
		String url="jdbc:oracle:thin:system/arnab@localhost:1521:XE";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			con=DriverManager.getConnection(url);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
}
