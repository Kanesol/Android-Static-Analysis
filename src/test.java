import java.util.ArrayList;
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
		
		tree.visitNodes(new NodeVisitor<CodeInstance>(){

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
				return true;
			}
		});
	}
}