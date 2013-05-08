
public class CodeInstance implements Comparable<CodeInstance>
{
	private String instanceName;
	private String packageName;
	private String type;
	
	public CodeInstance()
	{
		this.instanceName = null;
		this.packageName = null;
		this.type = null;
	}
	
	public CodeInstance(String instanceName, String packageName, String type)
	{
		this.instanceName = instanceName;
		this.packageName = packageName;
		this.type = type;
		
	}
	
	//Setters
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
		return this.instanceName.compareTo(o.getInstanceName());
	}
	
}
