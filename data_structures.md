# Data Structures:
 - All data structures are either **contiguous** or **linked**
	- **contiguous**: single slabs of memory (arrays, matrices, heaps + hashes)
	- **linked**: distinct chunks of memory bound by pointers (lists, tress, graph adjacency lists)

### Arrays
- fundamental data structure
- fixed-size such that each element can be efficiently located by its index (address in memory)

Benefits:
- constant-time access given the index
- space-efficiency - contain only data, no space wasted by pointers, or end of record info
- memory locality - physical continuity b/w data

Downsides:
- cannot adjust size in middle of programs execution(think of mutating an iterating array) Need to allocate space.  Going beyond allocated space fails or we need to over-allocate which is inefficient

Dynamic array - array is doubled each time it runs out of memory.  All data access is o(n) except for the nth which will need to double the array.  Overall still o(n)

### Pointers and Linked structures
- Pointers hold the pieces of linked structures together, representing the address of a location in memory

``` 
Struct Node {
    Let data: String
    Let next: Node
}
```

- needs to allocate memory to pointer to next item
- also need pointer to head of structure so we know where it is

Three basic operations supported by lists: search, insert, delete

Above is a single-linked list.  A double-linked list contains pointers to item before and after item.  This increases memory needed, but simplifies operations.


So what are the pro's and cons of each data structure?
 Lists: 
	- overflow cannot occurs
	- insertion + deletion is simpler
	- moving pointers is easier and faster than moving the items themselves

Arrays: 
	- don't need space for storing pointers
	- allow for efficient random access
	- allow better memory locality and cache performance

They're both recursive objects - removing the beginning, leaves a smaller item that is still that object type 

### Stacks and Queues
Containers permit storage and retrieval of data independent of content, distinguished by particular retrieval order.

**Stacks** - LIFO.  Simple + efficient. Used when retrieval order doesn't matter (batched jobs).  Put and get operations are push and pop

**** note: Algorithmically, LIFO tends to happen in the course of executing recursive algorithms

**Queues** - FIFO. Minimizes maximum time spent waiting, however, average wait time is the same.  Used when order is important. Put and get operations are enqueue and dequeue. (Breadth-first data searches)

Stacks and queues are implemented using arrays or linked lists.  Key issue is whether an upper bound on size of the container is known in advance, permitting a statically allocated array.

### Dictionaries
- permits access to items by content.
- Primary operations are search(D,x), insert(D,x), delete(D,x)

- can be used for deduplication of lists

### Binary search trees
- Linked lists - fast update
- Contiguous - fast search

- BSTs give us both

Binary search Trees have specific labeling structure.  For node X, all nodes on left of its subtree have labels < X.  All nodes on the right of the subtree have nodes > X.  

``` 
Class Node<T> {
    let value: T
    let left: Node?
    let right: Node?
    let parent: Node?
}
```

Operations supported in a BST are: searching, traversal, insertion, and deletion.

Searching can be achieved recursively by checking whether x occurs before or after the root key.

**Searching:**

```
func find(_ data: T, root: Node<T>?) -> Node<T> {
	guard let root = root else { throw InvalidError }

	if root.data > data {
	    find(data, root: left)
	} else if root.data < data {
 	    find(data, root: right)
	} else {
	    return root
	}
}
```
**Insertion**

**Deletion**

**Traversal**

