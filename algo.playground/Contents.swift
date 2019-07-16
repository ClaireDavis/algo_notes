import UIKit
import Foundation

// TODO: Make generic >_>
class Node {
    let data: Int
    var parent: Node?
    var left: Node?
    var right: Node?

    init(data: Int, parent: Node? = nil, left: Node? = nil, right: Node? = nil) {
        self.data = data
        self.parent = parent
        self.left = left
        self.right = right
    }

    private var parentString: String {
        if let p = parent {
            return "parent: \(p.data)"
        } else {
            return "parent: none"
        }
    }

    private var leftString: String {
        if let l = left {
            return "left: \(l.data)"
        } else {
            return "left: none"
        }
    }

    private var rightString: String {
        if let r = right {
            return "right: \(r.data)"
        } else {
            return "right: none"
        }
    }

    var description: String {
        return """
        data: \(data)
        \(parentString)
        \(leftString)
        \(rightString)
"""
    }
}

func format(_ node: Node) -> String {
    return node.description
}

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
print()
print(format(nine))
print()
print(format(twelve))


