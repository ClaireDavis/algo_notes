import Foundation

private func findPredecessor(of data: Int, in list: ListNode?) -> ListNode? {
    guard let list = list,
        let next = list.next else {
            print("Error: predecessor of \(data) sought on null list.\n)")
            return nil
    }

    // TODO: Send in data or node? Also, duplicates?
    // if (next.data == data)
    if (next.data == data) {
        return list
    } else {
        return findPredecessor(of: data, in: next)
    }
}

// Linked List Deletion (returns head)
public func delete(_ data: Int, from list: ListNode) -> ListNode? {
    // find data
    guard let node = find(data, in: list) else {
         print("Error: Trying to delete \(data), which is not in list starting with \(list.data)\n)")
        return nil
    }

    // find predecessor
    guard let predecessor = findPredecessor(of: node.data, in: list) else {
        // the node is in the list, but has no predecessor. It's the head!
        return list.next // free(node)
    }

    // point predecessor's next to deleted node's next
    predecessor.next = node.next

    // return list's head
    return list // free(node)
}

// BINARY TREE
// --> Deletion

public func delete(_ data: Int, from tree: TreeNode) {
    // find it in the tree
    // handle case where node has no children
    // one child
    // both children (cheat: pikc smallest value in right subtree)
}
