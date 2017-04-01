��          L               |   %   }   M  �      �  5     �   9  w    %   �  M  �       5     �   O   .. image:: Graphs/Figures/adjlist.png A more space-efficient way to implement a sparsely connected graph is to use an adjacency list. In an adjacency list implementation we keep a master list of all the vertices in the Graph object and then each vertex object in the graph maintains a list of the other vertices that it is connected to. In our implementation of the ``Vertex`` class we will use a dictionary rather than a list where the dictionary keys are the vertices, and the values are the weights. :ref:`Figure 4 <fig_adjlist>` illustrates the adjacency list representation for the graph in :ref:`Figure 2 <fig_dgsimple>`. An Adjacency List Figure 4: An Adjacency List Representation of a Graph The advantage of the adjacency list implementation is that it allows us to compactly represent a sparse graph. The adjacency list also allows us to easily find all the links that are directly connected to a particular vertex. Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 .. image:: Graphs/Figures/adjlist.png A more space-efficient way to implement a sparsely connected graph is to use an adjacency list. In an adjacency list implementation we keep a master list of all the vertices in the Graph object and then each vertex object in the graph maintains a list of the other vertices that it is connected to. In our implementation of the ``Vertex`` class we will use a dictionary rather than a list where the dictionary keys are the vertices, and the values are the weights. :ref:`Figure 4 <fig_adjlist>` illustrates the adjacency list representation for the graph in :ref:`Figure 2 <fig_dgsimple>`. An Adjacency List Figure 4: An Adjacency List Representation of a Graph The advantage of the adjacency list implementation is that it allows us to compactly represent a sparse graph. The adjacency list also allows us to easily find all the links that are directly connected to a particular vertex. 