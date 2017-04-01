��          �               \  2   ]  =  �  �  �     �  �   �  ?   |  ]   �  
     #  %     I
  "   \
  �   
  b    $   w  $   �  $   �  $   �       �  )  w  �  2   ?  =  r  �  �     �  �   �  ?   ^  ]   �  
   �  #       +  "   >  �   a  b  �  $   Y  $   ~  $   �  $   �     �  �     .. image:: SortSearch/Figures/selectionsortnew.png :ref:`Figure 3 <fig_selectionsort>` shows the entire sorting process. On each pass, the largest remaining item is selected and then placed in its proper location. The first pass places 93, the second pass places 77, the third places 55, and so on. The function is shown in :ref:`ActiveCode 1 <lst_selectionsortcode>`. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="selection_anim">
<canvas id="selection_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="selection_anim_anim = selection_anim_init('selection_anim')">Initialize</button>
<button onclick="selection_anim_anim.run('selection_anim_anim')">Run</button>
<button onclick="selection_anim_anim.stop()">Stop</button> </br>
<button onclick="selection_anim_anim.begin()">Beginning</button>
<button onclick="selection_anim_anim.forward()">Step Forward</button>
<button onclick="selection_anim_anim.backward()">Step Backward</button>
<button onclick="selection_anim_anim.end()">End</button>

<script type="text/javascript">
selection_anim_init = function(divid)
{
   var a = new Animator(new SelectionSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 Figure 3: ``selectionSort`` Q-22: Suppose you have the following list of numbers to sort: [11, 7, 12, 14, 19, 1, 6, 18, 8, 20] which list represents the partially sorted list after three complete passes of selection sort? Selection sort improves upon bubble sort by making fewer swaps. Selection sort is similar to bubble sort (which you appear to have done) but uses fewer swaps Self Check The **selection sort** improves on the bubble sort by making only one exchange for every pass through the list. In order to do this, a selection sort looks for the largest value as it makes a pass and, after completing the pass, places it in the proper location. As with a bubble sort, after the first pass, the largest item is in the correct place. After the second pass, the next largest is in place. This process continues and requires :math:`n-1` passes to sort *n* items, since the final item must be in place after the :math:`(n-1)` st pass. The Selection Sort This looks like an insertion sort. This one looks similar to the correct answer but instead of swapping the numbers have been shifted to the left to make room for the correct numbers. You may see that the selection sort makes the same number of comparisons as the bubble sort and is therefore also :math:`O(n^{2})`. However, due to the reduction in the number of exchanges, the selection sort typically executes faster in benchmark studies. In fact, for our list, the bubble sort makes 20 exchanges, while the selection sort makes only 8. [11, 7, 12, 14, 1, 6, 8, 18, 19, 20] [11, 7, 12, 14, 8, 1, 6, 18, 19, 20] [7, 11, 12, 1, 6, 14, 8, 18, 19, 20] [7, 11, 12, 14, 19, 1, 6, 18, 8, 20] data-caption='Selection Sort' def selectionSort(alist):
   for fillslot in range(len(alist)-1,0,-1):
       positionOfMax=0
       for location in range(1,fillslot+1):
           if alist[location]>alist[positionOfMax]:
               positionOfMax = location

       temp = alist[fillslot]
       alist[fillslot] = alist[positionOfMax]
       alist[positionOfMax] = temp

alist = [54,26,93,17,77,31,44,55,20]
selectionSort(alist)
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
 .. image:: SortSearch/Figures/selectionsortnew.png :ref:`Figure 3 <fig_selectionsort>` shows the entire sorting process. On each pass, the largest remaining item is selected and then placed in its proper location. The first pass places 93, the second pass places 77, the third places 55, and so on. The function is shown in :ref:`ActiveCode 1 <lst_selectionsortcode>`. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="selection_anim">
<canvas id="selection_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="selection_anim_anim = selection_anim_init('selection_anim')">Initialize</button>
<button onclick="selection_anim_anim.run('selection_anim_anim')">Run</button>
<button onclick="selection_anim_anim.stop()">Stop</button> </br>
<button onclick="selection_anim_anim.begin()">Beginning</button>
<button onclick="selection_anim_anim.forward()">Step Forward</button>
<button onclick="selection_anim_anim.backward()">Step Backward</button>
<button onclick="selection_anim_anim.end()">End</button>

<script type="text/javascript">
selection_anim_init = function(divid)
{
   var a = new Animator(new SelectionSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 Figure 3: ``selectionSort`` Q-22: Suppose you have the following list of numbers to sort: [11, 7, 12, 14, 19, 1, 6, 18, 8, 20] which list represents the partially sorted list after three complete passes of selection sort? Selection sort improves upon bubble sort by making fewer swaps. Selection sort is similar to bubble sort (which you appear to have done) but uses fewer swaps Self Check The **selection sort** improves on the bubble sort by making only one exchange for every pass through the list. In order to do this, a selection sort looks for the largest value as it makes a pass and, after completing the pass, places it in the proper location. As with a bubble sort, after the first pass, the largest item is in the correct place. After the second pass, the next largest is in place. This process continues and requires :math:`n-1` passes to sort *n* items, since the final item must be in place after the :math:`(n-1)` st pass. The Selection Sort This looks like an insertion sort. This one looks similar to the correct answer but instead of swapping the numbers have been shifted to the left to make room for the correct numbers. You may see that the selection sort makes the same number of comparisons as the bubble sort and is therefore also :math:`O(n^{2})`. However, due to the reduction in the number of exchanges, the selection sort typically executes faster in benchmark studies. In fact, for our list, the bubble sort makes 20 exchanges, while the selection sort makes only 8. [11, 7, 12, 14, 1, 6, 8, 18, 19, 20] [11, 7, 12, 14, 8, 1, 6, 18, 19, 20] [7, 11, 12, 1, 6, 14, 8, 18, 19, 20] [7, 11, 12, 14, 19, 1, 6, 18, 8, 20] data-caption='Selection Sort' def selectionSort(alist):
   for fillslot in range(len(alist)-1,0,-1):
       positionOfMax=0
       for location in range(1,fillslot+1):
           if alist[location]>alist[positionOfMax]:
               positionOfMax = location

       temp = alist[fillslot]
       alist[fillslot] = alist[positionOfMax]
       alist[positionOfMax] = temp

alist = [54,26,93,17,77,31,44,55,20]
selectionSort(alist)
print(alist) 