��          4               L      M     i   w  |     �       Depth First Search Analysis The general running time for depth first search is as follows. The loops in ``dfs`` both run in :math:`O(V)`, not counting what happens in ``dfsvisit``, since they are executed once for each vertex in the graph. In ``dfsvisit`` the loop is executed once for each edge in the adjacency list of the current vertex. Since ``dfsvisit`` is only called recursively if the vertex is white, the loop will execute a maximum of once for every edge in the graph or :math:`O(E)`. So, the total time for depth first search is :math:`O(V + E)`. Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 Depth First Search Analysis The general running time for depth first search is as follows. The loops in ``dfs`` both run in :math:`O(V)`, not counting what happens in ``dfsvisit``, since they are executed once for each vertex in the graph. In ``dfsvisit`` the loop is executed once for each edge in the adjacency list of the current vertex. Since ``dfsvisit`` is only called recursively if the vertex is white, the loop will execute a maximum of once for every edge in the graph or :math:`O(E)`. So, the total time for depth first search is :math:`O(V + E)`. 