import Foundation

// return the head
public func insert(_ data: Int, into list: ListNode) -> ListNode {
    return ListNode(data: data, next: list)
}


// INSERTION
public func insert(node: TreeNode, into tree: TreeNode) {
    guard node.data != tree.data else {
        fatalError("I can't handle duplicates!")
    }

    if node.data < tree.data {
        if let left = tree.left {
            insert(node: node, into: left)
        } else {
            tree.left = node
            node.parent = tree
        }
    } else {
        if let right = tree.right {
            insert(node: node, into: right)
        } else {
            tree.right = node
            node.parent = tree
        }
    }
}
