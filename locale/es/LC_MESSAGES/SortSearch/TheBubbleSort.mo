��    +      t              �     �     �  5   �  ,     &   I     p     t     v     x  	   z     �     �     �  �  �  �  A  �   �  $  m	  .  �  (   �  )   �      �   -  �      
   �    �       
    l      7   �  p   �    6  	   O  9   Y  #   �  #   �  #   �     �  $     5  C  �  y  3   3  {   g  w  �     [     k  5   t  ,   �  &   �     �                 	                  *  �  6  �  �   �   u$  $  �$  .   (  (   O*  )   x*    �*  �   �+  �   �,  
   q-    |-     �.  
  �.  l   �/  7   0  p   S0    �0  	   �3  9   �3  #   !4  #   E4  #   i4     �4  $   �4  5  �4  �  6  3   �7  {   �7   **Comparisons** **Pass** **Table 1: Comparisons for Each Pass of Bubble Sort** .. image:: SortSearch/Figures/bubblepass.png .. image:: SortSearch/Figures/swap.png ... 1 2 3 :math:`1` :math:`n-1` :math:`n-2` :math:`n-3` :ref:`Figure 1 <fig_bubblepass>` shows the first pass of a bubble sort. The shaded items are being compared to see if they are out of order. If there are *n* items in the list, then there are :math:`n-1` pairs of items that need to be compared on the first pass. It is important to note that once the largest value in the list is part of a pair, it will continually be moved along until the pass is complete. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="bubble_anim">
<canvas id="bubble_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="bubble_anim_anim = bubble_anim_init('bubble_anim')">Initialize</button>
<button onclick="bubble_anim_anim.run('bubble_anim_anim')">Run</button>
<button onclick="bubble_anim_anim.stop()">Stop</button> </br>
<button onclick="bubble_anim_anim.begin()">Beginning</button>
<button onclick="bubble_anim_anim.forward()">Step Forward</button>
<button onclick="bubble_anim_anim.backward()">Step Backward</button>
<button onclick="bubble_anim_anim.end()">End</button>

