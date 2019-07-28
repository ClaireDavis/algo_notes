import Foundation

// Binary tree in-order traversal, with in-order printing.
public func traverse(_ tree: TreeNode?) {
    if let tree = tree {
        traverse(tree.left)
        print(format(tree)) // move this for different processing order
        traverse(tree.right)
    }
}
