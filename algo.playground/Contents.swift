import UIKit
import Foundation

let tree = Node(data: 2)

// INSERTION
func insert(node: Node, into tree: Node) {
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


let nine = Node(data: 9)
let twelve = Node(data: 12)
let ten = Node(data: 10)

insert(node: nine, into: tree)
insert(node: Node(data: 1), into: tree)
insert(node: twelve, into: tree)
insert(node: ten, into: tree)

print(format(tree))
print(format(nine))
print(format(twelve))

