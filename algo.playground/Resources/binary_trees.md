
# Binary Tree Cheat Sheet

Binary trees are a wombo-combo data structure because they provide both:
* fast search (like the logarithmic sorted array)
* flexible update (like the _O(1)_ doubly-linked list insertion/deletion)

This depends on access to two elements, the median elements above & below the given node. In a _rooted_ binary tree, these values are found via the left and right subtrees, referenced by the node itself. If the root node is _x_, all values off the left subtree must be less than _x_; all values off the right subtree must be greater than _x_.
