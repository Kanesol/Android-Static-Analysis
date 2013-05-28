import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.nio.file.Paths;
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
		else if(this.instance.getValue().getType().matches(".method"))
		{
			findPassedReference();
		}
	}
	
	private void findPassedReference()
	{
		SmaliIO io = new SmaliIO();
		ArrayList<String> fileText = io.getFileText(this.instance.getValue().getFile());
		boolean t = false;
		for(int i = 0; i < fileText.size(); i++)
		{
			
			if(fileText.get(i).contains(this.instance.getValue().getInstanceName()))
			{
				this.instance.getValue().setLine(i);
				t = true;
				
			}else if( i > this.instance.getValue().getLine() && fileText.get(i).contains(".local ") && t == true)
			{
				String[] s = fileText.get(i).trim().split(" ");
				CodeInstance newInstance = new CodeInstance(s[1].replace(",", ""), null, "storedVar", this.instance.getValue().getInstanceName(), this.instance.getValue().getFile(), i );
				this.spawnedInstances.add(this.instance.addChild(newInstance));
				break;
			}
		}
	}

	private void trace() 
	{
		SmaliIO io = new SmaliIO();
		//System.out.println(this.instance.getValue().getFile().toString());
		//System.out.println(this.instance.getValue().getInstanceName().toString());
		ArrayList<String> fileText = io.getFileText(this.instance.getValue().getFile());
		
		
		for(int i = instance.getValue().getLine() + 1; fileText.get(i-1).contains(".end method") == false; i++)
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
					//System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("overwritten");
					instance.addChild(endInstance);
					break;
				}
				else if(fileText.get(i).contains(".end local " + instance.getValue().getInstanceName()))
				{
					//System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("destroyed");
					instance.addChild(endInstance);
					break;
				}
				else if(fileText.get(i).contains(".end method" ))
				{
					//System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("destroyed");
					instance.addChild(endInstance);
					break;
				}
				else if(fileText.get(i).contains(this.instance.getValue().getInstanceName()) && fileText.get(i).contains("if-nez"))
				{
					String[] s = fileText.get(i).trim().split(" ");
					for(int j = i + 1; fileText.get(j).contains(".end method") == false; j++)
					{
						if(fileText.get(j).contains(s[2]))
						{
							i=j;
							break;
						}
					}
				}
				else if(fileText.get(i).contains(this.instance.getValue().getInstanceName()))
				{
					//System.out.println("entered; " + fileText.get(i));
					SmaliLineParser parser = new SmaliLineParser();
					CodeObject o = parser.parse(fileText.get(i));
					if(o.getPassedVar().contains(this.instance.getValue().getInstanceName()))
					{
						if(o.getPackageName().contains("Ljava/") != true && o.getPackageName().contains("Lorg/apache/") != true)
						{
							CodeInstance newInstance = new CodeInstance(o.getReturnVar(), instance.getValue().getFile().toString(), "storedVar", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
							this.spawnedInstances.add(instance.addChild(newInstance));
							//System.out.println(fileText.get(i));
							Path path = FileSystems.getDefault().getPath(o.getPackageName().substring(1) + ".smali");
							//System.out.println(path.toString());
							newInstance = new CodeInstance(o.getMethodName(), o.getPackageName(), ".method", o.getPackageName(), path, i);
							this.spawnedInstances.add(instance.addChild(newInstance));
						}
						else if(o.getPackageName().contains("Ljava/util/List") && o.getMethodName().contains("add") && o.getReturnVar().contains(this.instance.getValue().getInstanceName()))
						{
							
						}
						else
						{
							//System.out.println("entered; " + fileText.get(i));
							
							SmaliLineParser p = new SmaliLineParser();
							CodeObject c = p.parse(fileText.get(i));
							CodeInstance newInstance = new CodeInstance(o.getReturnVar(), c.getPackageName(), "storedVar", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
							Node<CodeInstance> newNodeInstance = instance.addChild(newInstance);
							
							this.spawnedInstances.add(newNodeInstance);
						}
						
						
					}
					
				}
				
		}
		
		
		
	}

	private void findInstanceCall()
	{
		//run through and find the file that contains the call to that method
		SmaliIO io = new SmaliIO();
		ArrayList<String> fileText = io.findInstance(instance.getValue());
		
		instance.getValue().setFile(Paths.get(io.getFoundInstanceFilename().toString().replace(System.getProperty("user.dir") + "\\smali\\", "")));
		
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
