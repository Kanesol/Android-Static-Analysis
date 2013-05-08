import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;

public class Node<T> {
    SortedSet<Node<T>> children;

    private Node<T> parent;

    T value;

    private Comparator<?> comparator;

    @SuppressWarnings("unchecked")
    Node( T value,  Node<T> parent,  Comparator<?> comparator){
        this.value = value;
        this.parent = parent;
        this.comparator = comparator;
        children =
            new TreeSet<Node<T>>(new NodeComparator<T>((Comparator<T>) comparator));
    }

    public List<Node<T>> getChildren(){
        return new ArrayList<Node<T>>(children);
    }

    public Node<T> getParent(){
        return parent;
    }

    public T getValue(){
        return value;
    }

    public void setValue( T value){
        this.value = value;
    }

    public Node<T> addChild(  T value){
          Node<T> node = new Node<T>(value, this, comparator);
        return children.add(node) ? node : null;
    }
}
