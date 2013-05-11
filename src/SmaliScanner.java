import java.util.ArrayList;


public class SmaliScanner {
	
	private Node<CodeInstance> instance;
	private ArrayList<Node<CodeInstance>> spawnedInstances = new ArrayList<Node<CodeInstance>>();
		
	public SmaliScanner(Node<CodeInstance> instance)
	{
		this.instance = instance;
		
		if(this.instance.getValue().getType().matches(".invoke"))
		{
			findInstanceCall();
		}
		else if(this.instance.getValue().getType().matches("storedVar"))
		{
			SmaliIO io = new SmaliIO();
			ArrayList<String> fileText = io.getFileText(this.instance.getValue().getFile());
			
			if(fileText.get(instance.getValue().getLine() + 2).contains("move-result-object"))
			{
				System.out.println("entered");
				CodeInstance newInstance = new CodeInstance(instance.getValue());
				newInstance.setType("move-result-object");
				this.spawnedInstances.add(instance.addChild(newInstance));
			}
			else
			{
				trace();
			}
			
		}
	}
	
	private void trace() 
	{
			
		
	}

	private void findInstanceCall()
	{
		//run through and find the file that contains the call to that method
		SmaliIO io = new SmaliIO();
		ArrayList<String> fileText = io.findInstance(instance.getValue());
		instance.getValue().setFile(io.getFoundInstanceFilename());
		
		if(fileText == null)
		{
			
		}
		else
		{
			int lineNumber = findInstanceLine(fileText);
			instance.getValue().setLine(lineNumber);		
			findMethod(lineNumber, fileText);
			getStoredVarible(fileText.get(lineNumber));
		}
		
	}

	private int findInstanceLine(ArrayList<String> fileText)
	{
		for(int i = 0; i < fileText.size(); i++)
		{
			if(fileText.get(i).contains(instance.getValue().getInstanceName()))
			{
				return i;
			}
		}
		return -1;
	}

	private void getStoredVarible(String currentLine) {
		
		currentLine = currentLine.trim();
		String[] elements = currentLine.split(" ");
		String varName = elements[1].replace("{", "").replace(",", "").replace("}", "");
		
		String packageName = elements[elements.length - 1];
		packageName = packageName.substring(packageName.indexOf(")") + 1);
		
		this.spawnedInstances.add(instance.addChild(new CodeInstance(varName, packageName, "storedVar", this.instance.getValue().getCallMethod(), this.instance.getValue().getFile(), this.instance.getValue().getLine())));
		
		
	}

	private void findMethod(int currentLine, ArrayList<String> fileText) 
	{
		for(int j=currentLine; j>0; j--)
		{
			String previousLine = fileText.get(j);
			
			if(previousLine.contains("method"))
			{
				String[] tokens = previousLine.split(" ");
										
				for (String token : tokens)
				{
					if (token.contains("("))
					{
						int endMethName = token.indexOf("(");
						String methName = token.substring(0, endMethName);
						this.instance.getValue().setCallMethod(methName);
					}
				}
			}
		}
	}

	public ArrayList<Node<CodeInstance>> getSpawnedInstances()
	{
		return this.spawnedInstances;
	}
}
