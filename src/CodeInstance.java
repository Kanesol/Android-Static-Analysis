
public class CodeInstance implements Comparable<CodeInstance>
{
	private String instanceName;
	private String packageName;
	private String type;
	private String callMethod;
	
	public CodeInstance()
	{
		this.instanceName = null;
		this.packageName = null;
		this.type = null;
		this.callMethod = null;
	}
	
	public CodeInstance(String instanceName, String packageName, String type)
	{
		this.instanceName = instanceName;
		this.packageName = packageName;
		this.type = type;
		this.callMethod = null;
		
	}
	
	public CodeInstance(CodeInstance codeInstance)
	{
		this.instanceName = codeInstance.getInstanceName();
		this.packageName = codeInstance.getPackageName();
		this.type = codeInstance.getType();
		this.callMethod = codeInstance.getCallMethod();
		
	}
	
	public CodeInstance(String instanceName, String packageName, String type, String callMethod)
	{
		this.instanceName = instanceName;
		this.packageName = packageName;
		this.type = type;
		this.callMethod = callMethod;
		
	}
	//Setters
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

	@Override
	public int compareTo(CodeInstance o) {
		// TODO Auto-generated method stub
		return 1;
	}
	
}
