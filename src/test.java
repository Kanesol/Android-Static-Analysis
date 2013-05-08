
public class test
{
	public static void main(String[] args)
	{
		Tree<CodeInstance> tree = new Tree<CodeInstance>();
		Node<CodeInstance> rootNode = tree.getRootElement();
		CodeInstance a = new CodeInstance("getDeviceID", "Telephony", ".invoke");
		a.setCallMethod("getIndividualNum");
		CodeInstance b = new CodeInstance("v0", "String", "storedVar");
		b.setCallMethod("getIndividualNum");
		b.setType(".move-result-object");
		b.setType(".return-object");
		//now it knows that this trace has ended
		//create method instance
		CodeInstance c = new CodeInstance("getIndividualNum", "String", ".invoke");
		CodeInstance d = new CodeInstance("v0", "String", ".storedVar");
		CodeInstance e = new CodeInstance("v7", "String", ".move-result-object");
		//push f on to the "to do" stack
		CodeInstance f = new CodeInstance("v5", "BasicNamePair", ".system");
		//continue on following e
		//make a copy of e
		CodeInstance g = e;
		g.setType("overwritten");
		//branch is finished
		//pop f now
		//f is copied into v3 so push on to the "to do" stack
		CodeInstance h = new CodeInstance("v3", "List", ".system");
		//continue to follow f
		//make a copy of f
		CodeInstance i = f;
		i.setType("overwritten");
		//pop h
		//to do: add some common lists, ergo this case
		//push on to the stack
		CodeInstance j = new CodeInstance("doPost", "Lcom/link/uranai/util/HttpUtil", ".method");
		j.setCallMethod("doPost");
		CodeInstance k = new CodeInstance("v4", "String", "storedVar");
		//follow h
		CodeInstance l = h;
		l.setType(".end");
		//pop k
		k.setType(".end");
		//pop j
		//to do tomorrow HttpUtil doPost
		
		
		rootNode.setValue(a);
		Node<CodeInstance> childNode = rootNode.addChild(b);
		Node<CodeInstance> newChildNode = rootNode.addChild(c);
		newChildNode.addChild(c);
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