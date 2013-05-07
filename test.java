public class test
{
	public static void main(String[] args)
	{
		final Tree<Integer> tree = new Tree<Integer>();
		final Node<Integer> rootNode = tree.getRootElement();
		rootNode.setValue(1);
		final Node<Integer> childNode = rootNode.addChild(2);
		final Node<Integer> newChildNode = rootNode.addChild(3);
		newChildNode.addChild(4);
		tree.visitNodes(new NodeVisitor<Integer>(){

			@Override
			public boolean visit(final Node<Integer> node){
				final StringBuilder sb = new StringBuilder();
				Node<Integer> curr = node;
				do{
					if(sb.length() > 0){
						sb.insert(0, " > ");
					}
					sb.insert(0, String.valueOf(curr.getValue()));
					curr = curr.getParent();
				} while(curr != null);
				System.out.println(sb);
				return true;
			}
		});
	}
}