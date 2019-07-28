import Foundation

public func find(_ data: Int, in node: ListNode?) -> ListNode? {
    guard let node = node else {
        return nil
    }

    if node.data == data {
        return node
    } else {
        return find(data, in: node.next)
    }
}
