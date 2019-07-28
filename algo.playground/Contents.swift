import Foundation

let tree = Node(data: 2)

let nine = Node(data: 9)
let twelve = Node(data: 12)
let ten = Node(data: 10)

// INSERT
insert(node: nine, into: tree)
insert(node: Node(data: 1), into: tree)
insert(node: twelve, into: tree)
insert(node: ten, into: tree)

// CHECK INSERT
print(format(tree))
print(format(nine))
print(format(twelve))
