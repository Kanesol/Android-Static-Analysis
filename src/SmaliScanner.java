/*********************************
 * 
 * This class contains all the logic that
 * is used to trace information flow 
 * 
 * @version 1.0
 * @author Solomon Redfern
 * 
 ***********************************/
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.nio.file.FileSystems;


public class SmaliScanner {
	
	private Node<CodeInstance> instance;
	private ArrayList<Node<CodeInstance>> spawnedInstances = new ArrayList<Node<CodeInstance>>();
	
	/*
	 *  The constructor takes a node and determines the
	 *  action to be taken
	 */
	public SmaliScanner(Node<CodeInstance> instance)
	{
		this.instance = instance;
		
		//if it is a method call
		if(this.instance.getValue().getType().matches(".invoke"))
		{
			findInstanceCall();
		}//if it is a varible
		else if(this.instance.getValue().getType().matches("storedVar") || this.instance.getValue().getType().matches("move-result-object"))
		{
			trace();
		}//if it is a method
		else if(this.instance.getValue().getType().matches(".method"))
		{
			findPassedReference();
		}
	}
	
	//Method relate logic
	//This method finds where the method is
	private void findPassedReference()
	{
		
		SmaliIO io = new SmaliIO();
		ArrayList<String> fileText = io.getFileText(this.instance.getValue().getFile());
		boolean t = false;
		for(int i = 0; i < fileText.size(); i++)
		{
			
			//if the line contains the method, add the line to the codeobject
			if(fileText.get(i).contains(this.instance.getValue().getInstanceName()))
			{
				this.instance.getValue().setLine(i);
				t = true;
				
			//finds where the passed data is stored	and creates a spawn
			}else if( i > this.instance.getValue().getLine() && fileText.get(i).contains(".local ") && t == true)
			{
				String[] s = fileText.get(i).trim().split(" ");
				CodeInstance newInstance = new CodeInstance(s[1].replace(",", ""), null, "storedVar", this.instance.getValue().getInstanceName(), this.instance.getValue().getFile(), i );
				this.spawnedInstances.add(this.instance.addChild(newInstance));
				break;
			}
		}
	}

