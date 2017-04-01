��                        �  ,   �  ,   *  ,   W  ,   �  g  �  �    �  �  �  v	  R   Y  /   �  1   �  ?     +   N  �   z  
   0  �  ;     /  �   >  �   �  �  �  6   M  '   �  �  �  #   �  #   �  #   �  #   �       �  4  w    ,   �  ,   �  ,   �  ,     g  B  �  �  �  B  �  !  R   �"  /   =#  1   m#  ?   �#  +   �#  �   $  
   �$  �  �$     �&  �   �&  �   �'  �  (  6   �)  '   *  �  =*  #   ,  #   ?,  #   c,  #   �,     �,  �  �,   .. image:: SortSearch/Figures/shellsortA.png .. image:: SortSearch/Figures/shellsortB.png .. image:: SortSearch/Figures/shellsortC.png .. image:: SortSearch/Figures/shellsortD.png :ref:`Figure 8 <fig_incrementsC>` shows a final insertion sort using an increment of one; in other words, a standard insertion sort. Note that by performing the earlier sublist sorts, we have now reduced the total number of shifting operations necessary to put the list in its final order. For this case, we need only four more shifts to complete the process. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="shell_anim">
<canvas id="shell_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="shell_anim_anim = shell_anim_init('shell_anim')">Initialize</button>
<button onclick="shell_anim_anim.run('shell_anim_anim')">Run</button>
<button onclick="shell_anim_anim.stop()">Stop</button> </br>
<button onclick="shell_anim_anim.begin()">Beginning</button>
<button onclick="shell_anim_anim.forward()">Step Forward</button>
<button onclick="shell_anim_anim.backward()">Step Backward</button>
<button onclick="shell_anim_anim.end()">End</button>

