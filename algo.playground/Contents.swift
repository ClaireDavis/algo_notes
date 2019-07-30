import Foundation

let one = TreeNode(data: 1)
let two = TreeNode(data: 2)
let three = TreeNode(data: 3)
let four = TreeNode(data: 4)
let five = TreeNode(data: 5)
let six = TreeNode(data: 6)
let seven = TreeNode(data: 7)
let eight = TreeNode(data: 8)
let nine = TreeNode(data: 9)
let ten = TreeNode(data: 10)
let eleven = TreeNode(data: 11)
let twelve = TreeNode(data: 12)

//// INSERT
//let tree = TreeNode(data: 2)
//insert(node: nine, into: tree)
//insert(node: TreeNode(data: 1), into: tree)
//insert(node: twelve, into: tree)
//insert(node: ten, into: tree)
//
//// CHECK INSERT
//print(format(tree))
//print(format(nine))
//print(format(twelve))

/// MIN
//let tree = TreeNode(data: 7)
//insert(node: nine, into: tree)
//insert(node: one, into: tree)
//insert(node: twelve, into: tree)
//insert(node: ten, into: tree)
//
//guard let min = findMinimum(in: tree) else { fatalError() }
//print(format(min))

/// MAX
//guard let max = findMaximum(in: tree) else { fatalError() }
//print(format(max))

/// TRAVERSE
//traverse(tree)

/// DELETION
let tree = TreeNode(data: 2)
insert(node: one, into: tree)
insert(node: seven, into: tree)
insert(node: four, into: tree)
insert(node: three, into: tree)
insert(node: six, into: tree)
insert(node: five, into: tree)
insert(node: eight, into: tree)
//traverse(tree)

//let _ = find(5, in: tree)
//let _ = find(14, in: tree)

let newTree = delete(8, from: tree)
traverse(newTree)
