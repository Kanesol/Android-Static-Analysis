import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;


public class test
{
	public static void main(String[] args)
	{
		
		Tree<CodeInstance> tree = new Tree<CodeInstance>();
		Node<CodeInstance> rootNode = tree.getRootElement();
		Stack<Node<CodeInstance>> stack = new Stack<Node<CodeInstance>>();
		
		//manual process
		
		CodeInstance initialR = new CodeInstance("getDeviceId", "Landroid/telephony/TelephonyManager", ".invoke");
		rootNode.setValue(initialR);
		SmaliScanner intialScanner = new SmaliScanner(rootNode);
		//intialScanner.setInstance(rootNode);
		//intialScanner.run();
		
		
		ArrayList<Node<CodeInstance>> initialSpawns = intialScanner.getSpawnedInstances();
		for(Node<CodeInstance> instance : initialSpawns)
		{
			stack.push(instance);
		}
		
		SmaliScanner scanner;
				
		while(stack.empty() == false)
		{
			
			Node<CodeInstance> currentItem = stack.pop();
			
			
			scanner = new SmaliScanner(currentItem);
			ArrayList<Node<CodeInstance>> spawns = scanner.getSpawnedInstances();
			
			for(Node<CodeInstance> instance : spawns)
			{
				stack.push(instance);
			}
		}
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
		/*tree.visitNodes(new NodeVisitor<CodeInstance>(){

			@Override
			public boolean visit(  Node<CodeInstance> node){
				  StringBuilder sb = new StringBuilder();
				Node<CodeInstance> curr = node;
				do{
					if(sb.length() > 0){
						sb.insert(0, " > ");
					}
					sb.insert(0, String.valueOf(curr.getValue().getInstanceName() +"{" + curr.getValue().getType()+"}"));
					curr = curr.getParent();
				} while(curr != null);
				System.out.println(sb);
				Writer writer = null;

				try {
				    writer = new BufferedWriter(new OutputStreamWriter(
				          new FileOutputStream("filename.txt"), "utf-8"));
				    writer.append(sb);
				} catch (IOException ex){
				  // report
				} finally {
				   try {writer.close();} catch (Exception ex) {}
				}
				return true;
			}
		});*/
	}
	
	private static void writeXML(Node<CodeInstance> n, int depth, Writer writer)
	{
		String separator = System.getProperty("line.separator");
		
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
		    	//System.out.println("Children found");
		    	writeXML(child, depth + 1, writer);
		    }
		    writer.append("</node>");
		} catch (IOException ex){
			  // report
				System.out.println(ex);
		}
		
	}
}