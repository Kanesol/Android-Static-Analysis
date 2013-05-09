
public class test
{
	public static void main(String[] args)
	{
		Tree<CodeInstance> tree = new Tree<CodeInstance>();
		Node<CodeInstance> rootNode = tree.getRootElement();
		
		//manual process
		
		CodeInstance a = new CodeInstance("getDeviceID", "Telephony", ".invoke");
		a.setCallMethod("getIndividualNum");
		
		rootNode.setValue(a);
		
		CodeInstance b = new CodeInstance("v0", "String", "storedVar", "getIndividualNum");
		
		Node<CodeInstance> childNode = rootNode.addChild(b);
		
		CodeInstance x = new CodeInstance("v0", "String", ".move-result-object", "getIndividualNum");
		x.setType(".return-object");
		Node<CodeInstance> newChildNode = childNode.addChild(x);
		
		//now it knows that this trace has ended
		//create method instance
		CodeInstance c = new CodeInstance("getIndividualNum", "String", ".invoke");
		//find the call to getIndividualNum
		c.setCallMethod("run");
		Node<CodeInstance> childNode1 = newChildNode.addChild(c);
		
		CodeInstance d = new CodeInstance("v0", "String", ".storedVar", "run");
		Node<CodeInstance> childNode2 = childNode1.addChild(d);
		
		//above spawns below
		CodeInstance e = new CodeInstance("v7", "String", ".move-result-object", "run");
		//move-object shows v0 is overwritten		
		CodeInstance z = new CodeInstance("v0", "String", "overwritten", "run");
		Node<CodeInstance> childNode3 = childNode2.addChild(z);
		Node<CodeInstance> childNode4 = childNode2.addChild(e);
		
		
		//push f on to the "to do" stack
		CodeInstance f = new CodeInstance("v5", "BasicNamePair", ".system", "run");
		//continue on following e
		//make a copy of e
		CodeInstance g = new CodeInstance(e);
		g.setType("overwritten");
		Node<CodeInstance> childNode5 = childNode4.addChild(g);
		
		//branch is finished
		//pop f now
		//f is copied into v3 so push h onto the "to do" stack
		Node<CodeInstance> childNode6 = childNode4.addChild(f);
		
		CodeInstance h = new CodeInstance("v3", "List", ".system", "run");
		
		//continue to follow f
		//make a copy of f
		CodeInstance i = new CodeInstance(f);
		i.setType("overwritten");
		Node<CodeInstance> childNode7 = childNode6.addChild(i);
		
		//pop h
		//to do: add some common lists, ergo this case
		Node<CodeInstance> childNode8 = childNode6.addChild(h);
		
		//push on to the stack
		CodeInstance j = new CodeInstance("doPost", "Lcom/link/uranai/util/HttpUtil", ".method", "run");
		CodeInstance k = new CodeInstance("v4", "String", "storedVar", "run");
		
		//follow h
		CodeInstance l = new CodeInstance(h);
		l.setType(".end");
		Node<CodeInstance> childNode9 = childNode8.addChild(l);
		//pop k
		Node<CodeInstance> childNode10 = childNode8.addChild(k);
		CodeInstance v = new CodeInstance(k);
		v.setType(".end");
		Node<CodeInstance> childNode11 = childNode10.addChild(v);
		
		
		//pop j - ends after spawns
		Node<CodeInstance> childNode12 = childNode8.addChild(j);
		
		
		
		//to do tomorrow HttpUtil doPost
		CodeInstance m = new CodeInstance("p1", "List", "storedVar", "getPost");
		Node<CodeInstance> childNode13 = childNode12.addChild(m);
		
		//spawns and continues
		CodeInstance n = new CodeInstance("v6", "UrlEncodedFormEntity", ".system", "getPost");
		//follow m
		CodeInstance o = new CodeInstance(m);
		o.setType(".endMethod");
		Node<CodeInstance> childNode14 = childNode13.addChild(o);
		
		//pops n
		Node<CodeInstance> childNode15 = childNode13.addChild(n);
		//spawns p
		CodeInstance p = new CodeInstance("v3", "HttpPost", ".system", "getPost");
		
		CodeInstance q = new CodeInstance(n);
		q.setType("overwritten");
		Node<CodeInstance> childNode16 = childNode15.addChild(q);
		
		//pops p
		Node<CodeInstance> childNode17 = childNode15.addChild(p);
		//spawn r
		CodeInstance r = new CodeInstance("v2", "HttpClient", ".system", "getPost");
		
		//follow p
		CodeInstance s = new CodeInstance(p);
		s.setType(".endMethod");
		Node<CodeInstance> childNode18 = childNode17.addChild(s);
		
		//pop r
		Node<CodeInstance> childNode19 = childNode17.addChild(r);
		//no spawns
		CodeInstance t = new CodeInstance(r);
		t.setType(".endMethod");
		Node<CodeInstance> childNode20 = childNode19.addChild(t);
		
		
		
		//Node<CodeInstance> newChildNode = rootNode.addChild(c);
		//newChildNode.addChild(c);
		tree.visitNodes(new NodeVisitor<CodeInstance>(){

			@Override
			public boolean visit(  Node<CodeInstance> node){
				  StringBuilder sb = new StringBuilder();
				Node<CodeInstance> curr = node;
				do{
					if(sb.length() > 0){
						sb.insert(0, " > ");
					}
					sb.insert(0, String.valueOf(curr.getValue().getInstanceName() +"{"+curr.getValue().getType()+"}"));
					curr = curr.getParent();
				} while(curr != null);
				System.out.println(sb);
				return true;
			}
		});
	}
}