<script type="text/javascript">
bubble_anim_init = function(divid)
{
   var a = new Animator(new BubbleSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 A bubble sort contines to swap numbers up to index position passnum.  But remember that passnum starts at the length of the list - 1. A bubble sort is often considered the most inefficient sorting method since it must exchange items before the final location is known. These “wasted” exchange operations are very costly. However, because the bubble sort makes passes through the entire unsorted portion of the list, it has the capability to do something most sorting algorithms cannot. In particular, if during a pass there are no exchanges, then we know that the list must be sorted. A bubble sort can be modified to stop early if it finds that the list has become sorted. This means that for lists that require just a few passes, a bubble sort may have an advantage in that it will recognize the sorted list and stop. :ref:`ActiveCode 2 <lst_shortbubble>` shows this modification, which is often referred to as the **short bubble**. At the start of the second pass, the largest value is now in place. There are :math:`n-1` items left to sort, meaning that there will be :math:`n-2` pairs. Since each pass places the next largest value in place, the total number of passes necessary will be :math:`n-1`. After completing the :math:`n-1` passes, the smallest item must be in the correct position with no further processing required. :ref:`ActiveCode 1 <lst_bubble>` shows the complete ``bubbleSort`` function. It takes the list as a parameter, and modifies it by exchanging items as necessary. Figure 1: ``bubbleSort``: The First Pass Figure 2: Exchanging Two Values in Python In Python, it is possible to perform simultaneous assignment. The statement ``a,b=b,a`` will result in two assignment statements being done at the same time (see :ref:`Figure 2 <fig_pythonswap>`). Using simultaneous assignment, the exchange operation can be done in one statement. Lines 5-7 in :ref:`ActiveCode 1 <lst_bubble>` perform the exchange of the :math:`i` and :math:`(i+1)th` items using the three–step procedure described earlier. Note that we could also have used the simultaneous assignment to swap the items. Q-15: Suppose you have the following list of numbers to sort: <br> [19, 1, 9, 7, 3, 10, 13, 15, 8, 12] which list represents the partially sorted list after three complete passes of bubble sort? Self Check The **bubble sort** makes multiple passes through a list. It compares adjacent items and exchanges those that are out of order. Each pass through the list places the next largest value in its proper place. In essence, each item “bubbles” up to the location where it belongs. The Bubble Sort The exchange operation, sometimes called a “swap,” is slightly different in Python than in most other programming languages. Typically, swapping two elements in a list requires a temporary storage location (an additional memory location). A code fragment such as The following activecode example shows the complete ``bubbleSort`` function working on the list shown above. The following animation shows ``bubbleSort`` in action. This answer represents three swaps.  A pass means that you continue swapping all the way to the end of the list. To analyze the bubble sort, we should note that regardless of how the items are arranged in the initial list, :math:`n-1` passes will be made to sort a list of size *n*. :ref:`Table 1 <tbl_bubbleanalysis>` shows the number of comparisons for each pass. The total number of comparisons is the sum of the first :math:`n-1` integers. Recall that the sum of the first *n* integers is :math:`\frac{1}{2}n^{2} + \frac{1}{2}n`. The sum of the first :math:`n-1` integers is :math:`\frac{1}{2}n^{2} + \frac{1}{2}n - n`, which is :math:`\frac{1}{2}n^{2} - \frac{1}{2}n`. This is still :math:`O(n^{2})` comparisons. In the best case, if the list is already ordered, no exchanges will be made. However, in the worst case, every comparison will cause an exchange. On average, we exchange half of the time. Very Good You have been doing an insertion sort, not a bubble sort. [1, 3, 7, 9, 10, 8, 12, 13, 15, 19] [1, 7, 3, 9, 10, 13, 8, 12, 15, 19] [1, 9, 19, 7, 3, 10, 13, 15, 8, 12] data-caption='The Bubble Sort' data-caption='The Short Bubble Sort' def bubbleSort(alist):
    for passnum in range(len(alist)-1,0,-1):
        for i in range(passnum):
            if alist[i]>alist[i+1]:
                temp = alist[i]
                alist[i] = alist[i+1]
                alist[i+1] = temp

alist = [54,26,93,17,77,31,44,55,20]
bubbleSort(alist)
print(alist) def shortBubbleSort(alist):
    exchanges = True
    passnum = len(alist)-1
    while passnum > 0 and exchanges:
       exchanges = False
       for i in range(passnum):
           if alist[i]>alist[i+1]:
               exchanges = True
               temp = alist[i]
               alist[i] = alist[i+1]
               alist[i+1] = temp
       passnum = passnum-1

alist=[20,30,40,90,50,60,70,80,100,110]
shortBubbleSort(alist)
print(alist) temp = alist[i]
alist[i] = alist[j]
alist[j] = temp will exchange the `ith` and `jth` items in the list. Without the temporary storage, one of the values would be overwritten. Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **Comparisons** **Pass** **Table 1: Comparisons for Each Pass of Bubble Sort** .. image:: SortSearch/Figures/bubblepass.png .. image:: SortSearch/Figures/swap.png ... 1 2 3 :math:`1` :math:`n-1` :math:`n-2` :math:`n-3` :ref:`Figure 1 <fig_bubblepass>` shows the first pass of a bubble sort. The shaded items are being compared to see if they are out of order. If there are *n* items in the list, then there are :math:`n-1` pairs of items that need to be compared on the first pass. It is important to note that once the largest value in the list is part of a pair, it will continually be moved along until the pass is complete. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="bubble_anim">
<canvas id="bubble_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="bubble_anim_anim = bubble_anim_init('bubble_anim')">Initialize</button>
<button onclick="bubble_anim_anim.run('bubble_anim_anim')">Run</button>
<button onclick="bubble_anim_anim.stop()">Stop</button> </br>
<button onclick="bubble_anim_anim.begin()">Beginning</button>
<button onclick="bubble_anim_anim.forward()">Step Forward</button>
<button onclick="bubble_anim_anim.backward()">Step Backward</button>
<button onclick="bubble_anim_anim.end()">End</button>

<script type="text/javascript">
bubble_anim_init = function(divid)
{
   var a = new Animator(new BubbleSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 A bubble sort contines to swap numbers up to index position passnum.  But remember that passnum starts at the length of the list - 1. A bubble sort is often considered the most inefficient sorting method since it must exchange items before the final location is known. These “wasted” exchange operations are very costly. However, because the bubble sort makes passes through the entire unsorted portion of the list, it has the capability to do something most sorting algorithms cannot. In particular, if during a pass there are no exchanges, then we know that the list must be sorted. A bubble sort can be modified to stop early if it finds that the list has become sorted. This means that for lists that require just a few passes, a bubble sort may have an advantage in that it will recognize the sorted list and stop. :ref:`ActiveCode 2 <lst_shortbubble>` shows this modification, which is often referred to as the **short bubble**. At the start of the second pass, the largest value is now in place. There are :math:`n-1` items left to sort, meaning that there will be :math:`n-2` pairs. Since each pass places the next largest value in place, the total number of passes necessary will be :math:`n-1`. After completing the :math:`n-1` passes, the smallest item must be in the correct position with no further processing required. :ref:`ActiveCode 1 <lst_bubble>` shows the complete ``bubbleSort`` function. It takes the list as a parameter, and modifies it by exchanging items as necessary. Figure 1: ``bubbleSort``: The First Pass Figure 2: Exchanging Two Values in Python In Python, it is possible to perform simultaneous assignment. The statement ``a,b=b,a`` will result in two assignment statements being done at the same time (see :ref:`Figure 2 <fig_pythonswap>`). Using simultaneous assignment, the exchange operation can be done in one statement. Lines 5-7 in :ref:`ActiveCode 1 <lst_bubble>` perform the exchange of the :math:`i` and :math:`(i+1)th` items using the three–step procedure described earlier. Note that we could also have used the simultaneous assignment to swap the items. Q-15: Suppose you have the following list of numbers to sort: <br> [19, 1, 9, 7, 3, 10, 13, 15, 8, 12] which list represents the partially sorted list after three complete passes of bubble sort? Self Check The **bubble sort** makes multiple passes through a list. It compares adjacent items and exchanges those that are out of order. Each pass through the list places the next largest value in its proper place. In essence, each item “bubbles” up to the location where it belongs. The Bubble Sort The exchange operation, sometimes called a “swap,” is slightly different in Python than in most other programming languages. Typically, swapping two elements in a list requires a temporary storage location (an additional memory location). A code fragment such as The following activecode example shows the complete ``bubbleSort`` function working on the list shown above. The following animation shows ``bubbleSort`` in action. This answer represents three swaps.  A pass means that you continue swapping all the way to the end of the list. To analyze the bubble sort, we should note that regardless of how the items are arranged in the initial list, :math:`n-1` passes will be made to sort a list of size *n*. :ref:`Table 1 <tbl_bubbleanalysis>` shows the number of comparisons for each pass. The total number of comparisons is the sum of the first :math:`n-1` integers. Recall that the sum of the first *n* integers is :math:`\frac{1}{2}n^{2} + \frac{1}{2}n`. The sum of the first :math:`n-1` integers is :math:`\frac{1}{2}n^{2} + \frac{1}{2}n - n`, which is :math:`\frac{1}{2}n^{2} - \frac{1}{2}n`. This is still :math:`O(n^{2})` comparisons. In the best case, if the list is already ordered, no exchanges will be made. However, in the worst case, every comparison will cause an exchange. On average, we exchange half of the time. Very Good You have been doing an insertion sort, not a bubble sort. [1, 3, 7, 9, 10, 8, 12, 13, 15, 19] [1, 7, 3, 9, 10, 13, 8, 12, 15, 19] [1, 9, 19, 7, 3, 10, 13, 15, 8, 12] data-caption='The Bubble Sort' data-caption='The Short Bubble Sort' def bubbleSort(alist):
    for passnum in range(len(alist)-1,0,-1):
        for i in range(passnum):
            if alist[i]>alist[i+1]:
                temp = alist[i]
                alist[i] = alist[i+1]
                alist[i+1] = temp

alist = [54,26,93,17,77,31,44,55,20]
bubbleSort(alist)
print(alist) def shortBubbleSort(alist):
    exchanges = True
    passnum = len(alist)-1
    while passnum > 0 and exchanges:
       exchanges = False
       for i in range(passnum):
           if alist[i]>alist[i+1]:
               exchanges = True
               temp = alist[i]
               alist[i] = alist[i+1]
               alist[i+1] = temp
       passnum = passnum-1

alist=[20,30,40,90,50,60,70,80,100,110]
shortBubbleSort(alist)
print(alist) temp = alist[i]
alist[i] = alist[j]
alist[j] = temp will exchange the `ith` and `jth` items in the list. Without the temporary storage, one of the values would be overwritten. 