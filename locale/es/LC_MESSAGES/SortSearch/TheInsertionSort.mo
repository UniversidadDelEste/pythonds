��          �               �  /   �  /   �  �    �  �     �  3   �  X     :   o    �  C   �	  
   �	  �  
     �     �    �     �  %   �  �    %   �  �   �  %   V  %   |  %   �     �  f  �  w  M  /   �  /   �  �  %  �  �     �  3   �  X     :   w    �  C   �  
     �       �     �    �      �!  %   �!  �  "  %   �#  �   �#  %   ^$  %   �$  %   �$     �$  f  �$   .. image:: SortSearch/Figures/insertionpass.png .. image:: SortSearch/Figures/insertionsort.png :ref:`Figure 5 <fig_insertionpass>` shows the fifth pass in detail. At this point in the algorithm, a sorted sublist of five items consisting of 17, 26, 54, 77, and 93 exists. We want to insert 31 back into the already sorted items. The first comparison against 93 causes 93 to be shifted to the right. 77 and 54 are also shifted. When the item 26 is encountered, the shifting process stops and 31 is placed in the open position. Now we have a sorted sublist of six items. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="insertion_anim">
<canvas id="insertion_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="insertion_anim_anim = insertion_anim_init('insertion_anim')">Initialize</button>
<button onclick="insertion_anim_anim.run('insertion_anim_anim')">Run</button>
<button onclick="insertion_anim_anim.stop()">Stop</button> </br>
<button onclick="insertion_anim_anim.begin()">Beginning</button>
<button onclick="insertion_anim_anim.forward()">Step Forward</button>
<button onclick="insertion_anim_anim.backward()">Step Backward</button>
<button onclick="insertion_anim_anim.end()">End</button>

