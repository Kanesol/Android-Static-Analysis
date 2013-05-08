import java.util.Comparator;


public class Tree<T> {

    private Node<T> rootElement;

    public void visitNodes(NodeVisitor<T> visitor){
        doVisit(rootElement, visitor);
    }

    @SuppressWarnings("hiding")
	private <T> boolean doVisit(Node<T> node,
        NodeVisitor<T> visitor){
        boolean result = visitor.visit(node);
        if(result){
            for( Node<T> subNode : node.children){
                if(!doVisit(subNode, visitor)){
                    result = false;
                    break;
                }
            }
        }
        return result;
    }

  /*  public interface NodeVisitor<T> {

        boolean visit(Node<T> node);
    }*/

    public Node<T> getRootElement(){
        return rootElement;
    }

    @SuppressWarnings("rawtypes")
    private static Comparator NATURAL_ORDER = new Comparator(){

        @SuppressWarnings("unchecked")
        @Override
        public int compare(Object o1, Object o2){
            return ((Comparable) o1).compareTo(o2);
        }
    };

    private Comparator<?> comparator;

    public Tree(){
        this(null, null);
    }

    public Tree(Comparator<? super T> comparator){
        this(comparator, null);
    }

    public Tree(Comparator<? super T> comparator, T rootValue){
        this.comparator = comparator == null ? NATURAL_ORDER : comparator;
        this.rootElement = new Node<T>(rootValue, null, this.comparator);
    }

    public Tree(T rootValue){
        this(null, rootValue);
    }

}