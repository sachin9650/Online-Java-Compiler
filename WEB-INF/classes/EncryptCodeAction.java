package my;

public class EncryptCodeAction
{
	private String generatedCode;
	
	public EncryptCodeAction()
	{
		generatedCode="";
	}
	
	public void setGeneratedCode(String generatedCode)
	{
		this.generatedCode=generatedCode;
	}
	
	public String getGeneratedCode()
	{
		return generatedCode;
	}
	
	public String execute()
	{
		return "success";
	}
}