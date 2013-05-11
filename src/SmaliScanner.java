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
		else if(this.instance.getValue().getType().matches("storedVar") || this.instance.getValue().getType().matches("move-result-object"))
		{
			
			trace();
					
		}
	}
	
	private void trace() 
	{
		SmaliIO io = new SmaliIO();
		ArrayList<String> fileText = io.getFileText(this.instance.getValue().getFile());
		
		
		for(int i = instance.getValue().getLine() + 1; fileText.get(i).contains(".end method") == false; i++)
		{
				
				
				if(fileText.get(i).contains("return-object" + " " + instance.getValue().getInstanceName()))
				{
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("return-object");
					Node<CodeInstance> newNodeInstance = instance.addChild(endInstance);
					CodeInstance newInstance = new CodeInstance(instance.getValue().getCallMethod(), instance.getValue().getFile().toString(), ".invoke" );
					this.spawnedInstances.add(newNodeInstance.addChild(newInstance));
					
				}
				else if(fileText.get(i).contains("move-result-object " + instance.getValue().getInstanceName()) || fileText.get(i).contains("new-instance " + instance.getValue().getInstanceName()))
				{
					System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("overwritten");
					Node<CodeInstance> newNodeInstance = instance.addChild(endInstance);
					break;
				}
				else if(fileText.get(i).contains(".end local " + instance.getValue().getInstanceName()))
				{
					System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("destroyed");
					Node<CodeInstance> newNodeInstance = instance.addChild(endInstance);
					break;
				}
				else if(fileText.get(i).contains(this.instance.getValue().getInstanceName()))
				{
					//System.out.println("entered; " + fileText.get(i));
					SmaliLineParser parser = new SmaliLineParser();
					CodeObject o = parser.parse(fileText.get(i));
					if(o.getPassedVar().contains(this.instance.getValue().getInstanceName()))
					{
						//System.out.println("entered; " + fileText.get(i));
						CodeInstance newInstance = new CodeInstance(o.getReturnVar(), instance.getValue().getFile().toString(), "storedVar", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
						Node<CodeInstance> newNodeInstance = instance.addChild(newInstance);
						
						this.spawnedInstances.add(newNodeInstance);
						
					}
					
				}
				
		}
		
		
		
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
			Node<CodeInstance> newNodeInstance = instance.addChild(new CodeInstance(findStoredVarible(fileText.get(lineNumber)), findPackageName(fileText.get(lineNumber)), "storedVar", this.instance.getValue().getCallMethod(), this.instance.getValue().getFile(), this.instance.getValue().getLine()));
			
			if(fileText.get(instance.getValue().getLine() + 2).contains("move-result-object"))
			{
				CodeInstance newInstance = new CodeInstance(newNodeInstance.getValue());
				//newInstance.setPackageName(findPackageName(fileText.get(newNodeInstance.getValue().getLine() + 2)));
				newInstance.setInstanceName(findStoredVarible(fileText.get(newNodeInstance.getValue().getLine() + 2)));
				newInstance.setType("move-result-object");
				newInstance.setLine(newNodeInstance.getValue().getLine() + 2);
				this.spawnedInstances.add(newNodeInstance.addChild(newInstance));
				
				CodeInstance endInstance = new CodeInstance(newNodeInstance.getValue());
				endInstance.setType("overwritten");
				newNodeInstance.addChild(endInstance);
				
			}
			else
			{
				this.spawnedInstances.add(newNodeInstance);
			}
			
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

	private String findPackageName(String currentLine)
	{
		currentLine = currentLine.trim();
		String[] elements = currentLine.split(" ");
			
		String packageName = elements[elements.length - 1];
		packageName = packageName.substring(packageName.indexOf(")") + 1);
		
		return packageName;
	}
	private String findStoredVarible(String currentLine) {
		
		currentLine = currentLine.trim();
		String[] elements = currentLine.split(" ");
		String varName = elements[1].replace("{", "").replace(",", "").replace("}", "");
		
		String packageName = elements[elements.length - 1];
		packageName = packageName.substring(packageName.indexOf(")") + 1);
		
		return varName;
		
		
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
				break;
			}
		}
	}

	public ArrayList<Node<CodeInstance>> getSpawnedInstances()
	{
		return this.spawnedInstances;
	}
}
