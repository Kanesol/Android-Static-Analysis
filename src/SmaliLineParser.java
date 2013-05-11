import java.util.ArrayList;




public class SmaliLineParser {
	
	
	//invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
	public SmaliLineParser()
	{
		
		
	}
	
	public CodeObject parse(String line)
	{
		CodeObject o = new CodeObject();
		line = line.trim();
		System.out.println(line);
		String[] elements = line.split(" ");
		o.setType(elements[0]);
		String PackageMethodReturn = elements[elements.length - 1];
		String returnType = PackageMethodReturn.substring(PackageMethodReturn.indexOf(")") + 1);
		//System.out.println(returnType);
		o.setReturnType(returnType);
		//System.out.println(PackageMethodReturn);
		String toParse = PackageMethodReturn.replace(")" + returnType, "");
		//System.out.println(toParse);
		String[] packageMethod = toParse.split(";");
		o.setPackageName(packageMethod[0]);
		
		String[] a = toParse.split("->");
		System.out.println(toParse);
		//System.out.println(a.length);
		a = a[1].split("\\(");
		a = a[1].replace(")", "").split(";");
		ArrayList<String> passedV = new ArrayList<String>();
		
		for(String e : a)
		{
			passedV.add(e);
		}
		o.setPassedVarTypes(passedV);
		
		
		//System.out.println(packageMethod[1]);
		String[] toParse2 = packageMethod[1].split("\\(");
		o.setMethodName(toParse2[0].replace("->", ""));
		/*ArrayList<String> passedV = new ArrayList<String>();
		passedV.add(toParse2[1]);
		if()
		{
			passedV.add(packageMethod[1]);
		}
		
		o.setPassedVarTypes(passedV);*/
		
		ArrayList<String> varibles = new ArrayList<String>();
		
		o.setReturnVar(elements[1].replace("{", "").replace(",", "").replace("}", ""));
			
		for(int i = 1; i < elements.length-1; i++)
		{
			//System.out.println(elements[i]);
			varibles.add(elements[i].replace("{", "").replace(",", "").replace("}", ""));
		}
		o.setPassedVar(varibles);
		
		return o;
	}
	
}
