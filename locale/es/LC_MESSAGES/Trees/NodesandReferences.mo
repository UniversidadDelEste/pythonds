��          �               �     �     �     �     �  $     4   *  =   _  (  �     �  �  �  Y  �  [  �  
   Y	  �   d	  �   S
       �  �  �  I  v   $  �   �  �  %  ?   �  �   �  �   �  �   ~  �   X  w  X     �     �     �     �  $     4   -  =   b  (  �     �  �  �  Y  �  [      
   \!  �   g!  �   V"     #  �  �#  �  L%  v   ''  �   �'  �  ((  ?   �,  �   �,  �   �-  �   �.  �   [/   **Listing 4** **Listing 5** **Listing 6** **Listing 7** .. image:: Trees/Figures/tree_ex.png .. image:: Trees/Figures/treerecs.png
   :alt: image Figure 2: A Simple Tree Using a Nodes and References Approach Next let’s look at the functions we need to build the tree beyond the root node. To add a left child to the tree, we will create a new binary tree object and set the ``left`` attribute of the root to refer to this new object. The code for ``insertLeft`` is shown in :ref:`Listing 5 <lst_insl>`. Nodes and References Notice that in :ref:`Listing 4 <lst_nar>`, the constructor function expects to get some kind of object to store in the root. Just like you can store any object you like in a list, the root object of a tree can be a reference to any object. For our early examples, we will store the name of the node as the root value. Using nodes and references to represent the tree in :ref:`Figure 2 <fig_treerec>`, we would create six instances of the BinaryTree class. Now that we have all the pieces to create and manipulate a binary tree, let’s use them to check on the structure a bit more. Let’s make a simple tree with node a as the root, and add nodes b and c as children. :ref:`ActiveCode 1 <lst_comptest>` creates the tree and looks at the some of the values stored in ``key``, ``left``, and ``right``. Notice that both the left and right children of the root are themselves distinct instances of the ``BinaryTree`` class. As we said in our original recursive definition for a tree, this allows us to treat any child of a binary tree as a binary tree itself. Our second method to represent a tree uses nodes and references. In this case we will define a class that has attributes for the root value, as well as the left and right subtrees. Since this representation more closely follows the object-oriented programming paradigm, we will continue to use this representation for the remainder of the chapter. Self Check The code for ``insertRight`` must consider a symmetric set of cases. There will either be no right child, or we must insert the node between the root and an existing right child. The insertion code is shown in :ref:`Listing 6 <lst_insr>`. To round out the definition for a simple binary tree data structure, we will write accessor methods (see :ref:`Listing 7 <lst_naracc>`) for the left and right children, as well as the root values. Using nodes and references, we might think of the tree as being structured like the one shown in :ref:`Figure 2 <fig_treerec>`. We must consider two cases for insertion. The first case is characterized by a node with no existing left child. When there is no left child, simply add a node to the tree. The second case is characterized by a node with an existing left child. In the second case, we insert a node and push the existing child down one level in the tree. The second case is handled by the ``else`` statement on line 4 of :ref:`Listing 5 <lst_insl>`. We will start out with a simple class definition for the nodes and references approach as shown in :ref:`Listing 4 <lst_nar>`. The important thing to remember about this representation is that the attributes ``left`` and ``right`` will become references to other instances of the ``BinaryTree`` class. For example, when we insert a new left child into the tree we create another instance of ``BinaryTree`` and modify ``self.leftChild`` in the root to reference the new tree. Write a function ``buildTree`` that returns a tree using the nodes and references implementation that looks like this: class BinaryTree:
    def __init__(self,rootObj):
        self.key = rootObj
        self.leftChild = None
        self.rightChild = None class BinaryTree:
    def __init__(self,rootObj):
        self.key = rootObj
        self.leftChild = None
        self.rightChild = None

    def insertLeft(self,newNode):
        if self.leftChild == None:
            self.leftChild = BinaryTree(newNode)
        else:
            t = BinaryTree(newNode)
            t.leftChild = self.leftChild
            self.leftChild = t

    def insertRight(self,newNode):
        if self.rightChild == None:
            self.rightChild = BinaryTree(newNode)
        else:
            t = BinaryTree(newNode)
            t.rightChild = self.rightChild
            self.rightChild = t


    def getRightChild(self):
        return self.rightChild

    def getLeftChild(self):
        return self.leftChild

    def setRootVal(self,obj):
        self.key = obj

    def getRootVal(self):
        return self.key


r = BinaryTree('a')
print(r.getRootVal())
print(r.getLeftChild())
r.insertLeft('b')
print(r.getLeftChild())
print(r.getLeftChild().getRootVal())
r.insertRight('c')
print(r.getRightChild())
print(r.getRightChild().getRootVal())
r.getRightChild().setRootVal('hello')
print(r.getRightChild().getRootVal()) data-caption='Exercising the Node and Reference Implementation' def getRightChild(self):
    return self.rightChild

def getLeftChild(self):
    return self.leftChild

def setRootVal(self,obj):
    self.key = obj

def getRootVal(self):
    return self.key def insertLeft(self,newNode):
    if self.leftChild == None:
        self.leftChild = BinaryTree(newNode)
    else:
        t = BinaryTree(newNode)
        t.leftChild = self.leftChild
        self.leftChild = t def insertRight(self,newNode):
    if self.rightChild == None:
        self.rightChild = BinaryTree(newNode)
    else:
        t = BinaryTree(newNode)
        t.rightChild = self.rightChild
        self.rightChild = t from test import testEqual

def buildTree():
    pass

ttree = buildTree()

testEqual(ttree.getRightChild().getRootVal(),'c')
testEqual(ttree.getLeftChild().getRightChild().getRootVal(),'d')
testEqual(ttree.getRightChild().getLeftChild().getRootVal(),'e') Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **Listing 4** **Listing 5** **Listing 6** **Listing 7** .. image:: Trees/Figures/tree_ex.png .. image:: Trees/Figures/treerecs.png
   :alt: image Figure 2: A Simple Tree Using a Nodes and References Approach Next let’s look at the functions we need to build the tree beyond the root node. To add a left child to the tree, we will create a new binary tree object and set the ``left`` attribute of the root to refer to this new object. The code for ``insertLeft`` is shown in :ref:`Listing 5 <lst_insl>`. Nodes and References Notice that in :ref:`Listing 4 <lst_nar>`, the constructor function expects to get some kind of object to store in the root. Just like you can store any object you like in a list, the root object of a tree can be a reference to any object. For our early examples, we will store the name of the node as the root value. Using nodes and references to represent the tree in :ref:`Figure 2 <fig_treerec>`, we would create six instances of the BinaryTree class. Now that we have all the pieces to create and manipulate a binary tree, let’s use them to check on the structure a bit more. Let’s make a simple tree with node a as the root, and add nodes b and c as children. :ref:`ActiveCode 1 <lst_comptest>` creates the tree and looks at the some of the values stored in ``key``, ``left``, and ``right``. Notice that both the left and right children of the root are themselves distinct instances of the ``BinaryTree`` class. As we said in our original recursive definition for a tree, this allows us to treat any child of a binary tree as a binary tree itself. Our second method to represent a tree uses nodes and references. In this case we will define a class that has attributes for the root value, as well as the left and right subtrees. Since this representation more closely follows the object-oriented programming paradigm, we will continue to use this representation for the remainder of the chapter. Self Check The code for ``insertRight`` must consider a symmetric set of cases. There will either be no right child, or we must insert the node between the root and an existing right child. The insertion code is shown in :ref:`Listing 6 <lst_insr>`. To round out the definition for a simple binary tree data structure, we will write accessor methods (see :ref:`Listing 7 <lst_naracc>`) for the left and right children, as well as the root values. Using nodes and references, we might think of the tree as being structured like the one shown in :ref:`Figure 2 <fig_treerec>`. We must consider two cases for insertion. The first case is characterized by a node with no existing left child. When there is no left child, simply add a node to the tree. The second case is characterized by a node with an existing left child. In the second case, we insert a node and push the existing child down one level in the tree. The second case is handled by the ``else`` statement on line 4 of :ref:`Listing 5 <lst_insl>`. We will start out with a simple class definition for the nodes and references approach as shown in :ref:`Listing 4 <lst_nar>`. The important thing to remember about this representation is that the attributes ``left`` and ``right`` will become references to other instances of the ``BinaryTree`` class. For example, when we insert a new left child into the tree we create another instance of ``BinaryTree`` and modify ``self.leftChild`` in the root to reference the new tree. Write a function ``buildTree`` that returns a tree using the nodes and references implementation that looks like this: class BinaryTree:
    def __init__(self,rootObj):
        self.key = rootObj
        self.leftChild = None
        self.rightChild = None class BinaryTree:
    def __init__(self,rootObj):
        self.key = rootObj
        self.leftChild = None
        self.rightChild = None

    def insertLeft(self,newNode):
        if self.leftChild == None:
            self.leftChild = BinaryTree(newNode)
        else:
            t = BinaryTree(newNode)
            t.leftChild = self.leftChild
            self.leftChild = t

    def insertRight(self,newNode):
        if self.rightChild == None:
            self.rightChild = BinaryTree(newNode)
        else:
            t = BinaryTree(newNode)
            t.rightChild = self.rightChild
            self.rightChild = t


    def getRightChild(self):
        return self.rightChild

    def getLeftChild(self):
        return self.leftChild

    def setRootVal(self,obj):
        self.key = obj

    def getRootVal(self):
        return self.key


r = BinaryTree('a')
print(r.getRootVal())
print(r.getLeftChild())
r.insertLeft('b')
print(r.getLeftChild())
print(r.getLeftChild().getRootVal())
r.insertRight('c')
print(r.getRightChild())
print(r.getRightChild().getRootVal())
r.getRightChild().setRootVal('hello')
print(r.getRightChild().getRootVal()) data-caption='Exercising the Node and Reference Implementation' def getRightChild(self):
    return self.rightChild

def getLeftChild(self):
    return self.leftChild

def setRootVal(self,obj):
    self.key = obj

def getRootVal(self):
    return self.key def insertLeft(self,newNode):
    if self.leftChild == None:
        self.leftChild = BinaryTree(newNode)
    else:
        t = BinaryTree(newNode)
        t.leftChild = self.leftChild
        self.leftChild = t def insertRight(self,newNode):
    if self.rightChild == None:
        self.rightChild = BinaryTree(newNode)
    else:
        t = BinaryTree(newNode)
        t.rightChild = self.rightChild
        self.rightChild = t from test import testEqual

def buildTree():
    pass

ttree = buildTree()

testEqual(ttree.getRightChild().getRootVal(),'c')
testEqual(ttree.getLeftChild().getRightChild().getRootVal(),'d')
testEqual(ttree.getRightChild().getLeftChild().getRootVal(),'e') 