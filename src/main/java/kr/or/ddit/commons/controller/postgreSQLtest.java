package kr.or.ddit.commons.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class postgreSQLtest {
	public static void main(String[] args) {
			Connection conn=null;
			String driver="org.postgresql.Driver";
			
			String url="jdbc:postgresql://localhost:5432/postgres";   
			String user = "postgres";
			String password = "java";
			
			try{
				Class.forName(driver);
				conn=DriverManager.getConnection(url,user,password);
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery("SELECT * FROM admin_emd");
				
				while (rs.next()) {
					System.out.println(rs.getString("sgg_nm"));
				}
				
				conn.close();   
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	
}
