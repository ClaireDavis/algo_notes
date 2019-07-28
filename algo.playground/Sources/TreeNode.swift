
import Foundation

/*
 This file contains a node for a binary tree. This data structure is notable
 because it supports BOTH fast search and flexible update.
 */

// TODO: Make generic >_>
public class TreeNode {
    public let data: Int
    public var parent: TreeNode?
    public var left: TreeNode?
    public var right: TreeNode?

    public init(
        data: Int,
        parent: TreeNode? = nil,
        left: TreeNode? = nil,
        right: TreeNode? = nil) {
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

    public var description: String {
        return """
        \n
        data: \(data)
        \(parentString)
        \(leftString)
        \(rightString)
        """
    }
}

public func format(_ node: TreeNode) -> String {
    return node.description
}
