    import java.util.*;
	
	public class Node<T> {

        private final SortedSet<Node<T>> children;

        private final Node<T> parent;

        private T value;

        private final Comparator<?> comparator;

        @SuppressWarnings("unchecked")
        Node(final T value, final Node<T> parent, final Comparator<?> comparator){
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

        public void setValue(final T value){
            this.value = value;
        }

        public Node<T> addChild(final T value){
            final Node<T> node = new Node<T>(value, this, comparator);
            return children.add(node) ? node : null;
        }

    }