<script type="text/javascript">
shell_anim_init = function(divid)
{
   var a = new Animator(new ShellSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 Although a general analysis of the shell sort is well beyond the scope of this text, we can say that it tends to fall somewhere between :math:`O(n)` and :math:`O(n^{2})`, based on the behavior described above. For the increments shown in :ref:`Listing 5 <lst_shell>`, the performance is :math:`O(n^{2})`. By changing the increment, for example using :math:`2^{k}-1` (1, 3, 7, 15, 31, and so on), a shell sort can perform at :math:`O(n^{\frac {3}{2}})`. At first glance you may think that a shell sort cannot be better than an insertion sort, since it does a complete insertion sort as the last step. It turns out, however, that this final insertion sort does not need to do very many comparisons (or shifts) since the list has been pre-sorted by earlier incremental insertion sorts, as described above. In other words, each pass produces a list that is “more sorted” than the previous one. This makes the final pass very efficient. Each group of numbers represented by index positions 3 apart are sorted correctly. Figure 6: A Shell Sort with Increments of Three Figure 7: A Shell Sort after Sorting Each Sublist Figure 8: ShellSort: A Final Insertion Sort with Increment of 1 Figure 9: Initial Sublists for a Shell Sort Q-25: Given the following list of numbers:  [5, 16, 20, 12, 3, 8, 9, 17, 19, 7] Which answer illustrates the contents of the list after all swapping is complete for a gap size of 3? Self Check The **shell sort**, sometimes called the “diminishing increment sort,” improves on the insertion sort by breaking the original list into a number of smaller sublists, each of which is sorted using an insertion sort. The unique way that these sublists are chosen is the key to the shell sort. Instead of breaking the list into sublists of contiguous items, the shell sort uses an increment ``i``, sometimes called the **gap**, to create a sublist by choosing all items that are ``i`` items apart. The Shell Sort The following invocation of the ``shellSort`` function shows the partially sorted lists after each increment, with the final sort being an insertion sort with an increment of one. The gap size of three indicates that the group represented by every third number e.g. 0, 3, 6, 9  and 1, 4, 7 and 2, 5, 8 are sorted not groups of 3. This can be seen in :ref:`Figure 6 <fig_incrementsA>`. This list has nine items. If we use an increment of three, there are three sublists, each of which can be sorted by an insertion sort. After completing these sorts, we get the list shown in :ref:`Figure 7 <fig_incrementsB>`. Although this list is not completely sorted, something very interesting has happened. By sorting the sublists, we have moved the items closer to where they actually belong. This is list completely sorted, you have gone too far. This solution is for a gap size of two. We said earlier that the way in which the increments are chosen is the unique feature of the shell sort. The function shown in :ref:`ActiveCode 1 <lst_shell>` uses a different set of increments. In this case, we begin with :math:`\frac {n}{2}` sublists. On the next pass, :math:`\frac {n}{4}` sublists are sorted. Eventually, a single list is sorted with the basic insertion sort. :ref:`Figure 9 <fig_incrementsD>` shows the first sublists for our example using this increment. [3, 5, 7, 8, 9, 12, 16, 17, 19, 20] [3, 7, 5, 8, 9, 12, 19, 16, 20, 17] [5, 16, 20, 3, 8, 12, 9, 17, 20, 7] [5, 3, 8, 7, 16, 19, 9, 17, 20, 12] data-caption='Shell Sort' def shellSort(alist):
    sublistcount = len(alist)//2
    while sublistcount > 0:

      for startposition in range(sublistcount):
        gapInsertionSort(alist,startposition,sublistcount)

      print("After increments of size",sublistcount,
                                   "The list is",alist)

      sublistcount = sublistcount // 2

def gapInsertionSort(alist,start,gap):
    for i in range(start+gap,len(alist),gap):

        currentvalue = alist[i]
        position = i

        while position>=gap and alist[position-gap]>currentvalue:
            alist[position]=alist[position-gap]
            position = position-gap

        alist[position]=currentvalue

alist = [54,26,93,17,77,31,44,55,20]
shellSort(alist)
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
 .. image:: SortSearch/Figures/shellsortA.png .. image:: SortSearch/Figures/shellsortB.png .. image:: SortSearch/Figures/shellsortC.png .. image:: SortSearch/Figures/shellsortD.png :ref:`Figure 8 <fig_incrementsC>` shows a final insertion sort using an increment of one; in other words, a standard insertion sort. Note that by performing the earlier sublist sorts, we have now reduced the total number of shifting operations necessary to put the list in its final order. For this case, we need only four more shifts to complete the process. <script type="text/javascript" src="../_static/sortmodels.js"></script>
<script type="text/javascript" src="../_static/sortviewers.js"></script>

<div id="shell_anim">
<canvas id="shell_anim_canvas" width="400" height="400" style="border:4px solid blue"></canvas>
<br />
<button onclick="shell_anim_anim = shell_anim_init('shell_anim')">Initialize</button>
<button onclick="shell_anim_anim.run('shell_anim_anim')">Run</button>
<button onclick="shell_anim_anim.stop()">Stop</button> </br>
<button onclick="shell_anim_anim.begin()">Beginning</button>
<button onclick="shell_anim_anim.forward()">Step Forward</button>
<button onclick="shell_anim_anim.backward()">Step Backward</button>
<button onclick="shell_anim_anim.end()">End</button>

<script type="text/javascript">
shell_anim_init = function(divid)
{
   var a = new Animator(new ShellSortModel(), new BarViewer(), divid)
   a.init()
   return a
}
</script>

</div>
 Although a general analysis of the shell sort is well beyond the scope of this text, we can say that it tends to fall somewhere between :math:`O(n)` and :math:`O(n^{2})`, based on the behavior described above. For the increments shown in :ref:`Listing 5 <lst_shell>`, the performance is :math:`O(n^{2})`. By changing the increment, for example using :math:`2^{k}-1` (1, 3, 7, 15, 31, and so on), a shell sort can perform at :math:`O(n^{\frac {3}{2}})`. At first glance you may think that a shell sort cannot be better than an insertion sort, since it does a complete insertion sort as the last step. It turns out, however, that this final insertion sort does not need to do very many comparisons (or shifts) since the list has been pre-sorted by earlier incremental insertion sorts, as described above. In other words, each pass produces a list that is “more sorted” than the previous one. This makes the final pass very efficient. Each group of numbers represented by index positions 3 apart are sorted correctly. Figure 6: A Shell Sort with Increments of Three Figure 7: A Shell Sort after Sorting Each Sublist Figure 8: ShellSort: A Final Insertion Sort with Increment of 1 Figure 9: Initial Sublists for a Shell Sort Q-25: Given the following list of numbers:  [5, 16, 20, 12, 3, 8, 9, 17, 19, 7] Which answer illustrates the contents of the list after all swapping is complete for a gap size of 3? Self Check The **shell sort**, sometimes called the “diminishing increment sort,” improves on the insertion sort by breaking the original list into a number of smaller sublists, each of which is sorted using an insertion sort. The unique way that these sublists are chosen is the key to the shell sort. Instead of breaking the list into sublists of contiguous items, the shell sort uses an increment ``i``, sometimes called the **gap**, to create a sublist by choosing all items that are ``i`` items apart. The Shell Sort The following invocation of the ``shellSort`` function shows the partially sorted lists after each increment, with the final sort being an insertion sort with an increment of one. The gap size of three indicates that the group represented by every third number e.g. 0, 3, 6, 9  and 1, 4, 7 and 2, 5, 8 are sorted not groups of 3. This can be seen in :ref:`Figure 6 <fig_incrementsA>`. This list has nine items. If we use an increment of three, there are three sublists, each of which can be sorted by an insertion sort. After completing these sorts, we get the list shown in :ref:`Figure 7 <fig_incrementsB>`. Although this list is not completely sorted, something very interesting has happened. By sorting the sublists, we have moved the items closer to where they actually belong. This is list completely sorted, you have gone too far. This solution is for a gap size of two. We said earlier that the way in which the increments are chosen is the unique feature of the shell sort. The function shown in :ref:`ActiveCode 1 <lst_shell>` uses a different set of increments. In this case, we begin with :math:`\frac {n}{2}` sublists. On the next pass, :math:`\frac {n}{4}` sublists are sorted. Eventually, a single list is sorted with the basic insertion sort. :ref:`Figure 9 <fig_incrementsD>` shows the first sublists for our example using this increment. [3, 5, 7, 8, 9, 12, 16, 17, 19, 20] [3, 7, 5, 8, 9, 12, 19, 16, 20, 17] [5, 16, 20, 3, 8, 12, 9, 17, 20, 7] [5, 3, 8, 7, 16, 19, 9, 17, 20, 12] data-caption='Shell Sort' def shellSort(alist):
    sublistcount = len(alist)//2
    while sublistcount > 0:

      for startposition in range(sublistcount):
        gapInsertionSort(alist,startposition,sublistcount)

      print("After increments of size",sublistcount,
                                   "The list is",alist)

      sublistcount = sublistcount // 2

def gapInsertionSort(alist,start,gap):
    for i in range(start+gap,len(alist),gap):

        currentvalue = alist[i]
        position = i

        while position>=gap and alist[position-gap]>currentvalue:
            alist[position]=alist[position-gap]
            position = position-gap

        alist[position]=currentvalue

alist = [54,26,93,17,77,31,44,55,20]
shellSort(alist)
print(alist) 