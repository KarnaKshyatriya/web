package Driver;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class First {
	
	public static void main(String args[])
	{
		String url="jdbc:mysql://localhost:3306/login";
		String userid="root";
		String password="admin123";
		
		try{  
			//Class.forName("com.mysql.jdbc.Driver"); //Loading class `com.mysql.jdbc.Driver'. This is deprecated. The new driver class is `com.mysql.cj.jdbc.Driver'. The driver is automatically registered via the SPI and manual loading of the driver class is generally unnecessary.
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(
					url,userid,password);
			
			//here sonoo is database name, root is username and password  
			
			java.sql.Statement stmt= con.createStatement(); 
			
			ResultSet rs=stmt.executeQuery("select * from login");  
			while(rs.next())  
			System.out.println(rs.getString(1)+"  "+rs.getInt(2));  
			con.close();  
			}catch(Exception e){ System.out.println(e);} 
	}

}
