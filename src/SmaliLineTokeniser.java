/***********************************
 * 
 * This class tokenises the smali code
 * to allow for easier reading and
 * less string manipulation in the
 * SmaliReader
 * 
 * @version 1.0
 * @author Solomon Redfern
 * 
 */

import java.util.ArrayList;


public class SmaliLineTokeniser{
	
	public SmaliLineTokeniser()
	{
		
		
	}
	
	/*
	 * Within this method the line is manipulated
	 * and stored in a codeObject
	 */
	public CodeObject tokenise(String line)
	{
		CodeObject o = new CodeObject();
		line = line.trim();
		String[] elements = line.split(" ");
		o.setType(elements[0]);
		String PackageMethodReturn = elements[elements.length - 1];
		String returnType = PackageMethodReturn.substring(PackageMethodReturn.indexOf(")") + 1);
		o.setReturnType(returnType);
		String toParse = PackageMethodReturn.replace(")" + returnType, "");
		String[] packageMethod = toParse.split(";");
		o.setPackageName(packageMethod[0]);
		
		System.out.println(toParse);
		String[] a = line.split("->");
		a = a[1].split("\\(");
		System.out.println(a);
		a = a[1].replace(")", "").split(";");
		ArrayList<String> passedV = new ArrayList<String>();
		
		for(String e : a)
		{
			passedV.add(e);
		}
		o.setPassedVarTypes(passedV);
		
		String[] toParse2 = packageMethod[1].split("\\(");
		o.setMethodName(toParse2[0].replace("->", ""));
				
		ArrayList<String> varibles = new ArrayList<String>();
		
		o.setReturnVar(elements[1].replace("{", "").replace(",", "").replace("}", ""));
			
		for(int i = 1; i < elements.length-1; i++)
		{
			varibles.add(elements[i].replace("{", "").replace(",", "").replace("}", ""));
		}
		o.setPassedVar(varibles);
		
		return o;
	}
	
}
