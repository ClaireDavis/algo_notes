import Foundation

let tree = TreeNode(data: 2)

let nine = TreeNode(data: 9)
let twelve = TreeNode(data: 12)
let ten = TreeNode(data: 10)

// INSERT
insert(node: nine, into: tree)
insert(node: TreeNode(data: 1), into: tree)
insert(node: twelve, into: tree)
insert(node: ten, into: tree)

// CHECK INSERT
print(format(tree))
print(format(nine))
print(format(twelve))
