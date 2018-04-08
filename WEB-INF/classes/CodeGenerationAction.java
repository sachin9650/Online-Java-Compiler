package my;

public class CodeGenerationAction
{
	private String pkgName;
	private String superClassName;
	private String className;
	private String interfaceName;
	private String accessModifier;
	private String abstractModifier;
	private String finalModifier;
	private String pkgImport;
	private String implInterfaces;
	private String propertiesName;
	private String methodsName;
	private String codeGenerator;
	
	public CodeGenerationAction()
	{
		pkgName="";
		superClassName="";
		className="";
		interfaceName="";
		accessModifier="";
		abstractModifier="";
		finalModifier="";
		pkgImport="";
		implInterfaces="";
		propertiesName="";
		methodsName="";
		codeGenerator="";
	}
	
	public void setPkgName(String pkgName)
	{
		this.pkgName=pkgName;
	}
	
	public String getPkgName()
	{
		return pkgName;
	}
	
	public void setSuperClassName(String superClassName)
	{
		this.superClassName=superClassName;
	}
	
	public String getSuperClassName()
	{
		return superClassName;
	}
	
	public void setClassName(String className)
	{
		this.className=className;
	}
	
	public String getClassName()
	{
		return className;
	}
	
	public void setInterfaceName(String interfaceName)
	{
		this.interfaceName=interfaceName;
	}
	
	public String getInterfaceName()
	{
		return interfaceName;
	}
	
	public void setAccessModifier(String accessModifier)
	{
		this.accessModifier=accessModifier;
	}
	
	public String getAccessModifier()
	{
		return accessModifier;
	}
	
	public void setAbstractModifier(String abstractModifier)
	{
		this.abstractModifier=abstractModifier;
	}
	
	public String getAbstractModifier()
	{
		return abstractModifier;
	}
	
	public void setFinalModifier(String finalModifier)
	{
		this.finalModifier=finalModifier;
	}
	
	public String getFinalModifier()
	{
		return finalModifier;
	}
	
	public void setPkgImport(String pkgImport)
	{
		this.pkgImport=pkgImport;
	}
	
	public String getPkgImport()
	{
		return pkgImport;
	}
	
	public void setImplInterfaces(String implInterfaces)
	{
		this.implInterfaces=implInterfaces;
	}
	
	public String getImplInterfaces()
	{
		return implInterfaces;
	}
	
	public void setPropertiesName(String propertiesName)
	{
		this.propertiesName=propertiesName;
	}
	
	public String getPropertiesName()
	{
		return propertiesName;
	}
	
	public void setMethodsName(String methodsName)
	{
		this.methodsName=methodsName;
	}
	
	public String getMethodsName()
	{
		return methodsName;
	}
	
	public void setCodeGenerator(String codeGenerator)
	{
		this.codeGenerator=codeGenerator;
	}
	
	public String getCodeGenerator()
	{
		return codeGenerator;
	}
	
	public String execute()
	{
		StringBuilder builder=new StringBuilder();
		
		if(!(pkgName.equals("")))
			builder.append("package "+pkgName+';'+"\n\n");
			
		if(!(pkgImport.equals("")))
		{
			String[] pkgs = pkgImport.split(";");
			for(int i=0;i<pkgs.length;i++)
			{
				System.out.println(pkgs[i]);
				builder.append("import "+pkgs[i].trim()+';'+'\n');
				System.out.println(builder);
			}
			builder.append("\n");
		}
		if(accessModifier.equals("public"))
			builder.append("public ");
			
		if(abstractModifier.equals("true"))	
			builder.append("abstract ");
			
		if(finalModifier.equals("true"))	
			builder.append("final ");
		
		if(className.equals(""))
		{
			if(!(interfaceName.equals("")))
				builder.append("interface "+interfaceName);
		}
		else
			builder.append("class "+className);
			
		if(!(superClassName.equals("")))
			builder.append(" extends "+superClassName);
		
		if(!(implInterfaces.equals("")))
		{
			String[] interfaces = implInterfaces.split("\\W+");
			builder.append(" implements ");
			for(int i=0;i<interfaces.length;i++)
			{	
				if(i!=0)
				{
					builder.append(", ");
					System.out.println(builder);
				}
				System.out.println(interfaces[i]);
				builder.append(interfaces[i].trim());
			}
		}
		
		if(!(className.equals("")) | (!interfaceName.equals("")))
		{
			
			builder.append("\n{\n");
			builder.append("public static void main(String args[])\n{\n");
		}
		
		if(!(propertiesName.equals("")))
		{
			String[] properties = propertiesName.split(";");
			for(String property: properties)
			{
				System.out.println(property);
				builder.append(property.trim()+';'+'\n');
			}
			builder.append("\n");
		}

		
		if(!(methodsName.equals("")))
		{
			String[] methods = methodsName.split(";");
			for(String method: methods)
			{
				System.out.println(method);
				builder.append(method.trim()+"\n"+"{\n\n"+"}");
			}
		}
		
		if(!(className.equals("")) | (!interfaceName.equals("")))
			builder.append("\n}\n}");
		
		setCodeGenerator(builder.toString());
		return "success";
	}
}