	//This method follows variables
	private void trace() 
	{
		SmaliIO io = new SmaliIO();
		
		ArrayList<String> fileText = io.getFileText(this.instance.getValue().getFile());
		
		//While the method hasn't ended
		for(int i = instance.getValue().getLine() + 1; fileText.get(i-1).contains(".end method") == false; i++)
		{
				
				//If the varible is returned, create a child node showing that the data is destroyed 
				//and find where the method is called
				if(fileText.get(i).contains("return-object" + " " + instance.getValue().getInstanceName()))
				{
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("return-object");
					Node<CodeInstance> newNodeInstance = instance.addChild(endInstance);
					CodeInstance newInstance = new CodeInstance(instance.getValue().getCallMethod(), instance.getValue().getFile().toString(), ".invoke" );
					this.spawnedInstances.add(newNodeInstance.addChild(newInstance));
					
				}//if the data is moved into a register, make a new node and set the current
				//node to destroyed
				else if(fileText.get(i).contains("move-result-object " + instance.getValue().getInstanceName()) || fileText.get(i).contains("new-instance " + instance.getValue().getInstanceName()))
				{
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("overwritten");
					instance.addChild(endInstance);
					//break;
				}//if the data is destroyed, set the node to destroyed
				else if(fileText.get(i).contains(".end local " + instance.getValue().getInstanceName()))
				{
					//System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("destroyed");
					instance.addChild(endInstance);
					break;
				}//if the method has ended, set the node to destroyed
				else if(fileText.get(i).contains(".end method" ))
				{
					//System.out.println(instance.getValue().getInstanceName());
					CodeInstance endInstance = new CodeInstance(instance.getValue());
					endInstance.setType("destroyed");
					instance.addChild(endInstance);
					break;
				}//Checks for got labels and if statements
				else if(fileText.get(i).contains(this.instance.getValue().getInstanceName()) && fileText.get(i).contains("if-eqz"))
				{
					
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
				else if( fileText.get(i).contains(this.instance.getValue().getInstanceName()) && fileText.get(i).contains("move-exception"))
				{
					
				}
				else if( fileText.get(i).contains(this.instance.getValue().getInstanceName()) && fileText.get(i).contains("array-length"))
				{
					
				}
				else if(fileText.get(i).contains(this.instance.getValue().getInstanceName()) && fileText.get(i).contains("const/") )
				{
					
				}//if none of the above occurs and the line contains a reference to the
				//current object then...
				else if(fileText.get(i).contains(this.instance.getValue().getInstanceName()))
				{
					System.out.println(fileText.get(i));
					System.out.println(this.instance.getValue().getInstanceName());
					System.out.println(this.instance.getValue().getPackageName());
					System.out.println(this.instance.getValue().getFile().toString());
					//Tokenise the line
					SmaliLineTokeniser parser = new SmaliLineTokeniser();
					CodeObject o = parser.tokenise(fileText.get(i));
					//if the passed variable to the method contains the current value
					if(o.getPassedVar().contains(this.instance.getValue().getInstanceName()))
					{
						//if it is a list skip
						//System.out.println(o.getPackageName());
						if(o.getPackageName().matches("Ljava/util/List") && o.getMethodName().matches("add") && o.getReturnVar().matches(this.instance.getValue().getInstanceName()) )
						{
							
							
						}//if it is a standard package call
						else if(o.getPackageName().contains("Ljava/") != true && o.getPackageName().contains("Lorg/apache/") != true )
						{
							//create a child node with the new information
							System.out.println(o.getPackageName());
							System.out.println(o.getPackageName().contains("Lorg/apache/"));
							CodeInstance methodCall = new CodeInstance(o.getMethodName(), o.getPackageName(), "methodCall", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
							Node<CodeInstance> methodCallNode = instance.addChild(methodCall);
							
							CodeInstance newInstance = new CodeInstance(o.getReturnVar(), o.getPackageName(), "storedVar", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
							this.spawnedInstances.add(methodCallNode.addChild(newInstance));
							Path path = FileSystems.getDefault().getPath(o.getPackageName().substring(1) + ".smali");
							//System.out.println(path.toString());
							newInstance = new CodeInstance(o.getMethodName(), o.getPackageName(), ".method", o.getPackageName(), path, i);
							this.spawnedInstances.add(methodCallNode.addChild(newInstance));
						}
						else
						{
							//otherwise create a new node to be investigated
							
							System.out.println(o.getPackageName());
							CodeInstance methodCall = new CodeInstance(o.getMethodName(), o.getPackageName(), "methodCall", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
							Node<CodeInstance> methodCallNode = instance.addChild(methodCall);
							//SmaliLineTokeniser p = new SmaliLineTokeniser();
							//CodeObject c = p.tokenise(fileText.get(i));
							CodeInstance newInstance = new CodeInstance(o.getReturnVar(), o.getPackageName(), "storedVar", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
							Node<CodeInstance> newNodeInstance = methodCallNode.addChild(newInstance);
							
							this.spawnedInstances.add(newNodeInstance);
						}
						
						
					}
					
				}
				
		}
		
		
		
	}

	/*
	 * This method finds where in a file a call was made
	 */
	private void findInstanceCall()
	{
		//run through and find the file that contains the call to that method
		SmaliIO io = new SmaliIO();
		ArrayList<String> fileText = io.findInstance(instance.getValue());
		
		
		
		//As long as the file isn't empty
		if(fileText == null)
		{
			
		}
		else
		{
			instance.getValue().setFile(Paths.get(io.getFoundInstanceFilename().toString().replace(System.getProperty("user.dir") + "\\smali\\", "")));
			//Find what line it is called on and update the codeinstance
			int lineNumber = findInstanceLine(fileText);
			instance.getValue().setLine(lineNumber);		
			findMethod(lineNumber, fileText);
			//CodeInstance methodCall = new CodeInstance(o.getMethodName(), o.getPackageName(), "methodCall", instance.getValue().getCallMethod(), instance.getValue().getFile(), i);
			//Node<CodeInstance> methodCallNode = instance.addChild(methodCall);
			
			//System.out.println(fileText.get(lineNumber));
			
			Node<CodeInstance> newNodeInstance = instance.addChild(new CodeInstance(findStoredVarible(fileText.get(lineNumber)), findPackageName(fileText.get(lineNumber)), "storedVar", this.instance.getValue().getCallMethod(), this.instance.getValue().getFile(), this.instance.getValue().getLine()));
			
			//If the next command is to move the information to a different register
			//create a node and destroy the current node
			if(fileText.get(instance.getValue().getLine() + 2).contains("move-result-object"))
			{
				CodeInstance newInstance = new CodeInstance(newNodeInstance.getValue());
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
	
	//Find where the instance is in a file
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

	/*
	 * These three functions are redundant after making the
	 * tokeniser but are still used
	 *  
	 */
	
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
