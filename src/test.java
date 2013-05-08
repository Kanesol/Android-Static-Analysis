
public class test
{
	public static void main(String[] args)
	{
		Tree<CodeInstance> tree = new Tree<CodeInstance>();
		Node<CodeInstance> rootNode = tree.getRootElement();
		CodeInstance a = new CodeInstance("getDeviceID", "Telephony", ".invoke-method");
		CodeInstance b = new CodeInstance("v2", "String", "storedVar");
		CodeInstance c = new CodeInstance("v3", "String", ".return-object");
		CodeInstance d = new CodeInstance("v4", "String", ".return-object");
		rootNode.setValue(a);
		Node<CodeInstance> childNode = rootNode.addChild(b);
		Node<CodeInstance> newChildNode = rootNode.addChild(c);
		newChildNode.addChild(d);
		tree.visitNodes(new NodeVisitor<CodeInstance>(){

			@Override
			public boolean visit(  Node<CodeInstance> node){
				  StringBuilder sb = new StringBuilder();
				Node<CodeInstance> curr = node;
				do{
					if(sb.length() > 0){
						sb.insert(0, " > ");
					}
					sb.insert(0, String.valueOf(curr.getValue().getInstanceName()));
					curr = curr.getParent();
				} while(curr != null);
				System.out.println(sb);
				return true;
			}
		});
	}
}