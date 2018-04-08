package my;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletContext;
import org.apache.struts2.util.ServletContextAware;

public class Database
{
	private static Connection conn;
	private static PreparedStatement ps1;
	private static PreparedStatement ps2;
	private static PreparedStatement ps3;
	private ResultSet rs;
	private static Database database;
	private ServletContext servletContext;
	private static String url;
	private static String username;
	private static String password;
	private static String driver;
	
	private Database()
	{
		url="jdbc:mysql://localhost:3306/student";
		username="root";
		password="1388470";
		driver="com.mysql.jdbc.Driver";
	}
	
	public static Database getObject()
	{
		if(conn==null)
		{
			try
			{
				database=new Database();
				createConnection(url, username, password, driver);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		return database;
	}
	
	private static void createConnection(String url, String username, String password, String driver)
	{
		try
		{
			Class.forName(driver);
			conn=DriverManager.getConnection(url, username, password);
			System.out.println(conn);
			ps1=conn.prepareStatement("INSERT INTO onjac VALUES(?,?,?,?,?)");
			ps2=conn.prepareStatement("SELECT email FROM onjac WHERE email=?");
			ps3=conn.prepareStatement("SELECT username FROM onjac WHERE email=? and password=?");
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}	
	
	public void storeRecord(String userName, String password, String email, String dob, String gender)
	{
		try
		{
			System.out.println(userName+" "+password+ " "+email+ " "+dob+ " "+gender);
			ps1.setString(1,userName);
			ps1.setString(2,password);
			ps1.setString(3,email);
			ps1.setString(4,dob);
			ps1.setString(5,gender);
			ps1.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public boolean isRecordExist(String email) throws Exception
	{
		ps2.setString(1,email);
		rs=ps2.executeQuery();
		if(rs.next())
			return true;
		else
			return false;
	}
	
	public String isUserValid(String email, String password) throws Exception
	{
		ps3.setString(1,email);
		ps3.setString(2,password);
		rs=ps3.executeQuery();
		if(rs.next())
			return rs.getString(1);
		else
			return null;
	}
}