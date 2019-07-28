# Data Structures
## (Continued)

### Overview
Data structures are fundamentally about tradeoffs, not the correctness of any given implementation. The maximum benefits of data structures well-suited to a given computational problem are best realized from the beginning. Design your solution around the right data structure!

There are three fundamental, abstract data structures.
1. Containers
2. Dictionaries
3. Priority queues

And, data structures are built in memory in one of two ways:
1. Contiguous memory
    - arrays
    - matrices
    - heaps
    - hash tables
2. Linked memory (_linked_ via pointer references)
    - lists
    - trees
    - graphs / graph adjacency lists

So, trade-offs. What's the strenght of each kind?

*Contiguous* data structures like the array leverage constant-time access, given an index. They utilize space better (purely data, no bookkeeping). And, because of the contiguous nature of their contents, they benefit from memory locality at runtime. The downside: they are less flexible with storage changes (we can't just adjust sizes willy-nilly and re-indexing is expensive when it does happen).

*Linked* structures are flexible when it comes to insertion and deletion, but you must walk every reference on search. In addition, because each datum must be "tagged" with cetain metadata (e.g. `next`, `previous`), some space efficiency is lost; though some is gained when it comes time to increase the data size.

### Note!
When leveraging data structures, it can be worth interrogating if the structure is recursive. Arrays and trees both are; if _x_ is a list, it contains many "sub-lists" which can be searched iteratively or recursively.
