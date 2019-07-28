import Foundation

// INSERTION
public func insert(node: Node, into tree: Node) {
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
