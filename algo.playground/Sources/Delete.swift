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

// BINARY SEARCH TREE
// --> Deletion

public func delete(_ data: Int, from tree: TreeNode) -> TreeNode? {
    // find it in the tree
    guard let found = find(data, in: tree) else {
        print("--> Did not find \(data)")
        // doesn't exist so we return ourselves
        return tree
    }

    // handle case where node has no children
    if found.isChildless {
        print("--> Found \(found.data) has no children")
        
        if found.isParentsRight {
            print("--> Found \(found.data) is parent's right")
            found.parent?.right = nil

            return tree
        } else if found.isParentsLeft {
            print("--> Found \(found.data) is parent's left")
            found.parent?.left = nil

            return tree
        } else {
            print("--> Found \(found.data) is the lone node, we delete the whole thing")

            return nil
        }
    }

    // one child
    if let onlyChild = found.onlyChild {
        guard let parent = found.parent else {
            print("--> Found \(found.data) is the root so our only child is the new root")
            onlyChild.parent = nil
            found.disinherit(onlyChild)
            return onlyChild
        }

         print("--> Found \(found.data) has only one child so it is now replaces found as found's parent's child")
        TreeNode.snip(node: found, awayFrom: parent)
        return tree
    }

    // both children (cheat: pick smallest value in right subtree)

    if let rightTree = found.right,
        let nextMe = findMinimum(in: rightTree) {

        // next me by def DOES NOT have a left
        // next me MAY have a right. Snip the nextMe out (TreeNode.snip)

        // hoist next me to my position
        // update the parent ref on my left child to point to next me & vice versa
        // update the parent ref on my right child to point to next me & vice versa

        if let parent = found.parent {
            // parent disinherites found
            // parent adopts next me
        } else {
            // return next me - it's the new root
        }
    }

    return nil
}
