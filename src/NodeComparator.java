import java.util.Comparator;

public class NodeComparator<T> implements Comparator<Node<T>>{

    private   Comparator<T> wrapped;

    @Override
    public int compare(Node<T> o1, Node<T> o2){
        return wrapped.compare(o1.value, o2.value);
    }

    public NodeComparator(  Comparator<T> wrappedComparator){
        this.wrapped = wrappedComparator;
    }

}