<script type="text/javascript">
insertion_anim_init = function(divid)
{
   var a = new Animator(new InsertionSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 Figure 4: ``insertionSort`` Figure 5: ``insertionSort``: Fifth Pass of the Sort Insertion sort works at the start of the list.  Each pass produces a longer sorted list. Insertion sort works on the front of the list not the end. One note about shifting versus exchanging is also important. In general, a shift operation requires approximately a third of the processing work of an exchange since only one assignment is performed. In benchmark studies, insertion sort will show very good performance. Q-16:  Suppose you have the following list of numbers to sort: <br> Self Check The **insertion sort**, although still :math:`O(n^{2})`, works in a slightly different way. It always maintains a sorted sublist in the lower positions of the list. Each new item is then “inserted” back into the previous sublist such that the sorted sublist is one item larger. :ref:`Figure 4 <fig_insertionsort>` shows the insertion sorting process. The shaded items represent the ordered sublists as the algorithm makes each pass. The Insertion Sort The implementation of ``insertionSort`` (:ref:`ActiveCode 1 <lst_insertion>`) shows that there are again :math:`n-1` passes to sort *n* items. The iteration starts at position 1 and moves through position :math:`n-1`, as these are the items that need to be inserted back into the sorted sublists. Line 8 performs the shift operation that moves a value up one position in the list, making room behind it for the insertion. Remember that this is not a complete exchange as was performed in the previous algorithms. The maximum number of comparisons for an insertion sort is the sum of the first :math:`n-1` integers. Again, this is :math:`O(n^{2})`. However, in the best case, only one comparison needs to be done on each pass. This would be the case for an already sorted list. This is a bubble sort. This is the result of selection sort. We begin by assuming that a list with one item (position :math:`0`) is already sorted. On each pass, one for each item 1 through :math:`n-1`, the current item is checked against those in the already sorted sublist. As we look back into the already sorted sublist, we shift those items that are greater to the right. When we reach a smaller item or the end of the sublist, the current item can be inserted. [15, 5, 4, 10, 12, 8, 14, 18, 19, 20] [15, 5, 4, 18, 12, 19, 14, 10, 8, 20] which list represents the partially sorted list after three complete passes of insertion sort? [15, 5, 4, 18, 12, 19, 14, 8, 10, 20] [4, 5, 12, 15, 14, 10, 8, 18, 19, 20] [4, 5, 15, 18, 12, 19, 14, 10, 8, 20] data-caption='Insertion Sort' def insertionSort(alist):
   for index in range(1,len(alist)):

     currentvalue = alist[index]
     position = index

     while position>0 and alist[position-1]>currentvalue:
         alist[position]=alist[position-1]
         position = position-1

     alist[position]=currentvalue

alist = [54,26,93,17,77,31,44,55,20]
insertionSort(alist)
print(alist) Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 .. image:: SortSearch/Figures/insertionpass.png .. image:: SortSearch/Figures/insertionsort.png :ref:`Figure 5 <fig_insertionpass>` shows the fifth pass in detail. At this point in the algorithm, a sorted sublist of five items consisting of 17, 26, 54, 77, and 93 exists. We want to insert 31 back into the already sorted items. The first comparison against 93 causes 93 to be shifted to the right. 77 and 54 are also shifted. When the item 26 is encountered, the shifting process stops and 31 is placed in the open position. Now we have a sorted sublist of six items. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="insertion_anim">
<canvas id="insertion_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="insertion_anim_anim = insertion_anim_init('insertion_anim')">Initialize</button>
<button onclick="insertion_anim_anim.run('insertion_anim_anim')">Run</button>
<button onclick="insertion_anim_anim.stop()">Stop</button> </br>
<button onclick="insertion_anim_anim.begin()">Beginning</button>
<button onclick="insertion_anim_anim.forward()">Step Forward</button>
<button onclick="insertion_anim_anim.backward()">Step Backward</button>
<button onclick="insertion_anim_anim.end()">End</button>

<script type="text/javascript">
insertion_anim_init = function(divid)
{
   var a = new Animator(new InsertionSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 Figure 4: ``insertionSort`` Figure 5: ``insertionSort``: Fifth Pass of the Sort Insertion sort works at the start of the list.  Each pass produces a longer sorted list. Insertion sort works on the front of the list not the end. One note about shifting versus exchanging is also important. In general, a shift operation requires approximately a third of the processing work of an exchange since only one assignment is performed. In benchmark studies, insertion sort will show very good performance. Q-16:  Suppose you have the following list of numbers to sort: <br> Self Check The **insertion sort**, although still :math:`O(n^{2})`, works in a slightly different way. It always maintains a sorted sublist in the lower positions of the list. Each new item is then “inserted” back into the previous sublist such that the sorted sublist is one item larger. :ref:`Figure 4 <fig_insertionsort>` shows the insertion sorting process. The shaded items represent the ordered sublists as the algorithm makes each pass. The Insertion Sort The implementation of ``insertionSort`` (:ref:`ActiveCode 1 <lst_insertion>`) shows that there are again :math:`n-1` passes to sort *n* items. The iteration starts at position 1 and moves through position :math:`n-1`, as these are the items that need to be inserted back into the sorted sublists. Line 8 performs the shift operation that moves a value up one position in the list, making room behind it for the insertion. Remember that this is not a complete exchange as was performed in the previous algorithms. The maximum number of comparisons for an insertion sort is the sum of the first :math:`n-1` integers. Again, this is :math:`O(n^{2})`. However, in the best case, only one comparison needs to be done on each pass. This would be the case for an already sorted list. This is a bubble sort. This is the result of selection sort. We begin by assuming that a list with one item (position :math:`0`) is already sorted. On each pass, one for each item 1 through :math:`n-1`, the current item is checked against those in the already sorted sublist. As we look back into the already sorted sublist, we shift those items that are greater to the right. When we reach a smaller item or the end of the sublist, the current item can be inserted. [15, 5, 4, 10, 12, 8, 14, 18, 19, 20] [15, 5, 4, 18, 12, 19, 14, 10, 8, 20] which list represents the partially sorted list after three complete passes of insertion sort? [15, 5, 4, 18, 12, 19, 14, 8, 10, 20] [4, 5, 12, 15, 14, 10, 8, 18, 19, 20] [4, 5, 15, 18, 12, 19, 14, 10, 8, 20] data-caption='Insertion Sort' def insertionSort(alist):
   for index in range(1,len(alist)):

     currentvalue = alist[index]
     position = index

     while position>0 and alist[position-1]>currentvalue:
         alist[position]=alist[position-1]
         position = position-1

     alist[position]=currentvalue

alist = [54,26,93,17,77,31,44,55,20]
insertionSort(alist)
print(alist) 