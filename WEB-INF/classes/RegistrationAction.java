package my;
import com.opensymphony.xwork2.ActionSupport;

public class RegistrationAction extends ActionSupport
{
	private String userName;
	private String email;
	private String password;
	private String dob;
	private String gender;
	private Database d;
	
	public void setUserName(String userName)
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
	
	public void setDob(String dob)
	{
		this.dob=dob;
	}
	
	public String getDob()
	{
		return dob;
	}
	
	public void setGender(String gender)
	{
		this.gender=gender;
	}
	
	public String getGender()
	{
		return gender;
	}
	
	public String execute() throws Exception
	{
		d=Database.getObject();
		if(d.isRecordExist(getEmail()))
			return INPUT;
		else
		{
			d.storeRecord(getUserName(), getPassword(), getEmail(), getDob(), getGender());
			return SUCCESS;
		}
	}
}
