/**************************************************
 * 
 * This class is responsible for handling the stack
 * and writing the result to xml
 * 
 * @version 1.0
 * @author Solomon Redfern
 * 
 **************************************************/

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;


public class MissionControl
{
	public static void main(String[] args)
	{
		
		//Construct the tree
		Tree<CodeInstance> tree = new Tree<CodeInstance>();
		Node<CodeInstance> rootNode = tree.getRootElement();
		Stack<Node<CodeInstance>> stack = new Stack<Node<CodeInstance>>();
		
		//The original search tree		
		CodeInstance initialR = new CodeInstance("getDeviceId", "Landroid/telephony/TelephonyManager", ".invoke");
		rootNode.setValue(initialR);
		SmaliScanner intialScanner = new SmaliScanner(rootNode);
		
		//results spawned from the initial search
		
		ArrayList<Node<CodeInstance>> initialSpawns = intialScanner.getSpawnedInstances();
		for(Node<CodeInstance> instance : initialSpawns)
		{
			//push them onto the stack
			stack.push(instance);
		}
		
		SmaliScanner scanner;
		
		//process the stack while it has items		
		while(stack.empty() == false)
		{
			
			Node<CodeInstance> currentItem = stack.pop();
			
			
			scanner = new SmaliScanner(currentItem);
			ArrayList<Node<CodeInstance>> spawns = scanner.getSpawnedInstances();
			
			//Push all the spawns onto the stack
			for(Node<CodeInstance> instance : spawns)
			{
				stack.push(instance);
			}
		}
		
		//Write the result to file
		Writer writer = null;
		try {
		    writer = new BufferedWriter(new OutputStreamWriter(
		          new FileOutputStream("SmaliTree.xml"), "utf-8"));
				
		writeXML(rootNode, 0, writer);
		
		} catch (IOException ex){
			  // report
				System.out.println(ex);
		} finally {
			   try {writer.close();} catch (Exception ex) {}
		}
	}
	
	
	/*
	 * This function writes the result to an xml tree
	 */
	private static void writeXML(Node<CodeInstance> n, int depth, Writer writer)
	{
		String separator = System.getProperty("line.separator");
		if( n.getValue().getType().matches("storedVar") || n.getValue().getType().matches("move-result-object") || n.getValue().getType().matches("return-object") || n.getValue().getType().matches("destroyed") || n.getValue().getType().matches("overwritten") )
		{
			 List<Node<CodeInstance>> children = n.getChildren();
			for(Node<CodeInstance> child : children)
		    {
		    	writeXML(child, depth, writer);
		    }
			
		}
		else
		{
			try{
			
			    if(depth == 0)
			    {
			    	writer.append("<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>");
			    }
			    
			    writer.append(separator);
			    
			    for(int i = 0; i < depth; i++)
			    {
			    	writer.append("\t");
			    }
			    writer.append("<node>");
			    
			    writer.append(separator);
			    for(int i = 0; i < depth; i++)
			    {
			    	writer.append("\t");
			    }
			    writer.append("\t<instanceName> " + n.getValue().getInstanceName() +"</instanceName>");
			    
			    writer.append(separator);
			    for(int i = 0; i < depth; i++)
			    {
			    	writer.append("\t");
			    }
			    writer.append("\t<callMethod> " + n.getValue().getCallMethod() +"</callMethod>");
			    
			    writer.append(separator);
			    for(int i = 0; i < depth; i++)
			    {
			    	writer.append("\t");
			    }
			    writer.append("\t<packageName> " + n.getValue().getPackageName() +"</packageName>");
			    
			    writer.append(separator);
			    for(int i = 0; i < depth; i++)
			    {
			    	writer.append("\t");
			    }
			    writer.append("\t<type> " + n.getValue().getType() +"</type>");
			    
			    writer.append(separator);
			    for(int i = 0; i < depth; i++)
			    {
			    	writer.append("\t");
			    }
			    List<Node<CodeInstance>> children = n.getChildren();
			    for(Node<CodeInstance> child : children)
			    {
			    	writeXML(child, depth + 1, writer);
			    }
			    writer.append("</node>");
			} catch (IOException ex){
				  // report
					System.out.println(ex);
			}
		}
	}
}