��    1      �              ,  ,   -  ,   Z  ,   �     �     �     �     �  �  �  �  `  �  �  +  �
  1   �  )     J   5  	   �     �     �  Y   �  
     s     �  �  �   ]  �     d   �  
     t     B   �  
   �  
   �     �           �  )  w   �  i   6  �   �  �  L  �  �  �  �  ;  C  &     &   �     �     �  M   �     E   �  _   �   8$  w  �$  ,   8&  ,   e&  ,   �&     �&     �&     �&     �&  �  �&  �  k(  �  ,  +  �-  1   �/  )   0  J   @0  	   �0     �0     �0  Y   �0  
   1  s   &1  �  �1  �   h3  �   )4  d   �4  
   5  t   *5  B   �5  
   �5  
   �5     �5    6     %7  �  47  w   �8  i   A9  �   �9  �  W:  �  �;  �  �=  ;  N?  &   �B  &   �B     �B     �B  M   C     PC  �  jC  �   CG   .. image:: SortSearch/Figures/firstsplit.png .. image:: SortSearch/Figures/partitionA.png .. image:: SortSearch/Figures/partitionB.png 1 16 19 9 :ref:`Figure 12 <fig_splitvalue>` shows that 54 will serve as our first pivot value. Since we have looked at this example a few times already, we know that 54 will eventually end up in the position currently holding 31. The **partition** process will happen next. It will find the split point and at the same time move other items to the appropriate side of the list, either less than or greater than the pivot value. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="quick_anim">
<canvas id="quick_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="quick_anim_anim = quick_anim_init('quick_anim')">Initialize</button>
<button onclick="quick_anim_anim.run('quick_anim_anim')">Run</button>
<button onclick="quick_anim_anim.stop()">Stop</button> </br>
<button onclick="quick_anim_anim.begin()">Beginning</button>
<button onclick="quick_anim_anim.forward()">Step Forward</button>
<button onclick="quick_anim_anim.backward()">Step Backward</button>
<button onclick="quick_anim_anim.end()">End</button>

<script type="text/javascript">
quick_anim_init = function(divid)
{
   var a = new Animator(new QuickSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 A quick sort first selects a value, which is called the **pivot value**. Although there are many different ways to choose the pivot value, we will simply use the first item in the list. The role of the pivot value is to assist with splitting the list. The actual position where the pivot value belongs in the final sorted list, commonly called the **split point**, will be used to divide the list for subsequent calls to the quick sort. At the point where ``rightmark`` becomes less than ``leftmark``, we stop. The position of ``rightmark`` is now the split point. The pivot value can be exchanged with the contents of the split point and the pivot value is now in place (:ref:`Figure 14 <fig_partitionB>`). In addition, all the items to the left of the split point are less than the pivot value, and all the items to the right of the split point are greater than the pivot value. The list can now be divided at the split point and the quick sort can be invoked recursively on the two halves. Figure 12: The First Pivot Value for a Quick Sort Figure 13: Finding the Split Point for 54 Figure 14: Completing the Partition Process to Find the Split Point for 54 Good job. Insertion Sort Insertion sort is ``O(n^2)`` It's important to remember that quicksort works on the entire list and sorts it in place. Merge Sort Merge Sort is the only guaranteed O(n log n) even in the worst case.  The cost is that merge sort uses more memory. Partitioning begins by locating two position markers—let’s call them ``leftmark`` and ``rightmark``—at the beginning and end of the remaining items in the list (positions 1 and 8 in :ref:`Figure 13 <fig_partitionA>`). The goal of the partition process is to move items that are on the wrong side with respect to the pivot value while also converging on the split point. :ref:`Figure 13 <fig_partitionA>` shows this process as we locate the position of 54. Q-19: Given the following list of numbers [14, 17, 13, 15, 19, 10, 3, 16, 9, 12] which answer shows the contents of the list after the second partitioning according to the quicksort algorithm? Q-20: Given the following list of numbers [1, 20, 11, 5, 2, 9, 16, 14, 13, 19] what would be the first pivot value using the median of 3 method? Q-21: Which of the following sort algorithms are guaranteed to be O(n log n) even in the worst case? Quick Sort Quick sort can be O(n log n), but if the pivot points are not well chosen and the list is just so, it can be O(n^2). Remember quicksort works on the entire list and sorts it in place. Self Check Shell Sort Shell sort is about ``n^1.5`` The **quick sort** uses divide and conquer to gain the same advantages as the merge sort, while not using additional storage. As a trade-off, however, it is possible that the list may not be divided in half. When this happens, we will see that performance is diminished. The Quick Sort The ``quickSort`` function shown in :ref:`ActiveCode 1 <lst_quick>` invokes a recursive function, ``quickSortHelper``. ``quickSortHelper`` begins with the same base case as the merge sort. If the length of the list is less than or equal to one, it is already sorted. If it is greater, then it can be partitioned and recursively sorted. The ``partition`` function implements the process described earlier. The first partitioning works on the entire list, and the second partitioning works on the left partition not the right. The first partitioning works on the entire list, and the second partitioning works on the left partition. The three numbers used in selecting the pivot are 1, 9, 19.  1 is not the median, and would be a very bad choice for the pivot since it is the smallest number in the list. To analyze the ``quickSort`` function, note that for a list of length *n*, if the partition always occurs in the middle of the list, there will again be :math:`\log n` divisions. In order to find the split point, each of the *n* items needs to be checked against the pivot value. The result is :math:`n\log n`. In addition, there is no need for additional memory as in the merge sort process. Unfortunately, in the worst case, the split points may not be in the middle and can be very skewed to the left or the right, leaving a very uneven division. In this case, sorting a list of *n* items divides into sorting a list of 0 items and a list of :math:`n-1` items. Then sorting a list of :math:`n-1` divides into a list of size 0 and a list of size :math:`n-2`, and so on. The result is an :math:`O(n^{2})` sort with all of the overhead that recursion requires. We begin by incrementing ``leftmark`` until we locate a value that is greater than the pivot value. We then decrement ``rightmark`` until we find a value that is less than the pivot value. At this point we have discovered two items that are out of place with respect to the eventual split point. For our example, this occurs at 93 and 20. Now we can exchange these two items and then repeat the process again. We mentioned earlier that there are different ways to choose the pivot value. In particular, we can attempt to alleviate some of the potential for an uneven division by using a technique called **median of three**. To choose the pivot value, we will consider the first, the middle, and the last element in the list. In our example, those are 54, 77, and 20. Now pick the median value, in our case 54, and use it for the pivot value (of course, that was the pivot value we used originally). The idea is that in the case where the the first item in the list does not belong toward the middle of the list, the median of three will choose a better “middle” value. This will be particularly useful when the original list is somewhat sorted to begin with. We leave the implementation of this pivot value selection as an exercise. [9, 3, 10, 13, 12, 14, 17, 16, 15, 19] [9, 3, 10, 13, 12, 14, 19, 16, 15, 17] [9, 3, 10, 13, 12, 14] [9, 3, 10, 13, 12] although 16 would be the median of 1, 16, 19 the middle is at len(list) // 2. data-caption='Quick Sort' def quickSort(alist):
   quickSortHelper(alist,0,len(alist)-1)

def quickSortHelper(alist,first,last):
   if first<last:

       splitpoint = partition(alist,first,last)

       quickSortHelper(alist,first,splitpoint-1)
       quickSortHelper(alist,splitpoint+1,last)


def partition(alist,first,last):
   pivotvalue = alist[first]

   leftmark = first+1
   rightmark = last

   done = False
   while not done:

       while leftmark <= rightmark and alist[leftmark] <= pivotvalue:
           leftmark = leftmark + 1

       while alist[rightmark] >= pivotvalue and rightmark >= leftmark:
           rightmark = rightmark -1

       if rightmark < leftmark:
           done = True
       else:
           temp = alist[leftmark]
           alist[leftmark] = alist[rightmark]
           alist[rightmark] = temp

   temp = alist[first]
   alist[first] = alist[rightmark]
   alist[rightmark] = temp


   return rightmark

alist = [54,26,93,17,77,31,44,55,20]
quickSort(alist)
print(alist) the three numbers used in selecting the pivot are 1, 9, 19.  9 is the median.  19 would be a bad choice since it is almost the largest. Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 .. image:: SortSearch/Figures/firstsplit.png .. image:: SortSearch/Figures/partitionA.png .. image:: SortSearch/Figures/partitionB.png 1 16 19 9 :ref:`Figure 12 <fig_splitvalue>` shows that 54 will serve as our first pivot value. Since we have looked at this example a few times already, we know that 54 will eventually end up in the position currently holding 31. The **partition** process will happen next. It will find the split point and at the same time move other items to the appropriate side of the list, either less than or greater than the pivot value. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="quick_anim">
<canvas id="quick_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="quick_anim_anim = quick_anim_init('quick_anim')">Initialize</button>
<button onclick="quick_anim_anim.run('quick_anim_anim')">Run</button>
<button onclick="quick_anim_anim.stop()">Stop</button> </br>
<button onclick="quick_anim_anim.begin()">Beginning</button>
<button onclick="quick_anim_anim.forward()">Step Forward</button>
<button onclick="quick_anim_anim.backward()">Step Backward</button>
<button onclick="quick_anim_anim.end()">End</button>

<script type="text/javascript">
quick_anim_init = function(divid)
{
   var a = new Animator(new QuickSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 A quick sort first selects a value, which is called the **pivot value**. Although there are many different ways to choose the pivot value, we will simply use the first item in the list. The role of the pivot value is to assist with splitting the list. The actual position where the pivot value belongs in the final sorted list, commonly called the **split point**, will be used to divide the list for subsequent calls to the quick sort. At the point where ``rightmark`` becomes less than ``leftmark``, we stop. The position of ``rightmark`` is now the split point. The pivot value can be exchanged with the contents of the split point and the pivot value is now in place (:ref:`Figure 14 <fig_partitionB>`). In addition, all the items to the left of the split point are less than the pivot value, and all the items to the right of the split point are greater than the pivot value. The list can now be divided at the split point and the quick sort can be invoked recursively on the two halves. Figure 12: The First Pivot Value for a Quick Sort Figure 13: Finding the Split Point for 54 Figure 14: Completing the Partition Process to Find the Split Point for 54 Good job. Insertion Sort Insertion sort is ``O(n^2)`` It's important to remember that quicksort works on the entire list and sorts it in place. Merge Sort Merge Sort is the only guaranteed O(n log n) even in the worst case.  The cost is that merge sort uses more memory. Partitioning begins by locating two position markers—let’s call them ``leftmark`` and ``rightmark``—at the beginning and end of the remaining items in the list (positions 1 and 8 in :ref:`Figure 13 <fig_partitionA>`). The goal of the partition process is to move items that are on the wrong side with respect to the pivot value while also converging on the split point. :ref:`Figure 13 <fig_partitionA>` shows this process as we locate the position of 54. Q-19: Given the following list of numbers [14, 17, 13, 15, 19, 10, 3, 16, 9, 12] which answer shows the contents of the list after the second partitioning according to the quicksort algorithm? Q-20: Given the following list of numbers [1, 20, 11, 5, 2, 9, 16, 14, 13, 19] what would be the first pivot value using the median of 3 method? Q-21: Which of the following sort algorithms are guaranteed to be O(n log n) even in the worst case? Quick Sort Quick sort can be O(n log n), but if the pivot points are not well chosen and the list is just so, it can be O(n^2). Remember quicksort works on the entire list and sorts it in place. Self Check Shell Sort Shell sort is about ``n^1.5`` The **quick sort** uses divide and conquer to gain the same advantages as the merge sort, while not using additional storage. As a trade-off, however, it is possible that the list may not be divided in half. When this happens, we will see that performance is diminished. The Quick Sort The ``quickSort`` function shown in :ref:`ActiveCode 1 <lst_quick>` invokes a recursive function, ``quickSortHelper``. ``quickSortHelper`` begins with the same base case as the merge sort. If the length of the list is less than or equal to one, it is already sorted. If it is greater, then it can be partitioned and recursively sorted. The ``partition`` function implements the process described earlier. The first partitioning works on the entire list, and the second partitioning works on the left partition not the right. The first partitioning works on the entire list, and the second partitioning works on the left partition. The three numbers used in selecting the pivot are 1, 9, 19.  1 is not the median, and would be a very bad choice for the pivot since it is the smallest number in the list. To analyze the ``quickSort`` function, note that for a list of length *n*, if the partition always occurs in the middle of the list, there will again be :math:`\log n` divisions. In order to find the split point, each of the *n* items needs to be checked against the pivot value. The result is :math:`n\log n`. In addition, there is no need for additional memory as in the merge sort process. Unfortunately, in the worst case, the split points may not be in the middle and can be very skewed to the left or the right, leaving a very uneven division. In this case, sorting a list of *n* items divides into sorting a list of 0 items and a list of :math:`n-1` items. Then sorting a list of :math:`n-1` divides into a list of size 0 and a list of size :math:`n-2`, and so on. The result is an :math:`O(n^{2})` sort with all of the overhead that recursion requires. We begin by incrementing ``leftmark`` until we locate a value that is greater than the pivot value. We then decrement ``rightmark`` until we find a value that is less than the pivot value. At this point we have discovered two items that are out of place with respect to the eventual split point. For our example, this occurs at 93 and 20. Now we can exchange these two items and then repeat the process again. We mentioned earlier that there are different ways to choose the pivot value. In particular, we can attempt to alleviate some of the potential for an uneven division by using a technique called **median of three**. To choose the pivot value, we will consider the first, the middle, and the last element in the list. In our example, those are 54, 77, and 20. Now pick the median value, in our case 54, and use it for the pivot value (of course, that was the pivot value we used originally). The idea is that in the case where the the first item in the list does not belong toward the middle of the list, the median of three will choose a better “middle” value. This will be particularly useful when the original list is somewhat sorted to begin with. We leave the implementation of this pivot value selection as an exercise. [9, 3, 10, 13, 12, 14, 17, 16, 15, 19] [9, 3, 10, 13, 12, 14, 19, 16, 15, 17] [9, 3, 10, 13, 12, 14] [9, 3, 10, 13, 12] although 16 would be the median of 1, 16, 19 the middle is at len(list) // 2. data-caption='Quick Sort' def quickSort(alist):
   quickSortHelper(alist,0,len(alist)-1)

def quickSortHelper(alist,first,last):
   if first<last:

       splitpoint = partition(alist,first,last)

       quickSortHelper(alist,first,splitpoint-1)
       quickSortHelper(alist,splitpoint+1,last)


def partition(alist,first,last):
   pivotvalue = alist[first]

   leftmark = first+1
   rightmark = last

   done = False
   while not done:

       while leftmark <= rightmark and alist[leftmark] <= pivotvalue:
           leftmark = leftmark + 1

       while alist[rightmark] >= pivotvalue and rightmark >= leftmark:
           rightmark = rightmark -1

       if rightmark < leftmark:
           done = True
       else:
           temp = alist[leftmark]
           alist[leftmark] = alist[rightmark]
           alist[rightmark] = temp

   temp = alist[first]
   alist[first] = alist[rightmark]
   alist[rightmark] = temp


   return rightmark

alist = [54,26,93,17,77,31,44,55,20]
quickSort(alist)
print(alist) the three numbers used in selecting the pivot are 1, 9, 19.  9 is the median.  19 would be a bad choice since it is almost the largest. 