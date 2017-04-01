��    {      �              �     �     �     �     �                    ,  2   :  ;   m  *   �  ,   �  +   	  ,   -	  0   Z	  0   �	  +   �	  ,   �	  -   
     C
     E
     J
     P
  0   S
  1   �
  1   �
     �
     �
     �
     �
     �
                         !     $     &     (     +     -     /  1   2  �  d  N  E  �   �  0   U  �  �  �      	  	    "  &     I    ]  !  {  -   �  .   �     �  -     2   =  6   p  -   �  (   �  #   �  /   "  >   R  2   �  '   �    �     �!     "  +   "  �  <"  2  �$  �  
&  f  �'  E   G)  u   �)  �  *  r   �+  �  2,  y  �-  V  F/  �  �1  �  K4  �   6  +  �6  �  %9    ;  e   "<  %  �<  
   �=  0  �=  =   �@  =  (A  �   fB  �  C    �E    �F  C  �I     #L  @   ;L  �   |L  @  M  �  PN  }  �O  �  _Q  F  �R  �  AU  F   +W  ^   rW  S   �W  y  %X  w   �Z  A   [  �   Y[  �   �[  P  n\  *   �c  6  �c  �   !f  �  �f  w  �i     $k     3k     <k     Jk     Xk     fk     tk     �k  2   �k  ;   �k  *    l  ,   +l  +   Xl  ,   �l  0   �l  0   �l  +   m  ,   ?m  -   lm     �m     �m     �m     �m  0   �m  1   �m  1   n     ?n     En     Hn     Mn     Pn     on     qn     tn     vn     xn     {n     }n     n     �n     �n     �n  1   �n  �  �n  N  �p  �   �q  0   �r  �  �r  �  cu    `w  	  sy  "  }z     �|    �|  !  �~  -   �  .   "�     Q�  -   f�  2   ��  6   ǁ  -   ��  (   ,�  #   U�  /   y�  >   ��  2   �  '   �    C�     P�     _�  +   g�  �  ��  2  .�  �  a�  f  7�  E   ��  u   �  �  Z�  r   �  �  ��  y  #�  V  ��  �  ��  �  ��  �   X�  +  P�  �  |�    t�  e   y�  %  ߟ  
   �  0  �  =   A�  =  �  �   ��  �  ]�     �    2�  C  6�     z�  @   ��  �   ӯ  @  f�  �  ��  }  8�  �  ��  F  Q�  �  ��  F   ��  ^   ɺ  S   (�  y  |�  w   ��  A   n�  �   ��  �   6�  P  ſ  *   �  6  A�  �   x�  �  �   **Hash Value** **Item** **Listing 1** **Listing 2** **Listing 3** **Listing 4** **Mid-Square** **Remainder** **Table 4: Simple Hash Function Using Remainders** **Table 5: Comparison of Remainder and Mid-Square Methods** .. image:: SortSearch/Figures/chaining.png .. image:: SortSearch/Figures/clustering.png .. image:: SortSearch/Figures/hashtable.png .. image:: SortSearch/Figures/hashtable2.png .. image:: SortSearch/Figures/linearprobing1.png .. image:: SortSearch/Figures/linearprobing2.png .. image:: SortSearch/Figures/quadratic.png .. image:: SortSearch/Figures/stringhash.png .. image:: SortSearch/Figures/stringhash2.png 0 1, 0 1, 10 10 100, 113, 117, 97, 14, 108, 116, 105, 99, __, __ 100, __, __, 113, 114, 105, 116, 117, 97, 108, 99 117, 114, 108, 116, 105, 99, __, __, 97, 100, 113 13, 0 17 2, 3 26 27 % 13 == 1 and 130 % 13 == 0 3 31 4 5 54 6 7 77 8 9 93 99, 100, __, 113, 114, __, 116, 117, 105, 97, 108 :ref:`Figure 8 <fig_linearprobing>` shows an extended set of integer items under the simple remainder method hash function (54,26,93,17,77,31,44,55,20). :ref:`Table 4 <tbl_hashvalues1>` above shows the hash values for the original items. :ref:`Figure 5 <fig_hashtable2>` shows the original contents. When we attempt to place 44 into slot 0, a collision occurs. Under linear probing, we look sequentially, slot by slot, until we find an open position. In this case, we find slot 1. >>> H=HashTable()
>>> H[54]="cat"
>>> H[26]="dog"
>>> H[93]="lion"
>>> H[17]="tiger"
>>> H[77]="bird"
>>> H[31]="cow"
>>> H[44]="goat"
>>> H[55]="pig"
>>> H[20]="chicken"
>>> H.slots
[77, 44, 55, 20, 26, 93, 17, None, None, 31, 54]
>>> H.data
['bird', 'goat', 'pig', 'chicken', 'dog', 'lion',
       'tiger', None, None, 'cow', 'cat'] >>> H[20]
'chicken'
>>> H[17]
'tiger'
>>> H[20]='duck'
>>> H[20]
'duck'
>>> H.data
['bird', 'goat', 'pig', 'duck', 'dog', 'lion',
       'tiger', None, None, 'cow', 'cat']
>> print(H[99])
None >>> ord('c')
99
>>> ord('a')
97
>>> ord('t')
116 A **hash table** is a collection of items which are stored in such a way as to make it easy to find them later. Each position of the hash table, often called a **slot**, can hold an item and is named by an integer value starting at 0. For example, we will have a slot named 0, a slot named 1, a slot named 2, and so on. Initially, the hash table contains no items so every slot is empty. We can implement a hash table by using a list with each element initialized to the special Python value ``None``. :ref:`Figure 4 <fig_hashtable1>` shows a hash table of size :math:`m=11`. In other words, there are *m* slots in the table, named 0 through 10. A disadvantage to linear probing is the tendency for **clustering**; items become clustered in the table. This means that if many collisions occur at the same hash value, a number of surrounding slots will be filled by the linear probing resolution. This will have an impact on other items that are being inserted, as we saw when we tried to add the item 20 above. A cluster of values hashing to 0 had to be skipped to finally find an open position. This cluster is shown in :ref:`Figure 9 <fig_clustering>`. A variation of the linear probing idea is called **quadratic probing**. Instead of using a constant “skip” value, we use a rehash function that increments the hash value by 1, 3, 5, 7, 9, and so on. This means that if the first hash value is *h*, the successive values are :math:`h+1`, :math:`h+4`, :math:`h+9`, :math:`h+16`, and so on. In other words, quadratic probing uses a skip consisting of successive perfect squares. :ref:`Figure 11 <fig_quadratic>` shows our example values after they are placed using this technique. Again, 55 should go in slot 0 but must be placed in slot 2 since it is the next open position. The final value of 20 hashes to slot 9. Since slot 9 is full, we begin to do linear probing. We visit slots 10, 0, 1, and 2, and finally find an empty slot at position 3. An alternative method for handling the collision problem is to allow each slot to hold a reference to a collection (or chain) of items. **Chaining** allows many items to exist at the same location in the hash table. When collisions happen, the item is still placed in the proper slot of the hash table. As more and more items hash to the same location, the difficulty of searching for the item in the collection increases. :ref:`Figure 12 <fig_chaining>` shows the items as they are added to a hash table that uses chaining to resolve collisions. Analysis of Hashing Another numerical technique for constructing a hash function is called the **mid-square method**. We first square the item, and then extract some portion of the resulting digits. For example, if the item were 44, we would first compute :math:`44 ^{2} = 1,936`. By extracting the middle two digits, 93, and performing the remainder step, we get 5 (:math:`93\ \%\ 11`). :ref:`Table 5 <tbl_hashvalues2>` shows items under both the remainder method and the mid-square method. You should verify that you understand how these values were computed. As before, we will have a result for both a successful and an unsuccessful search. For a successful search using open addressing with linear probing, the average number of comparisons is approximately :math:`\frac{1}{2}\left(1+\frac{1}{1-\lambda}\right)` and an unsuccessful search gives :math:`\frac{1}{2}\left(1+\left(\frac{1}{1-\lambda}\right)^2\right)` If we are using chaining, the average number of comparisons is :math:`1 + \frac {\lambda}{2}` for the successful case, and simply :math:`\lambda` comparisons if the search is unsuccessful. Be careful to use modulo not integer division Be careful to use modulo not integer division. Collision Resolution Don't divide by two, use the modulo operator. Figure 10: Collision Resolution Using “Plus 3” Figure 11: Collision Resolution with Quadratic Probing Figure 12: Collision Resolution with Chaining Figure 4: Hash Table with 11 Empty Slots Figure 5: Hash Table with Six Items Figure 6: Hashing a String Using Ordinal Values Figure 7: Hashing a String Using Ordinal Values with Weighting Figure 8: Collision Resolution with Linear Probing Figure 9: A Cluster of Items for Slot 0 Given a collection of items, a hash function that maps each item into a unique slot is referred to as a **perfect hash function**. If we know the items and the collection will never change, then it is possible to construct a perfect hash function (refer to the exercises for more about perfect hash functions). Unfortunately, given an arbitrary collection of items, there is no systematic way to construct a perfect hash function. Luckily, we do not need the hash function to be perfect to still gain performance efficiency. Hash Functions Hashing Implementing the ``Map`` Abstract Data Type In :ref:`Listing 2 <lst_hashtablecodeconstructor>` we use two lists to create a ``HashTable`` class that implements the Map abstract data type. One list, called ``slots``, will hold the key items and a parallel list, called ``data``, will hold the data values. When we look up a key, the corresponding position in the data list will hold the associated data value. We will treat the key list as a hash table using the ideas presented earlier. Note that the initial size for the hash table has been chosen to be 11. Although this is arbitrary, it is important that the size be a prime number so that the collision resolution algorithm can be as efficient as possible. In order to do this, we will need to know even more about where the items might be when we go to look for them in the collection. If every item is where it should be, then the search can use a single comparison to discover the presence of an item. We will see, however, that this is typically not the case. In previous sections we were able to make improvements in our search algorithms by taking advantage of information about where items are stored in the collection with respect to one another. For example, by knowing that a list was ordered, we could search in logarithmic time using a binary search. In this section we will attempt to go one step further by building a data structure that can be searched in :math:`O(1)` time. This concept is referred to as **hashing**. It is interesting to note that when using this hash function, anagrams will always be given the same hash value. To remedy this, we could use the position of the character as a weight. :ref:`Figure 7 <fig_stringhash2>` shows one possible way to use the positional value as a weighting factor. The modification to the ``hash`` function is left as an exercise. It looks like you are using modulo 10 arithmetic, use the table size. It looks like you may have been doing modulo 2 arithmentic.  You need to use the hash table size as the modulo value. Likewise, the ``get`` function (see :ref:`Listing 4 <lst_hashtablecodesearch>`) begins by computing the initial hash value. If the value is not in the initial slot, ``rehash`` is used to locate the next possible position. Notice that line 15 guarantees that the search will terminate by checking to make sure that we have not returned to the initial slot. If that happens, we have exhausted all possible slots and the item must not be present. Next we will access and modify some items in the hash table. Note that the value for the key 20 is being replaced. Now when we want to search for an item, we simply use the hash function to compute the slot name for the item and then check the hash table to see if it is present. This searching operation is :math:`O(1)`, since a constant amount of time is required to compute the hash value and then index the hash table at that location. If everything is where it should be, we have found a constant time search algorithm. Once the hash values have been computed, we can insert each item into the hash table at the designated position as shown in :ref:`Figure 5 <fig_hashtable2>`. Note that 6 of the 11 slots are now occupied. This is referred to as the **load factor**, and is commonly denoted by :math:`\lambda = \frac {numberofitems}{tablesize}`. For this example, :math:`\lambda = \frac {6}{11}`. Once we have built a hash table using open addressing and linear probing, it is essential that we utilize the same methods to search for items. Assume we want to look up the item 93. When we compute the hash value, we get 5. Looking in slot 5 reveals 93, and we can return ``True``. What if we are looking for 20? Now the hash value is 9, and slot 9 is currently holding 31. We cannot simply return ``False`` since we know that there could have been collisions. We are now forced to do a sequential search, starting at position 10, looking until either we find the item 20 or we find an empty slot. One method for resolving collisions looks into the hash table and tries to find another open slot to hold the item that caused the collision. A simple way to do this is to start at the original hash value position and then move in a sequential manner through the slots until we encounter the first slot that is empty. Note that we may need to go back to the first slot (circularly) to cover the entire hash table. This collision resolution process is referred to as **open addressing** in that it tries to find the next open slot or address in the hash table. By systematically visiting each slot one at a time, we are performing an open addressing technique called **linear probing**. One of the great benefits of a dictionary is the fact that given a key, we can look up the associated data value very quickly. In order to provide this fast look up capability, we need an implementation that supports an efficient search. We could use a list with sequential or binary search but it would be even better to use a hash table as described above since looking up an item in a hash table can approach :math:`O(1)` performance. One of the most useful Python collections is the dictionary. Recall that a dictionary is an associative data type where you can store key–data pairs. The key is used to look up the associated data value. We often refer to this idea as a **map**. One way to always have a perfect hash function is to increase the size of the hash table so that each possible value in the item range can be accommodated. This guarantees that each item will have a unique slot. Although this is practical for small numbers of items, it is not feasible when the number of possible items is large. For example, if the items were nine-digit Social Security numbers, this method would require almost one billion slots. If we only want to store data for a class of 25 students, we will be wasting an enormous amount of memory. One way to deal with clustering is to extend the linear probing technique so that instead of looking sequentially for the next open slot, we skip slots, thereby more evenly distributing the items that have caused collisions. This will potentially reduce the clustering that occurs. :ref:`Figure 10 <fig_linearprobing2>` shows the items when collision resolution is done with a “plus 3” probe. This means that once a collision occurs, we will look at every third slot until we find one that is empty. Our goal is to create a hash function that minimizes the number of collisions, is easy to compute, and evenly distributes the items in the hash table. There are a number of common ways to extend the simple remainder method. We will consider a few of them here. Q-11: In a hash table of size 13 which index positions would the following two keys map to?  27,  130 Q-12: Suppose you are given the following set of keys to insert into a hash table that holds exactly 11 values:  113 , 117 , 97 , 100 , 114 , 108 , 116 , 105 , 99 Which of the following best demonstrates the contents of the has table after all the keys have been inserted using linear probing? Self Check The **folding method** for constructing hash functions begins by dividing the item into equal-size pieces (the last piece may not be of equal size). These pieces are then added together to give the resulting hash value. For example, if our item was the phone number 436-555-4601, we would take the digits and divide them into groups of 2 (43,65,55,46,01). After the addition, :math:`43+65+55+46+01`, we get 210. If we assume our hash table has 11 slots, then we need to perform the extra step of dividing by 11 and keeping the remainder. In this case :math:`210\ \%\ 11` is 1, so the phone number 436-555-4601 hashes to slot 1. Some folding methods go one step further and reverse every other piece before the addition. For the above example, we get :math:`43+56+55+64+01 = 219` which gives :math:`219\ \%\ 11 = 10`. The complete hash table example can be found in ActiveCode 1. The final methods of the ``HashTable`` class provide additional dictionary functionality. We overload the __getitem__ and __setitem__ methods to allow access using``[]``. This means that once a ``HashTable`` has been created, the familiar index operator will be available. We leave the remaining methods as exercises. The following session shows the ``HashTable`` class in action. First we will create a hash table and store some items with integer keys and string data values. The general name for this process of looking for another slot after a collision is **rehashing**. With simple linear probing, the rehash function is :math:`newhashvalue = rehash(oldhashvalue)` where :math:`rehash(pos) = (pos + 1) \% sizeoftable`. The “plus 3” rehash can be defined as :math:`rehash(pos) = (pos+3) \% sizeoftable`. In general, :math:`rehash(pos) = (pos + skip) \% sizeoftable`. It is important to note that the size of the “skip” must be such that all the slots in the table will eventually be visited. Otherwise, part of the table will be unused. To ensure this, it is often suggested that the table size be a prime number. This is the reason we have been using 11 in our examples. The map abstract data type is defined as follows. The structure is an unordered collection of associations between a key and a data value. The keys in a map are all unique so that there is a one-to-one relationship between a key and a value. The operations are given below. The mapping between an item and the slot where that item belongs in the hash table is called the **hash function**. The hash function will take any item in the collection and return an integer in the range of slot names, between 0 and *m*-1. Assume that we have the set of integer items 54, 26, 93, 17, 77, and 31. Our first hash function, sometimes referred to as the “remainder method,” simply takes an item and divides it by the table size, returning the remainder as its hash value (:math:`h(item)=item \% 11`). :ref:`Table 4 <tbl_hashvalues1>` gives all of the hash values for our example items. Note that this remainder method (modulo arithmetic) will typically be present in some form in all hash functions, since the result must be in the range of slot names. The most important piece of information we need to analyze the use of a hash table is the load factor, :math:`\lambda`. Conceptually, if :math:`\lambda` is small, then there is a lower chance of collisions, meaning that items are more likely to be in the slots where they belong. If :math:`\lambda` is large, meaning that the table is filling up, then there are more and more collisions. This means that collision resolution is more difficult, requiring more comparisons to find an empty slot. With chaining, increased collisions means an increased number of items on each chain. Use the modulo operator Using modulo 11 arithmetic and linear probing gives these values We can also create hash functions for character-based items such as strings. The word “cat” can be thought of as a sequence of ordinal values. We can then take these three ordinal values, add them up, and use the remainder method to get a hash value (see :ref:`Figure 6 <fig_stringhash>`). :ref:`Listing 1 <lst_hashfunction1>` shows a function called ``hash`` that takes a string and a table size and returns the hash value in the range from 0 to ``tablesize``-1. We now return to the problem of collisions. When two items hash to the same slot, we must have a systematic method for placing the second item in the hash table. This process is called **collision resolution**. As we stated earlier, if the hash function is perfect, collisions will never occur. However, since this is often not possible, collision resolution becomes a very important part of hashing. We stated earlier that in the best case hashing would provide a :math:`O(1)`, constant time search technique. However, due to collisions, the number of comparisons is typically not so simple. Even though a complete analysis of hashing is beyond the scope of this text, we can state some well-known results that approximate the number of comparisons necessary to search for an item. When we want to search for an item, we use the hash function to generate the slot where it should reside. Since each slot holds a collection, we use a searching technique to decide whether the item is present. The advantage is that on the average there are likely to be many fewer items in each slot, so the search is perhaps more efficient. We will look at the analysis for hashing at the end of this section. You can probably already see that this technique is going to work only if each item maps to a unique location in the hash table. For example, if the item 44 had been the next item in our collection, it would have a hash value of 0 (:math:`44 \% 11 == 0`). Since 77 also had a hash value of 0, we would have a problem. According to the hash function, two or more items would need to be in the same slot. This is referred to as a **collision** (it may also be called a “clash”). Clearly, collisions create a problem for the hashing technique. We will discuss them in detail later. You may be able to think of a number of additional ways to compute hash values for items in a collection. The important thing to remember is that the hash function has to be efficient so that it does not become the dominant part of the storage and search process. If the hash function is too complex, then it becomes more work to compute the slot name than it would be to simply do a basic sequential or binary search as described earlier. This would quickly defeat the purpose of hashing. ``Map()`` Create a new, empty map. It returns an empty map collection. ``del`` Delete the key-value pair from the map using a statement of the form ``del map[key]``. ``get(key)`` Given a key, return the value stored in the map or ``None`` otherwise. ``hashfunction`` implements the simple remainder method. The collision resolution technique is linear probing with a “plus 1” rehash function. The ``put`` function (see :ref:`Listing 3 <lst_hashtablecodestore>`) assumes that there will eventually be an empty slot unless the key is already present in the ``self.slots``. It computes the original hash value and if that slot is not empty, iterates the ``rehash`` function until an empty slot occurs. If a nonempty slot already contains the key, the old data value is replaced with the new data value.  Dealing with the situation where there are no empty slots left is an exercise. ``in`` Return ``True`` for a statement of the form ``key in map``, if the given key is in the map, ``False`` otherwise. ``len()`` Return the number of key-value pairs stored in the map. ``put(key,val)`` Add a new key-value pair to the map. If the key is already in the map then replace the old value with the new value. class HashTable:
    def __init__(self):
        self.size = 11
        self.slots = [None] * self.size
        self.data = [None] * self.size class HashTable:
    def __init__(self):
        self.size = 11
        self.slots = [None] * self.size
        self.data = [None] * self.size

    def put(self,key,data):
      hashvalue = self.hashfunction(key,len(self.slots))

      if self.slots[hashvalue] == None:
        self.slots[hashvalue] = key
        self.data[hashvalue] = data
      else:
        if self.slots[hashvalue] == key:
          self.data[hashvalue] = data  #replace
        else:
          nextslot = self.rehash(hashvalue,len(self.slots))
          while self.slots[nextslot] != None and \
                          self.slots[nextslot] != key:
            nextslot = self.rehash(nextslot,len(self.slots))

          if self.slots[nextslot] == None:
            self.slots[nextslot]=key
            self.data[nextslot]=data
          else:
            self.data[nextslot] = data #replace

    def hashfunction(self,key,size):
         return key%size

    def rehash(self,oldhash,size):
        return (oldhash+1)%size

    def get(self,key):
      startslot = self.hashfunction(key,len(self.slots))

      data = None
      stop = False
      found = False
      position = startslot
      while self.slots[position] != None and  \
                           not found and not stop:
         if self.slots[position] == key:
           found = True
           data = self.data[position]
         else:
           position=self.rehash(position,len(self.slots))
           if position == startslot:
               stop = True
      return data

    def __getitem__(self,key):
        return self.get(key)

    def __setitem__(self,key,data):
        self.put(key,data)

H=HashTable()
H[54]="cat"
H[26]="dog"
H[93]="lion"
H[17]="tiger"
H[77]="bird"
H[31]="cow"
H[44]="goat"
H[55]="pig"
H[20]="chicken"
print(H.slots)
print(H.data)

print(H[20])

print(H[17])
H[20]='duck'
print(H[20])
print(H[99]) data-caption='Complete Hash Table Example' def get(self,key):
  startslot = self.hashfunction(key,len(self.slots))

  data = None
  stop = False
  found = False
  position = startslot
  while self.slots[position] != None and  \
                       not found and not stop:
     if self.slots[position] == key:
       found = True
       data = self.data[position]
     else:
       position=self.rehash(position,len(self.slots))
       if position == startslot:
           stop = True
  return data

def __getitem__(self,key):
    return self.get(key)

def __setitem__(self,key,data):
    self.put(key,data) def hash(astring, tablesize):
    sum = 0
    for pos in range(len(astring)):
        sum = sum + ord(astring[pos])

    return sum%tablesize def put(self,key,data):
  hashvalue = self.hashfunction(key,len(self.slots))

  if self.slots[hashvalue] == None:
    self.slots[hashvalue] = key
    self.data[hashvalue] = data
  else:
    if self.slots[hashvalue] == key:
      self.data[hashvalue] = data  #replace
    else:
      nextslot = self.rehash(hashvalue,len(self.slots))
      while self.slots[nextslot] != None and \
                      self.slots[nextslot] != key:
        nextslot = self.rehash(nextslot,len(self.slots))

      if self.slots[nextslot] == None:
        self.slots[nextslot]=key
        self.data[nextslot]=data
      else:
        self.data[nextslot] = data #replace

def hashfunction(self,key,size):
     return key%size

def rehash(self,oldhash,size):
    return (oldhash+1)%size Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **Hash Value** **Item** **Listing 1** **Listing 2** **Listing 3** **Listing 4** **Mid-Square** **Remainder** **Table 4: Simple Hash Function Using Remainders** **Table 5: Comparison of Remainder and Mid-Square Methods** .. image:: SortSearch/Figures/chaining.png .. image:: SortSearch/Figures/clustering.png .. image:: SortSearch/Figures/hashtable.png .. image:: SortSearch/Figures/hashtable2.png .. image:: SortSearch/Figures/linearprobing1.png .. image:: SortSearch/Figures/linearprobing2.png .. image:: SortSearch/Figures/quadratic.png .. image:: SortSearch/Figures/stringhash.png .. image:: SortSearch/Figures/stringhash2.png 0 1, 0 1, 10 10 100, 113, 117, 97, 14, 108, 116, 105, 99, __, __ 100, __, __, 113, 114, 105, 116, 117, 97, 108, 99 117, 114, 108, 116, 105, 99, __, __, 97, 100, 113 13, 0 17 2, 3 26 27 % 13 == 1 and 130 % 13 == 0 3 31 4 5 54 6 7 77 8 9 93 99, 100, __, 113, 114, __, 116, 117, 105, 97, 108 :ref:`Figure 8 <fig_linearprobing>` shows an extended set of integer items under the simple remainder method hash function (54,26,93,17,77,31,44,55,20). :ref:`Table 4 <tbl_hashvalues1>` above shows the hash values for the original items. :ref:`Figure 5 <fig_hashtable2>` shows the original contents. When we attempt to place 44 into slot 0, a collision occurs. Under linear probing, we look sequentially, slot by slot, until we find an open position. In this case, we find slot 1. >>> H=HashTable()
>>> H[54]="cat"
>>> H[26]="dog"
>>> H[93]="lion"
>>> H[17]="tiger"
>>> H[77]="bird"
>>> H[31]="cow"
>>> H[44]="goat"
>>> H[55]="pig"
>>> H[20]="chicken"
>>> H.slots
[77, 44, 55, 20, 26, 93, 17, None, None, 31, 54]
>>> H.data
['bird', 'goat', 'pig', 'chicken', 'dog', 'lion',
       'tiger', None, None, 'cow', 'cat'] >>> H[20]
'chicken'
>>> H[17]
'tiger'
>>> H[20]='duck'
>>> H[20]
'duck'
>>> H.data
['bird', 'goat', 'pig', 'duck', 'dog', 'lion',
       'tiger', None, None, 'cow', 'cat']
>> print(H[99])
None >>> ord('c')
99
>>> ord('a')
97
>>> ord('t')
116 A **hash table** is a collection of items which are stored in such a way as to make it easy to find them later. Each position of the hash table, often called a **slot**, can hold an item and is named by an integer value starting at 0. For example, we will have a slot named 0, a slot named 1, a slot named 2, and so on. Initially, the hash table contains no items so every slot is empty. We can implement a hash table by using a list with each element initialized to the special Python value ``None``. :ref:`Figure 4 <fig_hashtable1>` shows a hash table of size :math:`m=11`. In other words, there are *m* slots in the table, named 0 through 10. A disadvantage to linear probing is the tendency for **clustering**; items become clustered in the table. This means that if many collisions occur at the same hash value, a number of surrounding slots will be filled by the linear probing resolution. This will have an impact on other items that are being inserted, as we saw when we tried to add the item 20 above. A cluster of values hashing to 0 had to be skipped to finally find an open position. This cluster is shown in :ref:`Figure 9 <fig_clustering>`. A variation of the linear probing idea is called **quadratic probing**. Instead of using a constant “skip” value, we use a rehash function that increments the hash value by 1, 3, 5, 7, 9, and so on. This means that if the first hash value is *h*, the successive values are :math:`h+1`, :math:`h+4`, :math:`h+9`, :math:`h+16`, and so on. In other words, quadratic probing uses a skip consisting of successive perfect squares. :ref:`Figure 11 <fig_quadratic>` shows our example values after they are placed using this technique. Again, 55 should go in slot 0 but must be placed in slot 2 since it is the next open position. The final value of 20 hashes to slot 9. Since slot 9 is full, we begin to do linear probing. We visit slots 10, 0, 1, and 2, and finally find an empty slot at position 3. An alternative method for handling the collision problem is to allow each slot to hold a reference to a collection (or chain) of items. **Chaining** allows many items to exist at the same location in the hash table. When collisions happen, the item is still placed in the proper slot of the hash table. As more and more items hash to the same location, the difficulty of searching for the item in the collection increases. :ref:`Figure 12 <fig_chaining>` shows the items as they are added to a hash table that uses chaining to resolve collisions. Analysis of Hashing Another numerical technique for constructing a hash function is called the **mid-square method**. We first square the item, and then extract some portion of the resulting digits. For example, if the item were 44, we would first compute :math:`44 ^{2} = 1,936`. By extracting the middle two digits, 93, and performing the remainder step, we get 5 (:math:`93\ \%\ 11`). :ref:`Table 5 <tbl_hashvalues2>` shows items under both the remainder method and the mid-square method. You should verify that you understand how these values were computed. As before, we will have a result for both a successful and an unsuccessful search. For a successful search using open addressing with linear probing, the average number of comparisons is approximately :math:`\frac{1}{2}\left(1+\frac{1}{1-\lambda}\right)` and an unsuccessful search gives :math:`\frac{1}{2}\left(1+\left(\frac{1}{1-\lambda}\right)^2\right)` If we are using chaining, the average number of comparisons is :math:`1 + \frac {\lambda}{2}` for the successful case, and simply :math:`\lambda` comparisons if the search is unsuccessful. Be careful to use modulo not integer division Be careful to use modulo not integer division. Collision Resolution Don't divide by two, use the modulo operator. Figure 10: Collision Resolution Using “Plus 3” Figure 11: Collision Resolution with Quadratic Probing Figure 12: Collision Resolution with Chaining Figure 4: Hash Table with 11 Empty Slots Figure 5: Hash Table with Six Items Figure 6: Hashing a String Using Ordinal Values Figure 7: Hashing a String Using Ordinal Values with Weighting Figure 8: Collision Resolution with Linear Probing Figure 9: A Cluster of Items for Slot 0 Given a collection of items, a hash function that maps each item into a unique slot is referred to as a **perfect hash function**. If we know the items and the collection will never change, then it is possible to construct a perfect hash function (refer to the exercises for more about perfect hash functions). Unfortunately, given an arbitrary collection of items, there is no systematic way to construct a perfect hash function. Luckily, we do not need the hash function to be perfect to still gain performance efficiency. Hash Functions Hashing Implementing the ``Map`` Abstract Data Type In :ref:`Listing 2 <lst_hashtablecodeconstructor>` we use two lists to create a ``HashTable`` class that implements the Map abstract data type. One list, called ``slots``, will hold the key items and a parallel list, called ``data``, will hold the data values. When we look up a key, the corresponding position in the data list will hold the associated data value. We will treat the key list as a hash table using the ideas presented earlier. Note that the initial size for the hash table has been chosen to be 11. Although this is arbitrary, it is important that the size be a prime number so that the collision resolution algorithm can be as efficient as possible. In order to do this, we will need to know even more about where the items might be when we go to look for them in the collection. If every item is where it should be, then the search can use a single comparison to discover the presence of an item. We will see, however, that this is typically not the case. In previous sections we were able to make improvements in our search algorithms by taking advantage of information about where items are stored in the collection with respect to one another. For example, by knowing that a list was ordered, we could search in logarithmic time using a binary search. In this section we will attempt to go one step further by building a data structure that can be searched in :math:`O(1)` time. This concept is referred to as **hashing**. It is interesting to note that when using this hash function, anagrams will always be given the same hash value. To remedy this, we could use the position of the character as a weight. :ref:`Figure 7 <fig_stringhash2>` shows one possible way to use the positional value as a weighting factor. The modification to the ``hash`` function is left as an exercise. It looks like you are using modulo 10 arithmetic, use the table size. It looks like you may have been doing modulo 2 arithmentic.  You need to use the hash table size as the modulo value. Likewise, the ``get`` function (see :ref:`Listing 4 <lst_hashtablecodesearch>`) begins by computing the initial hash value. If the value is not in the initial slot, ``rehash`` is used to locate the next possible position. Notice that line 15 guarantees that the search will terminate by checking to make sure that we have not returned to the initial slot. If that happens, we have exhausted all possible slots and the item must not be present. Next we will access and modify some items in the hash table. Note that the value for the key 20 is being replaced. Now when we want to search for an item, we simply use the hash function to compute the slot name for the item and then check the hash table to see if it is present. This searching operation is :math:`O(1)`, since a constant amount of time is required to compute the hash value and then index the hash table at that location. If everything is where it should be, we have found a constant time search algorithm. Once the hash values have been computed, we can insert each item into the hash table at the designated position as shown in :ref:`Figure 5 <fig_hashtable2>`. Note that 6 of the 11 slots are now occupied. This is referred to as the **load factor**, and is commonly denoted by :math:`\lambda = \frac {numberofitems}{tablesize}`. For this example, :math:`\lambda = \frac {6}{11}`. Once we have built a hash table using open addressing and linear probing, it is essential that we utilize the same methods to search for items. Assume we want to look up the item 93. When we compute the hash value, we get 5. Looking in slot 5 reveals 93, and we can return ``True``. What if we are looking for 20? Now the hash value is 9, and slot 9 is currently holding 31. We cannot simply return ``False`` since we know that there could have been collisions. We are now forced to do a sequential search, starting at position 10, looking until either we find the item 20 or we find an empty slot. One method for resolving collisions looks into the hash table and tries to find another open slot to hold the item that caused the collision. A simple way to do this is to start at the original hash value position and then move in a sequential manner through the slots until we encounter the first slot that is empty. Note that we may need to go back to the first slot (circularly) to cover the entire hash table. This collision resolution process is referred to as **open addressing** in that it tries to find the next open slot or address in the hash table. By systematically visiting each slot one at a time, we are performing an open addressing technique called **linear probing**. One of the great benefits of a dictionary is the fact that given a key, we can look up the associated data value very quickly. In order to provide this fast look up capability, we need an implementation that supports an efficient search. We could use a list with sequential or binary search but it would be even better to use a hash table as described above since looking up an item in a hash table can approach :math:`O(1)` performance. One of the most useful Python collections is the dictionary. Recall that a dictionary is an associative data type where you can store key–data pairs. The key is used to look up the associated data value. We often refer to this idea as a **map**. One way to always have a perfect hash function is to increase the size of the hash table so that each possible value in the item range can be accommodated. This guarantees that each item will have a unique slot. Although this is practical for small numbers of items, it is not feasible when the number of possible items is large. For example, if the items were nine-digit Social Security numbers, this method would require almost one billion slots. If we only want to store data for a class of 25 students, we will be wasting an enormous amount of memory. One way to deal with clustering is to extend the linear probing technique so that instead of looking sequentially for the next open slot, we skip slots, thereby more evenly distributing the items that have caused collisions. This will potentially reduce the clustering that occurs. :ref:`Figure 10 <fig_linearprobing2>` shows the items when collision resolution is done with a “plus 3” probe. This means that once a collision occurs, we will look at every third slot until we find one that is empty. Our goal is to create a hash function that minimizes the number of collisions, is easy to compute, and evenly distributes the items in the hash table. There are a number of common ways to extend the simple remainder method. We will consider a few of them here. Q-11: In a hash table of size 13 which index positions would the following two keys map to?  27,  130 Q-12: Suppose you are given the following set of keys to insert into a hash table that holds exactly 11 values:  113 , 117 , 97 , 100 , 114 , 108 , 116 , 105 , 99 Which of the following best demonstrates the contents of the has table after all the keys have been inserted using linear probing? Self Check The **folding method** for constructing hash functions begins by dividing the item into equal-size pieces (the last piece may not be of equal size). These pieces are then added together to give the resulting hash value. For example, if our item was the phone number 436-555-4601, we would take the digits and divide them into groups of 2 (43,65,55,46,01). After the addition, :math:`43+65+55+46+01`, we get 210. If we assume our hash table has 11 slots, then we need to perform the extra step of dividing by 11 and keeping the remainder. In this case :math:`210\ \%\ 11` is 1, so the phone number 436-555-4601 hashes to slot 1. Some folding methods go one step further and reverse every other piece before the addition. For the above example, we get :math:`43+56+55+64+01 = 219` which gives :math:`219\ \%\ 11 = 10`. The complete hash table example can be found in ActiveCode 1. The final methods of the ``HashTable`` class provide additional dictionary functionality. We overload the __getitem__ and __setitem__ methods to allow access using``[]``. This means that once a ``HashTable`` has been created, the familiar index operator will be available. We leave the remaining methods as exercises. The following session shows the ``HashTable`` class in action. First we will create a hash table and store some items with integer keys and string data values. The general name for this process of looking for another slot after a collision is **rehashing**. With simple linear probing, the rehash function is :math:`newhashvalue = rehash(oldhashvalue)` where :math:`rehash(pos) = (pos + 1) \% sizeoftable`. The “plus 3” rehash can be defined as :math:`rehash(pos) = (pos+3) \% sizeoftable`. In general, :math:`rehash(pos) = (pos + skip) \% sizeoftable`. It is important to note that the size of the “skip” must be such that all the slots in the table will eventually be visited. Otherwise, part of the table will be unused. To ensure this, it is often suggested that the table size be a prime number. This is the reason we have been using 11 in our examples. The map abstract data type is defined as follows. The structure is an unordered collection of associations between a key and a data value. The keys in a map are all unique so that there is a one-to-one relationship between a key and a value. The operations are given below. The mapping between an item and the slot where that item belongs in the hash table is called the **hash function**. The hash function will take any item in the collection and return an integer in the range of slot names, between 0 and *m*-1. Assume that we have the set of integer items 54, 26, 93, 17, 77, and 31. Our first hash function, sometimes referred to as the “remainder method,” simply takes an item and divides it by the table size, returning the remainder as its hash value (:math:`h(item)=item \% 11`). :ref:`Table 4 <tbl_hashvalues1>` gives all of the hash values for our example items. Note that this remainder method (modulo arithmetic) will typically be present in some form in all hash functions, since the result must be in the range of slot names. The most important piece of information we need to analyze the use of a hash table is the load factor, :math:`\lambda`. Conceptually, if :math:`\lambda` is small, then there is a lower chance of collisions, meaning that items are more likely to be in the slots where they belong. If :math:`\lambda` is large, meaning that the table is filling up, then there are more and more collisions. This means that collision resolution is more difficult, requiring more comparisons to find an empty slot. With chaining, increased collisions means an increased number of items on each chain. Use the modulo operator Using modulo 11 arithmetic and linear probing gives these values We can also create hash functions for character-based items such as strings. The word “cat” can be thought of as a sequence of ordinal values. We can then take these three ordinal values, add them up, and use the remainder method to get a hash value (see :ref:`Figure 6 <fig_stringhash>`). :ref:`Listing 1 <lst_hashfunction1>` shows a function called ``hash`` that takes a string and a table size and returns the hash value in the range from 0 to ``tablesize``-1. We now return to the problem of collisions. When two items hash to the same slot, we must have a systematic method for placing the second item in the hash table. This process is called **collision resolution**. As we stated earlier, if the hash function is perfect, collisions will never occur. However, since this is often not possible, collision resolution becomes a very important part of hashing. We stated earlier that in the best case hashing would provide a :math:`O(1)`, constant time search technique. However, due to collisions, the number of comparisons is typically not so simple. Even though a complete analysis of hashing is beyond the scope of this text, we can state some well-known results that approximate the number of comparisons necessary to search for an item. When we want to search for an item, we use the hash function to generate the slot where it should reside. Since each slot holds a collection, we use a searching technique to decide whether the item is present. The advantage is that on the average there are likely to be many fewer items in each slot, so the search is perhaps more efficient. We will look at the analysis for hashing at the end of this section. You can probably already see that this technique is going to work only if each item maps to a unique location in the hash table. For example, if the item 44 had been the next item in our collection, it would have a hash value of 0 (:math:`44 \% 11 == 0`). Since 77 also had a hash value of 0, we would have a problem. According to the hash function, two or more items would need to be in the same slot. This is referred to as a **collision** (it may also be called a “clash”). Clearly, collisions create a problem for the hashing technique. We will discuss them in detail later. You may be able to think of a number of additional ways to compute hash values for items in a collection. The important thing to remember is that the hash function has to be efficient so that it does not become the dominant part of the storage and search process. If the hash function is too complex, then it becomes more work to compute the slot name than it would be to simply do a basic sequential or binary search as described earlier. This would quickly defeat the purpose of hashing. ``Map()`` Create a new, empty map. It returns an empty map collection. ``del`` Delete the key-value pair from the map using a statement of the form ``del map[key]``. ``get(key)`` Given a key, return the value stored in the map or ``None`` otherwise. ``hashfunction`` implements the simple remainder method. The collision resolution technique is linear probing with a “plus 1” rehash function. The ``put`` function (see :ref:`Listing 3 <lst_hashtablecodestore>`) assumes that there will eventually be an empty slot unless the key is already present in the ``self.slots``. It computes the original hash value and if that slot is not empty, iterates the ``rehash`` function until an empty slot occurs. If a nonempty slot already contains the key, the old data value is replaced with the new data value.  Dealing with the situation where there are no empty slots left is an exercise. ``in`` Return ``True`` for a statement of the form ``key in map``, if the given key is in the map, ``False`` otherwise. ``len()`` Return the number of key-value pairs stored in the map. ``put(key,val)`` Add a new key-value pair to the map. If the key is already in the map then replace the old value with the new value. class HashTable:
    def __init__(self):
        self.size = 11
        self.slots = [None] * self.size
        self.data = [None] * self.size class HashTable:
    def __init__(self):
        self.size = 11
        self.slots = [None] * self.size
        self.data = [None] * self.size

    def put(self,key,data):
      hashvalue = self.hashfunction(key,len(self.slots))

      if self.slots[hashvalue] == None:
        self.slots[hashvalue] = key
        self.data[hashvalue] = data
      else:
        if self.slots[hashvalue] == key:
          self.data[hashvalue] = data  #replace
        else:
          nextslot = self.rehash(hashvalue,len(self.slots))
          while self.slots[nextslot] != None and \
                          self.slots[nextslot] != key:
            nextslot = self.rehash(nextslot,len(self.slots))

          if self.slots[nextslot] == None:
            self.slots[nextslot]=key
            self.data[nextslot]=data
          else:
            self.data[nextslot] = data #replace

    def hashfunction(self,key,size):
         return key%size

    def rehash(self,oldhash,size):
        return (oldhash+1)%size

    def get(self,key):
      startslot = self.hashfunction(key,len(self.slots))

      data = None
      stop = False
      found = False
      position = startslot
      while self.slots[position] != None and  \
                           not found and not stop:
         if self.slots[position] == key:
           found = True
           data = self.data[position]
         else:
           position=self.rehash(position,len(self.slots))
           if position == startslot:
               stop = True
      return data

    def __getitem__(self,key):
        return self.get(key)

    def __setitem__(self,key,data):
        self.put(key,data)

H=HashTable()
H[54]="cat"
H[26]="dog"
H[93]="lion"
H[17]="tiger"
H[77]="bird"
H[31]="cow"
H[44]="goat"
H[55]="pig"
H[20]="chicken"
print(H.slots)
print(H.data)

print(H[20])

print(H[17])
H[20]='duck'
print(H[20])
print(H[99]) data-caption='Complete Hash Table Example' def get(self,key):
  startslot = self.hashfunction(key,len(self.slots))

  data = None
  stop = False
  found = False
  position = startslot
  while self.slots[position] != None and  \
                       not found and not stop:
     if self.slots[position] == key:
       found = True
       data = self.data[position]
     else:
       position=self.rehash(position,len(self.slots))
       if position == startslot:
           stop = True
  return data

def __getitem__(self,key):
    return self.get(key)

def __setitem__(self,key,data):
    self.put(key,data) def hash(astring, tablesize):
    sum = 0
    for pos in range(len(astring)):
        sum = sum + ord(astring[pos])

    return sum%tablesize def put(self,key,data):
  hashvalue = self.hashfunction(key,len(self.slots))

  if self.slots[hashvalue] == None:
    self.slots[hashvalue] = key
    self.data[hashvalue] = data
  else:
    if self.slots[hashvalue] == key:
      self.data[hashvalue] = data  #replace
    else:
      nextslot = self.rehash(hashvalue,len(self.slots))
      while self.slots[nextslot] != None and \
                      self.slots[nextslot] != key:
        nextslot = self.rehash(nextslot,len(self.slots))

      if self.slots[nextslot] == None:
        self.slots[nextslot]=key
        self.data[nextslot]=data
      else:
        self.data[nextslot] = data #replace

def hashfunction(self,key,size):
     return key%size

def rehash(self,oldhash,size):
    return (oldhash+1)%size 