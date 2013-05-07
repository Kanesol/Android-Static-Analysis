import java.io.*;
import java.util.*;
import java.lang.*;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class smaliReader
{
	ArrayList<String> fileLines = new ArrayList<String>();
	ArrayList<String> trace = new ArrayList<String>();
	
	File file;
	int lineNumber;
	String keyword;

	public smaliReader(File currentFile)
	{
		this(currentFile, 0, null);
	}
	
	public smaliReader(File currentFile, int lineNumber, String keyword)
	{
		//Read in the file		
		try {
            BufferedReader reader = new BufferedReader(new FileReader(currentFile));
       		String line = reader.readLine();
       
			while (line != null)
			{
				readF.add(line);
				
				line = reader.readLine();
				
			}
		
		} catch(IOException fnfe3) { 
				System.out.println(fnfe3.getMessage());
		}
	}
	
	public ArrayList<smaliReader> startTrace()
	{
		String result="";
		System.out.println("Starting trace");
		
		String line = this.fileLines.get(this.lineNumber);
				
		int searchLine = lineNumber + 1;
		
		if (this.keyword == null || this.keyword == "")
		{
			this.keyword = getStoredVarible(line);
		}
		
		ArrayList<smaliReader> smaliReaders = new ArrayList<smaliReader>();
		
		while (!line.contains(".end method"))
		{				
			if (line.contains(".method"))
			{
				line = this.fileLines.get(searchLine);
								
				boolean first = true;
				while (first)
				{
					line = line.trim();
					
					if (line.matches(".local\\s(.*)") && first)
					{
						String var = getStoredVarible(line);
						smaliReaders.add(new smaliReader(this.file, searchLine, var));
						
						System.out.println("Passed varible stored in " + storedVar);
						trace.add(line);
						first = false;
						//break;
						//
					}
					searchLine++;
					line = this.fileLines.get(searchLine);
				}
			}
			else if (line.contains("invoke-") || line.contains("move-result-object") || line.contains("return-object"))
			{				
				line = this.fileLines.get(searchLine);
				String nextInstance = "";
				String methodPackageName = line.replaceAll("\\(\\S+","");
								
				if (methodPackageName.contains("Lorg/apache/") || methodPackageName.contains("Ljava/") || line.contains("move-result")||line.contains("return-object"))
				{					
					if (line.contains(storedVar) && line.contains("return-object"))
					{
						System.out.println("Varible is returned by method");
						result = findMethodName(lineNumber);
						result = "->"+result;
						trace.add(line);
						
						smaliReaders.add(new smaliReader(null, 0, result));
					}
					else if ((lineNumber + 2)==searchLine && line.contains("move-result"))
					{	
						this.keyword = getStoredVarible(line);
						System.out.println("value now stored in " + storedVar);
						trace.add(line);
					}
					else if (line.contains(this.keyword))
					{
						String var = getStoredVarible(line);
						smaliReaders.add(new smaliReader(this.file, searchLine, var);
						
						System.out.println("Varible is now stored in " + storedVar);
						trace.add(line);
					}
				}
				else if(line.contains(this.keyword))
				{
					
					result = extractMethodName(line);
					result=".method(.*)"+result+"\\S+";
					trace.add(line);
					
					smaliReaders.add(new smaliReader(null, 0, result));
				}
			}
			
			searchLine++;
			line = this.fileLines.get(searchLine);
		}
		
		return smaliReaders;
	}
	
	public String extractMethodName(String line)
	{
		Pattern p = Pattern.compile("(?<=->)\\S+(?=\\()");
		Matcher m = p.matcher(line);
		int count = 0;
		if(m.find())
		{
			line = line.substring(m.start(), m.end());
		}
		
		return line;
	}
	
		
	public String findMethodName(int lineNumber)
	{
		String found="";
		
		for(int j=lineNumber; j>0; j--)
		{
			String line2 = readF.get(j).toString();
			
			if(line2.contains("method"))
			{
				String[] methNames = line2.split(" ");
										
				for (String a : methNames)
				{
					if (a.contains("("))
					{
						int endMethName = a.indexOf("(");
						String methName = a.substring(0, endMethName);
						System.out.println("Method called in: "+methName);
						return methName;
			
					}
				}
				return line2;

			
			}
			
		}
		return found;
	}
	
	public String getStoredVarible(String line)
	{
		line = line.trim();
		String[] elements = line.split(" ");
		String a = elements[1].replace("{", "").replace(",", "").replace("}", "");
					
		return a;
	}
	
	public String findKeyword(String keyword)
	{
		String result="";
				
		for(int i=0; i<readF.size(); i++)
		{
			
			String line = readF.get(i).toString();
			if(line.contains(keyword)|| line.matches(keyword) )
			{
				System.out.println(keyword+" accessed");
				trace.add(line);
				result = startTrace(keyword, i);
				return result;
			}
		}
		return result;
	}
	
	public ArrayList getTraceLog()
	{
		return trace;
	}
	
}


