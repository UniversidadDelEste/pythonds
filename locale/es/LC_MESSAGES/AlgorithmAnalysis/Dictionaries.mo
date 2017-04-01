��    .      �              �     �       =     2   W  1  �  �   �  �  �  8   f  H   �     �     �  I     [  P  '   �     �     �  :   �  <     K   V  E   �  
   �  d  �  R   X  �  �  I   �  )  �  h        x     �     �     �     �  [   �       c  &  l   �  	   �       
             &     /     M  	   _     i  w  r     �     �  =     2   D  1  w  �   �  �  �   8   S$  H   �$     �$     �$  I   �$  [  =%  '   �'     �'     �'  :   �'  <   (  K   C(  E   �(  
   �(  d  �(  R   E*  �  �*  I   �.  )  �.  h   �/     e0     0     �0     �0     �0  [   �0     
1  c  1  l   w2  	   �2     �2  
   �2     3     3     3     :3  	   L3     V3   'x' in mydict **Listing 6** **Table 3: Big-O Efficiency of Python Dictionary Operations** .. image:: AlgorithmAnalysis/Figures/listvdict.png :ref:`Figure 4 <fig_listvdict>` summarizes the results of running :ref:`Listing 6 <lst_listvdict>`. You can see that the dictionary is consistently faster. For the smallest list size of 10,000 elements a dictionary is 89.4 times faster than a list. For the largest list size of 990,000 elements the dictionary is 11,603 times faster! You can also see that the time it takes for the contains operator on the list grows linearly with the size of the list. This verifies the assertion that the contains operator on a list is :math:`O(n)`. It can also be seen that the time for the contains operator on a dictionary is constant even as the dictionary size grows. In fact for a dictionary size of 10,000 the contains operation took 0.004 milliseconds and for the dictionary size of 990,000 it also took 0.004 milliseconds. :ref:`Listing 6 <lst_listvdict>` implements this comparison. Notice that we are performing exactly the same operation, ``number in container``. The difference is that on line 7 ``x`` is a list, and on line 9 ``x`` is a dictionary. <div id="pythonopsperf" class="video_popup" >
<video controls preload="none"  poster="../_static/function_intro.png">
    <source src="http://media.interactivepython.org/pythondsVideos/pythonops.mov" type="video/mp4"></source>
    <source src="http://media.interactivepython.org/pythondsVideos/pythonops.webm" type="video/webm"></source>
    No supported video types
</video>
</div>
<script>
   jQuery(function($) {
      var rb = new RunestoneBase();
      $('#pythonopsperf_thumb').click(function(e) {
         $('#pythonopsperf').show();
         $('#pythonopsperf_thumb').hide();
         rb.logBookEvent({'event':'video','act':'play','div_id': 'pythonopsperf'});
         // Log the run event
      });
      $('#pythonopsperf video').one("click", function(){
        this.play();
      });
      $('#pythonopsperf video').one("play", function(){
        rb.logBookEvent({'event':'video','act':'play','div_id': 'pythonopsperf'});
      });
   });
</script>
 Appending to the end of the list is a constant operation Assignment to a dictionary key is constant but there is a better answer. Big-O Efficiency Dictionaries Figure 4: Comparing the ``in`` Operator for Python Lists and Dictionaries For our last performance experiment we will compare the performance of the contains operation between lists and dictionaries. In the process we will confirm that the contains operator for lists is :math:`O(n)` and the contains operator for dictionaries is :math:`O(1)`. The experiment we will use to compare the two is simple. We’ll make a list with a range of numbers in it. Then we will pick numbers at random and check to see if the numbers are in the list. If our performance tables are correct the bigger the list the longer it should take to determine if any one number is contained in the list. Indexing a list is a constant operation O(1) O(n) Q-4: Which of the list operations shown below is not O(1)? Q-5: Which of the dictionary operations shown below is O(1)? Re-assignment to a dictionary key is constant but there is a better answer. Removing an element from the end of the list is a constant operation. Self Check Since Python is an evolving language, there are always changes going on behind the scenes. The latest information on the performance of Python data structures can be found on the Python website. As of this writing the Python wiki has a nice time complexity page that can be found at the `Time Complexity Wiki <http://wiki.python.org/moin/TimeComplexity>`_. The only dictionary operations that are not O(1) are those that require iteration. The second major Python data structure is the dictionary. As you probably recall, dictionaries differ from lists in that you can access items in a dictionary by a key rather than a position. Later in this book you will see that there are many ways to implement a dictionary. The thing that is most important to notice right now is that the get item and set item operations on a dictionary are :math:`O(1)`. Another important dictionary operation is the contains operation. Checking to see whether a key is in the dictionary or not is also :math:`O(1)`. The efficiency of all dictionary operations is summarized in :ref:`Table 3 <tbl_dictbigo>`. One important side note on dictionary performance is that the efficiencies we provide in the table are for average performance. In some rare cases the contains, get item, and set item operations can degenerate into :math:`O(n)` performance but we will get into that in a later chapter when we talk about the different ways that a dictionary could be implemented. There is one operation that requires all other list elements to be moved. We will repeat the same experiment for a dictionary that contains numbers as the keys. In this experiment we should see that determining whether or not a number is in the dictionary is not only much faster, but the time it takes to check should remain constant even as the dictionary grows larger. When you remove the first element of a list, all the other elements of the list must be shifted forward. all of the above are O(1) contains (in) copy del mydict['x'] delete item deleting an element from a dictionary is a constant operation but there is a better answer. get item import timeit
import random

for i in range(10000,1000001,20000):
    t = timeit.Timer("random.randrange(%d) in x"%i,
                     "from __main__ import random,x")
    x = list(range(i))
    lst_time = t.timeit(number=1000)
    x = {j:None for j in range(i)}
    d_time = t.timeit(number=1000)
    print("%d,%10.3f,%10.3f" % (i, lst_time, d_time)) in is a constant operation for a dictionary because you do not have to iterate but there is a better answer. iteration list.append() list.pop() list.pop(0) list[10] mydict['x'] = mydict['x'] + 1 mydict['x'] == 10 operation set item Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 'x' in mydict **Listing 6** **Table 3: Big-O Efficiency of Python Dictionary Operations** .. image:: AlgorithmAnalysis/Figures/listvdict.png :ref:`Figure 4 <fig_listvdict>` summarizes the results of running :ref:`Listing 6 <lst_listvdict>`. You can see that the dictionary is consistently faster. For the smallest list size of 10,000 elements a dictionary is 89.4 times faster than a list. For the largest list size of 990,000 elements the dictionary is 11,603 times faster! You can also see that the time it takes for the contains operator on the list grows linearly with the size of the list. This verifies the assertion that the contains operator on a list is :math:`O(n)`. It can also be seen that the time for the contains operator on a dictionary is constant even as the dictionary size grows. In fact for a dictionary size of 10,000 the contains operation took 0.004 milliseconds and for the dictionary size of 990,000 it also took 0.004 milliseconds. :ref:`Listing 6 <lst_listvdict>` implements this comparison. Notice that we are performing exactly the same operation, ``number in container``. The difference is that on line 7 ``x`` is a list, and on line 9 ``x`` is a dictionary. <div id="pythonopsperf" class="video_popup" >
<video controls preload="none"  poster="../_static/function_intro.png">
    <source src="http://media.interactivepython.org/pythondsVideos/pythonops.mov" type="video/mp4"></source>
    <source src="http://media.interactivepython.org/pythondsVideos/pythonops.webm" type="video/webm"></source>
    No supported video types
</video>
</div>
<script>
   jQuery(function($) {
      var rb = new RunestoneBase();
      $('#pythonopsperf_thumb').click(function(e) {
         $('#pythonopsperf').show();
         $('#pythonopsperf_thumb').hide();
         rb.logBookEvent({'event':'video','act':'play','div_id': 'pythonopsperf'});
         // Log the run event
      });
      $('#pythonopsperf video').one("click", function(){
        this.play();
      });
      $('#pythonopsperf video').one("play", function(){
        rb.logBookEvent({'event':'video','act':'play','div_id': 'pythonopsperf'});
      });
   });
</script>
 Appending to the end of the list is a constant operation Assignment to a dictionary key is constant but there is a better answer. Big-O Efficiency Dictionaries Figure 4: Comparing the ``in`` Operator for Python Lists and Dictionaries For our last performance experiment we will compare the performance of the contains operation between lists and dictionaries. In the process we will confirm that the contains operator for lists is :math:`O(n)` and the contains operator for dictionaries is :math:`O(1)`. The experiment we will use to compare the two is simple. We’ll make a list with a range of numbers in it. Then we will pick numbers at random and check to see if the numbers are in the list. If our performance tables are correct the bigger the list the longer it should take to determine if any one number is contained in the list. Indexing a list is a constant operation O(1) O(n) Q-4: Which of the list operations shown below is not O(1)? Q-5: Which of the dictionary operations shown below is O(1)? Re-assignment to a dictionary key is constant but there is a better answer. Removing an element from the end of the list is a constant operation. Self Check Since Python is an evolving language, there are always changes going on behind the scenes. The latest information on the performance of Python data structures can be found on the Python website. As of this writing the Python wiki has a nice time complexity page that can be found at the `Time Complexity Wiki <http://wiki.python.org/moin/TimeComplexity>`_. The only dictionary operations that are not O(1) are those that require iteration. The second major Python data structure is the dictionary. As you probably recall, dictionaries differ from lists in that you can access items in a dictionary by a key rather than a position. Later in this book you will see that there are many ways to implement a dictionary. The thing that is most important to notice right now is that the get item and set item operations on a dictionary are :math:`O(1)`. Another important dictionary operation is the contains operation. Checking to see whether a key is in the dictionary or not is also :math:`O(1)`. The efficiency of all dictionary operations is summarized in :ref:`Table 3 <tbl_dictbigo>`. One important side note on dictionary performance is that the efficiencies we provide in the table are for average performance. In some rare cases the contains, get item, and set item operations can degenerate into :math:`O(n)` performance but we will get into that in a later chapter when we talk about the different ways that a dictionary could be implemented. There is one operation that requires all other list elements to be moved. We will repeat the same experiment for a dictionary that contains numbers as the keys. In this experiment we should see that determining whether or not a number is in the dictionary is not only much faster, but the time it takes to check should remain constant even as the dictionary grows larger. When you remove the first element of a list, all the other elements of the list must be shifted forward. all of the above are O(1) contains (in) copy del mydict['x'] delete item deleting an element from a dictionary is a constant operation but there is a better answer. get item import timeit
import random

for i in range(10000,1000001,20000):
    t = timeit.Timer("random.randrange(%d) in x"%i,
                     "from __main__ import random,x")
    x = list(range(i))
    lst_time = t.timeit(number=1000)
    x = {j:None for j in range(i)}
    d_time = t.timeit(number=1000)
    print("%d,%10.3f,%10.3f" % (i, lst_time, d_time)) in is a constant operation for a dictionary because you do not have to iterate but there is a better answer. iteration list.append() list.pop() list.pop(0) list[10] mydict['x'] = mydict['x'] + 1 mydict['x'] == 10 operation set item 