��          �               �     �      �  J     3   X  :   �  Z   �  T   "  *   w  A   �  3   �  $     �   =  w  �    u     ~  J   �  3   �  :     Z   O  T   �  *   �  A   *	  3   l	  $   �	  �   �	   :ref:`ActiveCode 1 <lst_heap1>` demonstrates the use of some of the binary heap methods.  Notice that no matter the order that we add items to the heap, the smallest is removed each time.  We will now turn our attention to creating an implementation for this idea. Binary Heap Operations The basic operations we will implement for our binary heap are as follows: ``BinaryHeap()`` creates a new, empty, binary heap. ``buildHeap(list)`` builds a new heap from a list of keys. ``delMin()`` returns the item with the minimum key value, removing the item from the heap. ``findMin()`` returns the item with the minimum key value, leaving item in the heap. ``insert(k)`` adds a new item to the heap. ``isEmpty()`` returns true if the heap is empty, false otherwise. ``size()`` returns the number of items in the heap. data-caption='Using the Binary Heap' from pythonds.trees.binheap import BinHeap

bh = BinHeap()
bh.insert(5)
bh.insert(7)
bh.insert(3)
bh.insert(11)

print(bh.delMin())

print(bh.delMin())

print(bh.delMin())

print(bh.delMin()) Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 :ref:`ActiveCode 1 <lst_heap1>` demonstrates the use of some of the binary heap methods.  Notice that no matter the order that we add items to the heap, the smallest is removed each time.  We will now turn our attention to creating an implementation for this idea. Binary Heap Operations The basic operations we will implement for our binary heap are as follows: ``BinaryHeap()`` creates a new, empty, binary heap. ``buildHeap(list)`` builds a new heap from a list of keys. ``delMin()`` returns the item with the minimum key value, removing the item from the heap. ``findMin()`` returns the item with the minimum key value, leaving item in the heap. ``insert(k)`` adds a new item to the heap. ``isEmpty()`` returns true if the heap is empty, false otherwise. ``size()`` returns the number of items in the heap. data-caption='Using the Binary Heap' from pythonds.trees.binheap import BinHeap

bh = BinHeap()
bh.insert(5)
bh.insert(7)
bh.insert(3)
bh.insert(11)

print(bh.delMin())

print(bh.delMin())

print(bh.delMin())

print(bh.delMin()) 