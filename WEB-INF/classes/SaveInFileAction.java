package my;

import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.IOException;

public class SaveInFileAction
{
	private String encryptedCode;
	private String decryptedCode;
	private BufferedWriter bw = null;
	private FileWriter fw = null;
	
	public void setEncryptedCode(String encryptedCode)
	{
		this.encryptedCode=encryptedCode;
	}
	
	public String getEncryptedCode()
	{
		return encryptedCode;
	}
	
	public void setDecryptedCode(String decryptedCode)
	{
		this.decryptedCode=decryptedCode;
	}
	
	public String getDecryptedCode()
	{
		return decryptedCode;
	}
	
	public String saveEncryptedFile()
	{
		saveFile("EncryptedFile.txt", getEncryptedCode());
		return "success";
	}
	
	public String saveDecryptedFile()
	{
		saveFile("DecryptedFile.txt", getDecryptedCode());
		return "success";
	}
	
	public void saveFile(String fileName, String code)
	{
		try 
		{

			fw = new FileWriter(fileName);
			bw = new BufferedWriter(fw);
			bw.write(code);
		} 
		catch (IOException e) 
		{
			e.printStackTrace();
		}
		
		finally 
		{
			try 
			{
				if (bw != null)
					bw.close();

				if (fw != null)
					fw.close();
			} 
			catch (IOException ex) 
			{
				ex.printStackTrace();
			}
		}
	}
}