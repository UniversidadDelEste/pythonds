��          4               L   "   M   �  p   w  Q  "   �  �  �   Analysis of Dijkstra’s Algorithm Finally, let us look at the running time of Dijkstra’s algorithm. We first note that building the priority queue takes :math:`O(V)` time since we initially add every vertex in the graph to the priority queue. Once the queue is constructed the ``while`` loop is executed once for every vertex since vertices are all added at the beginning and only removed after that. Within that loop each call to ``delMin``, takes :math:`O(\log V)` time. Taken together that part of the loop and the calls to delMin take :math:`O(V \log(V))`. The ``for`` loop is executed once for each edge in the graph, and within the ``for`` loop the call to ``decreaseKey`` takes time :math:`O(E\log(V)).` So the combined running time is :math:`O((V+E) \log(V)).` Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Analysis of Dijkstra’s Algorithm Finally, let us look at the running time of Dijkstra’s algorithm. We first note that building the priority queue takes :math:`O(V)` time since we initially add every vertex in the graph to the priority queue. Once the queue is constructed the ``while`` loop is executed once for every vertex since vertices are all added at the beginning and only removed after that. Within that loop each call to ``delMin``, takes :math:`O(\log V)` time. Taken together that part of the loop and the calls to delMin take :math:`O(V \log(V))`. The ``for`` loop is executed once for each edge in the graph, and within the ``for`` loop the call to ``decreaseKey`` takes time :math:`O(E\log(V)).` So the combined running time is :math:`O((V+E) \log(V)).` 