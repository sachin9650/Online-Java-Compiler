package my;

import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.IOException;

import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;

public class ActualEncryptionAction
{

	private String generatedCode;
	private String encryptedCode;
	private String decryptedCode;
	private String secretKey;
	private File uploadFile;
	
	public ActualEncryptionAction()
	{
		secretKey="SecretKey";
	}
	
	public void setGeneratedCode(String generatedCode)
	{
		this.generatedCode=generatedCode;
	}
	
	public String getGeneratedCode()
	{
		return generatedCode;
	}
	
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
	
	public void setUploadFile(File uploadFile)
	{
		this.uploadFile=uploadFile;
	}
	
	public File getUploadFile()
	{
		return uploadFile;
	}
	
	public String encrypt() throws Exception
	{
		MessageDigest md = MessageDigest.getInstance("SHA-1");
		byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"));
		byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24);
		
		SecretKey key = new SecretKeySpec(keyBytes, "DESede");
		Cipher cipher = Cipher.getInstance("DESede");
		cipher.init(Cipher.ENCRYPT_MODE, key);
		
		byte[] plainTextBytes = getGeneratedCode().getBytes("utf-8");
	    byte[] buf = cipher.doFinal(plainTextBytes);
	    byte [] base64Bytes = Base64.encodeBase64(buf);
	    encryptedCode = new String(base64Bytes);
		
		return "success";
	}
	
	public String decrypt() throws Exception
	{
		System.out.println(uploadFile.getPath());
		encryptedCode=readFile(uploadFile);
		System.out.println(getEncryptedCode());
		
		byte[] message = Base64.decodeBase64(getEncryptedCode().getBytes("utf-8"));
		
		MessageDigest md = MessageDigest.getInstance("SHA-1");
		byte[] digestOfPassword = md.digest(secretKey.getBytes("utf-8"));
		byte[] keyBytes = Arrays.copyOf(digestOfPassword, 24);
		SecretKey key = new SecretKeySpec(keyBytes, "DESede");
		
		Cipher decipher = Cipher.getInstance("DESede");
		decipher.init(Cipher.DECRYPT_MODE, key);
		
		byte[] plainText = decipher.doFinal(message);
		
		decryptedCode=new String(plainText, "UTF-8");
		return "success";
	}
	
	private String readFile(File fileName) throws IOException 
	{
		BufferedReader br = new BufferedReader(new FileReader(fileName));
		try 
		{
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();

			while (line != null) 
			{
				sb.append(line);
				sb.append("\n");
				line = br.readLine();
			}
			return sb.toString();
		} 
		finally 
		{
			br.close();
		}
	}
}