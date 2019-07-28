
import Foundation

// TODO: Make generic >_>
public class Node {
    public let data: Int
    public var parent: Node?
    public var left: Node?
    public var right: Node?

    public init(
        data: Int,
        parent: Node? = nil,
        left: Node? = nil,
        right: Node? = nil) {
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

public func format(_ node: Node) -> String {
    return node.description
}
