import Foundation

// Linked List Retrieval
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

// BINARY TREE
// --> Find minimum
public func findMinimum(in tree: TreeNode) -> TreeNode? {
    var min = tree
    print("--> min starts at \(min.data)")
    while min.left != nil {
        print("--> new min is \(min.left!.data)")
        min = min.left!
    }

    return min
}

// --> Find maximum
public func findMaximum(in tree: TreeNode) -> TreeNode? {
    var max = tree
    print("--> max starts at \(max.data)")
    while max.right != nil {
        print("--> new max is \(max.right!.data)")
        max = max.right!
    }

    return max
}
