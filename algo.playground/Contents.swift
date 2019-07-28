import Foundation

let one = TreeNode(data: 1)
let two = TreeNode(data: 2)
let nine = TreeNode(data: 9)
let twelve = TreeNode(data: 12)
let ten = TreeNode(data: 10)

// let tree = TreeNode(data: 2)
//// INSERT
//insert(node: nine, into: tree)
//insert(node: TreeNode(data: 1), into: tree)
//insert(node: twelve, into: tree)
//insert(node: ten, into: tree)
//
//// CHECK INSERT
//print(format(tree))
//print(format(nine))
//print(format(twelve))

let tree = TreeNode(data: 7)
insert(node: nine, into: tree)
insert(node: one, into: tree)
insert(node: twelve, into: tree)
insert(node: ten, into: tree)

guard let min = findMinimum(in: tree) else { fatalError() }
print(format(min))

guard let max = findMaximum(in: tree) else { fatalError() }
print(format(max))
