import java.util.ArrayList;

public class CodeObject
{
	// invoke-direct 
	//{v5, 
	//v6, v7},
	// Lorg/apache/http/message/BasicNameValuePair;
	//-><init>
	//(Ljava/lang/String;Ljava/lang/String;)
	//V

	private String type;
	private String returnVar;
	private ArrayList<String> passedVar;
	private String packageName;
	private String methodName;
	private ArrayList<String> passedVarTypes;
	private String returnType;

	public CodeObject() 
	{

	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getReturnVar()
	{
		return returnVar;
	}

	public void setReturnVar(String returnVar)
	{
		this.returnVar = returnVar;
	}

	public ArrayList<String> getPassedVar()
	{
		return passedVar;
	}

	public void setPassedVar(ArrayList<String> passedVar)
	{
		this.passedVar = passedVar;
	}

	public String getPackageName()
	{
		return packageName;
	}

	public void setPackageName(String packageName)
	{
		this.packageName = packageName;
	}

	public String getMethodName()
	{
		return methodName;
	}

	public void setMethodName(String methodName)
	{
		this.methodName = methodName;
	}

	public ArrayList<String> getPassedVarTypes()
	{
		return passedVarTypes;
	}

	public void setPassedVarTypes(ArrayList<String> passedVarTypes)
	{
		this.passedVarTypes = passedVarTypes;
	}

	public String getReturnType()
	{
		return returnType;
	}

	public void setReturnType(String returnType)
	{
		this.returnType = returnType;
	}

}
