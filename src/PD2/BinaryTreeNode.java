/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PD2;

public class BinaryTreeNode {
    BinaryTreeNode parent;
    BinaryTreeNode left;
    BinaryTreeNode right;
    int data;
    
    BinaryTreeNode(int new_data) {
        this.data = new_data;
        this.left = null;
        this.right = null;
        this.parent = null;
    }

    void set_parent(BinaryTreeNode other) {
        this.parent = other;
        if (other != null) {
            if (other.data > this.data){
                other.left = this;
            } else {
                other.right = this;
            }
        }
    }
    
    void set_left(BinaryTreeNode other) {
        this.left = other;
        if (other != null) {
            other.parent = this;
        }
    }

    void set_right(BinaryTreeNode other) {
        this.right = other;
        if (other != null) {
            other.parent = this;
        }
    }

    boolean is_left() {
        return this.parent != null && parent.left == this;
    }

    boolean is_right() {
        return this.parent != null && parent.right == this;
    }

    boolean has_right_and_left() {
        return this.left != null && this.right != null;
    }
    
    boolean only_has_left() {
        return this.left != null && this.right == null;
    }

    boolean only_has_right() {
        return this.right != null && this.left == null;
    }

    boolean has_no_child() {
        return this.left == null && this.right == null;
    }

    void unset_parent() {
        if (this.is_left()) {
            parent.left = null;
            this.parent = null;
        } else if (this.is_right()) {
            parent.right = null;
            this.parent = null;
        }
    }

    BinaryTreeNode most_left_child(){
        BinaryTreeNode child = this.left;
        while (child.left != null){
            child = child.left;
        }
        return child;
    }

    BinaryTreeNode most_right_child(){
        BinaryTreeNode child = this.right;
        while (child.right != null){
            child = child.right;
        }
        return child;
    }

    void print(String spaces, String label){
        System.out.println(spaces + label + " " + this.data);
        if (this.left != null){
            this.left.print(" ","LEFT");
        }
        if (this.right != null){
            this.right.print(" ","RIGHT");
        }
    }
    
    // Alias for print("", "NODE");
    void print(){
        this.print(" ","NODE");
    }
}
