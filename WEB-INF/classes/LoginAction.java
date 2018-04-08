package my;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport
{
	private String email;
	private String password;
	private Database d;
	private String userName;
	
	public void setUserName(String username)
	{
		this.userName=userName;
	}
	
	public String getUserName()
	{
		return userName;
	}
	
	public void setEmail(String email)
	{
		this.email=email;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public void setPassword(String password)
	{
		this.password=password;
	}
	
	public String getPassword()
	{
		return password;
	}
	
	public String execute() throws Exception
	{
		System.out.println("Login Executes");
		d=Database.getObject();
		userName=d.isUserValid(getEmail(), getPassword());
		System.out.println(userName);
		if(userName==null)
			return INPUT;
		else
		
			return SUCCESS;
	}
}
