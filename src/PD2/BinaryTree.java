package PD2;

class Node {

    Node parent;
    Node no;
    Node yes;
    int data;

    public Node(int new_data) {
        data = new_data;
        parent = null;
        no = null;
        yes = null;
    }

    void set_parent(Node other) {
        parent = other;
        if (other != null) {
            if (other.data > this.data) {
                other.no = this;
            } else {
                other.yes = this;
            }
        }
    }

    void set_left(Node other) {
        no = other;
        if (other != null) {
            other.parent = this;
        }
    }

    void set_right(Node other) {
        yes = other;
        if (other != null) {
            other.parent = this;
        }
    }

    boolean has_right_and_left() {
        return this.no != null && this.yes != null;
    }

    boolean only_has_left() {
        return this.no != null && this.yes == null;
    }

    boolean only_has_right() {
        return this.yes != null && this.no == null;
    }

    boolean has_no_child() {
        return this.yes == null && this.no == null;
    }

    void print(String spaces, String label) {
        System.out.println(spaces + label + data);
        if (this.no != null) {
            this.no.print("", "LEFT");
        }
        if (this.yes != null) {
            this.yes.print(" ", "RIGHT");
        }
    }

    void print() {
        this.print("", "NODE ");
    }
    
}

public class BinaryTree {

    Node root;
    Node current;

    public BinaryTree() {
        this.root = null;
    }
    
    Node getRoot() {
        return root;
    }
    
    Node getCurrent() {
        return current;
    }

    int getCurrentData() {
        return current.data;
    }

    void push(Node new_node) {
        if (root == null) {
            root = new_node;
        } else {
            Node current = root;
            while (current != null) {
                if (new_node.data > current.data) {
                    if (current.yes == null) {
                        current.set_right(new_node);
                        break;
                    } else {
                        current = current.yes;
                    }
                } else {
                    if (current.no == null) {
                        current.set_left(new_node);
                        break;
                    } else {
                        current = current.no;
                    }
                }
            }
        }
    }

    void print() {
        if (root != null) {
            root.print();
        }
    }
    
}