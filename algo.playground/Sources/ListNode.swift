
import Foundation

// TODO: Make generic >_>
public class ListNode {
    public let data: Int
    public var next: ListNode?

    public init(
        data: Int,
        next: ListNode? = nil) {
        self.data = data
        self.next = next
    }

    private var nextString: String {
        if let n = next {
            return "next: \(n.data)"
        } else {
            return "next: none"
        }
    }

    public var description: String {
        return """
        data: \(data)-->\(nextString)
        """
    }
}

public func format(_ node: ListNode) -> String {
    return node.description
}
