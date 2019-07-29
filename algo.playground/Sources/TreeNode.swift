
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

    public var isChildless: Bool {
        return left == nil
            && right == nil
    }

    public var onlyChild: TreeNode? {
        let onlyLeft = (left != nil && right == nil)
        let onlyRight = (right != nil && left == nil)

        guard (onlyLeft || onlyRight) else { return nil }

        if onlyLeft {
            return left
        } else {
            return right
        }
    }

    public var isRoot: Bool {
        return parent == nil
    }

    public var isParentsRight: Bool {
        return parent?.right?.data == data
    }

    public var isParentsLeft: Bool {
        return parent?.left?.data == data
    }

    public func disinherit(_ node: TreeNode) {
        if node.data == right?.data {
            print("--> node is my right, I am disinheriting it")
            right = nil
            node.parent = nil
        } else if node.data == left?.data {
            print("--> node is my left, I am disinheriting it")
            left = nil
            node.parent = nil
        }

        print("--> node does not belong to me I am not acting")
    }

    public func adopt(_ node: TreeNode) {
        guard data != node.data else {
            print("--> We don't do duplicates!")
            return
        }

        if data < node.data {
            guard right == nil else {
                print("--> \(data) can't adopt \(node.data) because \(right!.data) is there")
                return
            }
            right = node
        } else {
            guard left == nil else {
                print("--> \(data) can't adopt \(node.data) because \(left!.data) is there")
                return
            }
            left = node
        }

        node.parent = self
    }

    public static func snip(node: TreeNode, awayFrom parent: TreeNode) {
        parent.disinherit(node)
        guard let grandChild = node.onlyChild else { return }
        parent.adopt(grandChild)
    }
}

public func format(_ node: TreeNode) -> String {
    return node.description
}
