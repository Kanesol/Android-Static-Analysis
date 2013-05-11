import java.nio.file.Path;


public class CodeInstance implements Comparable<CodeInstance>
{
	private String instanceName;
	private String packageName;
	private String type;
	private String callMethod;
	private Path file;
	private int line;
	
	public CodeInstance()
	{
		this.instanceName = null;
		this.packageName = null;
		this.type = null;
		this.callMethod = null;
		this.file = null;
		this.line = -1;
	}
	
	public CodeInstance(String instanceName, String packageName, String type)
	{
		this.instanceName = instanceName;
		this.packageName = packageName;
		this.type = type;
		this.callMethod = null;
		this.file = null;
		this.line = -1;
		
	}
	
	public CodeInstance(CodeInstance codeInstance)
	{
		this.instanceName = codeInstance.getInstanceName();
		this.packageName = codeInstance.getPackageName();
		this.type = codeInstance.getType();
		this.callMethod = codeInstance.getCallMethod();
		this.file = codeInstance.getFile();
		this.line = codeInstance.getLine();
		
	}
	

	public CodeInstance(String instanceName, String packageName, String type, String callMethod, Path file, int line)
	{
		this.instanceName = instanceName;
		this.packageName = packageName;
		this.type = type;
		this.callMethod = callMethod;
		this.file = file;
		this.line = line;
		
	}
	
	//Setters
	public void setLine(int line)
	{
		this.line = line;
	}
	
	public void setFile(Path file)
	{
		this.file = file;
	}
	
	public void setCallMethod(String callMethod)
	{
		this.callMethod = callMethod;
	}
	
	public void setInstanceName(String instanceName)
	{
		this.instanceName = instanceName;
	}
	
	public void setPackageName(String packageName)
	{
		this.packageName = packageName;
	}
	
	public void setType(String type)
	{
		this.type = type;
	}
	
	//Accessors
	public int getLine()
	{
		return this.line;
	}
	public String getCallMethod()
	{
		return this.callMethod;
	}
	public String getInstanceName()
	{
		return this.instanceName;
	}
	
	public String getPackageName()
	{
		return this.packageName;
	}
	
	public String getType()
	{
		return this.type;
	}
	
	public Path getFile() 
	{
		return this.file;
	}

	@Override
	public int compareTo(CodeInstance o) {
		// TODO Auto-generated method stub
		return 1;
	}
	
}
