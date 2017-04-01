��    !      $              ,  h?  -     �A     �A     �A  �  �A  �  XE  	   G  	   G     G  �  6G    �H  w   �I  w   ?J  y  �J  2   1L  �  dL  
   �M    �M  '  O     )P  a   <P    �P  \   �S  .   T     CT  e  WT  <   �U  �   �U  �   �V  @   �W  \   �W     SX  w  fX  h?  �Y     G�     K�     O�  �  S�  �  	�  	   ��  	   ��     Ȟ  �  �    t�  w   x�  w   �  y  h�  2   �  �  �  
   ��    ��  '  ��     ڧ  a   ��    O�  \   h�  .   ū     ��  e  �  <   n�  �   ��  �   ��  @   f�  \   ��     �   
<div class="alert alert-warning cd_section">
<div id="stack_cl_1"></div>
<p class="cl_caption"><span class="cl_caption_text">Alternative Implementation of the Stack class (stack_cl_1)</span> </p>
</div>
<script type="text/javascript">
var stack_cl_1_trace = {"code": "class Stack:\n     def __init__(self):\n         self.items = []\n\n     def isEmpty(self):\n         return self.items == []\n\n     def push(self, item):\n         self.items.insert(0,item)\n\n     def pop(self):\n         return self.items.pop(0)\n\n     def peek(self):\n         return self.items[0]\n\n     def size(self):\n         return len(self.items)\n\ns = Stack()\ns.push('hello')\ns.push('true')\nprint(s.pop())", "trace": [{"ordered_globals": [], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {}, "heap": {}, "line": 1, "event": "step_line"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null]}, "line": 20, "event": "step_line"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "__init__", "stack_to_render": [{"frame_id": 1, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "__init__", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "__init___f1", "ordered_varnames": ["self"]}], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack"]}, "line": 2, "event": "call"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "__init__", "stack_to_render": [{"frame_id": 1, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "__init__", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "__init___f1", "ordered_varnames": ["self"]}], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack"]}, "line": 3, "event": "step_line"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "__init__", "stack_to_render": [{"frame_id": 1, "encoded_locals": {"__return__": null, "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "__init__", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "__init___f1", "ordered_varnames": ["self", "__return__"]}], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 3, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 21, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 2, "encoded_locals": {"item": "hello", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f2", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 8, "event": "call"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 2, "encoded_locals": {"item": "hello", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f2", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 9, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 2, "encoded_locals": {"__return__": null, "item": "hello", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f2", "ordered_varnames": ["self", "item", "__return__"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 9, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 22, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 3, "encoded_locals": {"item": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f3", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 8, "event": "call"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 3, "encoded_locals": {"item": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f3", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 9, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 3, "encoded_locals": {"__return__": null, "item": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f3", "ordered_varnames": ["self", "item", "__return__"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 9, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 23, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "pop", "stack_to_render": [{"frame_id": 4, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "pop", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "pop_f4", "ordered_varnames": ["self"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 11, "event": "call"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "pop", "stack_to_render": [{"frame_id": 4, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "pop", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "pop_f4", "ordered_varnames": ["self"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 12, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "pop", "stack_to_render": [{"frame_id": 4, "encoded_locals": {"__return__": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "pop", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "pop_f4", "ordered_varnames": ["self", "__return__"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 12, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "true\n", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 23, "event": "return"}]};
var stack_cl_1_vis;

$(document).ready(function() {
    try {
        stack_cl_1_vis = new ExecutionVisualizer('stack_cl_1',stack_cl_1_trace,
                                    {embeddedMode: true,
                                    verticalStack: false,
                                    heightChangeCallback: redrawAllVisualizerArrows,
                                    codeDivWidth: 500,
                                    lang : 'py2'
                                    });
        attachLoggers(stack_cl_1_vis,'stack_cl_1');
        styleButtons('stack_cl_1');
        allVisualizers.push(stack_cl_1_vis);
    } catch (e) {
        console.log("Failed to Initialize CodeLens component stack_cl_1_vis" );
        console.log(e.toString());
    }

});

$(document).ready(function() {
    $("#stack_cl_1_tracecheck").click(function() {
        logBookEvent({'event':'codelens', 'act': 'check', 'div_id':'stack_cl_1'});
    });
});

if (allVisualizers === undefined) {
   var allVisualizers = [];
}


$(window).resize(function() {
    if (stack_cl_1_vis) {
        stack_cl_1_vis.redrawConnectors();
    }
});
</script>
 'x' 'y' 'z' <div id="stack1_video" class="video_popup" >
<video controls preload="none"  poster="../_static/activecodethumb.png">
    <source src="http://media.interactivepython.org/pythondsVideos/Stack1.mov" type="video/mp4"></source>
    <source src="http://media.interactivepython.org/pythondsVideos/Stack1.webm" type="video/webm"></source>
    No supported video types
</video>
</div>
<script>
   jQuery(function($) {
      var rb = new RunestoneBase();
      $('#stack1_video_thumb').click(function(e) {
         $('#stack1_video').show();
         $('#stack1_video_thumb').hide();
         rb.logBookEvent({'event':'video','act':'play','div_id': 'stack1_video'});
         // Log the run event
      });
      $('#stack1_video video').one("click", function(){
        this.play();
      });
      $('#stack1_video video').one("play", function(){
        rb.logBookEvent({'event':'video','act':'play','div_id': 'stack1_video'});
      });
   });
</script>
 As we described in Chapter 1, in Python, as in any object-oriented programming language, the implementation of choice for an abstract data type such as a stack is the creation of a new class. The stack operations are implemented as methods. Further, to implement a stack, which is a collection of elements, it makes sense to utilize the power and simplicity of the primitive collections provided by Python. We will use a list. Good Job. Good job. Implementing a Stack in Python It is important to note that we could have chosen to implement the stack using a list where the top is at the beginning instead of at the end. In this case, the previous ``pop`` and ``append`` methods would no longer work and we would have to index position 0 (the first item in the list) explicitly using ``pop`` and ``insert``. The implementation is shown in :ref:`CodeLens 1 <lst_stackcode2>`. Now that we have clearly defined the stack as an abstract data type we will turn our attention to using Python to implement the stack. Recall that when we give an abstract data type a physical implementation we refer to the implementation as a data structure. Q-7: Given the following sequence of stack operations, what is the top item on the stack when the sequence is complete? Q-8: Given the following sequence of stack operations, what is the top item on the stack when the sequence is complete? Recall that the list class in Python provides an ordered collection mechanism and a set of methods. For example, if we have the list [2,5,3,6,7,4], we need only to decide which end of the list will be considered the top of the stack and which will be the base. Once that decision is made, the operations can be implemented using the list methods such as ``append`` and ``pop``. Remember that a stack is built from the bottom up. Remember that nothing happens when we click the ``run`` button other than the definition of the class.  We must create a ``Stack`` object and then use it. :ref:`ActiveCode 2 <lst_stackcode1>` shows the ``Stack`` class in action as we perform the sequence of operations from :ref:`Table 1 <tbl_stackops>`.  Notice that the definition of the ``Stack`` class is imported from the ``pythonds`` module. Self Check The ``pythonds`` module contains implementations of all data structures discussed in this book.  It is structured according to the sections: basic, trees, and graphs.  The module can be downloaded from `pythonworks.org <http://www.pythonworks.org/pythonds>`_. The following stack implementation (:ref:`ActiveCode 1 <lst_stackcode1>`) assumes that the end of the list will hold the top element of the stack. As the stack grows (as ``push`` operations occur), new items will be added on the end of the list. ``pop`` operations will manipulate that same end. The stack is empty There is an odd number of things on the stack but each time through the loop 2 things are popped. This ability to change the physical implementation of an abstract data type while maintaining the logical characteristics is an example of abstraction at work. However, even though the stack will work either way, if we consider the performance of the two implementations, there is definitely a difference. Recall that the ``append`` and ``pop()`` operations were both O(1). This means that the first implementation will perform push and pop in constant time no matter how many items are on the stack. The performance of the second implementation suffers in that the ``insert(0)`` and ``pop(0)`` operations will both require O(n) for a stack of size n. Clearly, even though the implementations are logically equivalent, they would have very different timings when performing benchmark testing. Write a function `revstring(mystr)` that uses a stack to reverse the characters in a string. You may want to check out the docs for isEmpty an error will occur class Stack:
     def __init__(self):
         self.items = []

     def isEmpty(self):
         return self.items == []

     def push(self, item):
         self.items.append(item)

     def pop(self):
         return self.items.pop()

     def peek(self):
         return self.items[len(self.items)-1]

     def size(self):
         return len(self.items) data-caption='Implementing a Stack class using Python lists' from pythonds.basic.stack import Stack

s=Stack()

print(s.isEmpty())
s.push(4)
s.push('dog')
print(s.peek())
s.push(True)
print(s.size())
print(s.isEmpty())
s.push(8.4)
print(s.pop())
print(s.pop())
print(s.size()) from test import testEqual
from pythonds.basic.stack import Stack

def revstring(mystr):
    # your code here

testEqual(revstring('apple'),'elppa')
testEqual(revstring('x'),'x')
testEqual(revstring('1234567890'),'0987654321') m = Stack()
m.push('x')
m.push('y')
m.pop()
m.push('z')
m.peek() m = Stack()
m.push('x')
m.push('y')
m.push('z')
while not m.isEmpty():
   m.pop()
   m.pop() the stack is empty Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 
<div class="alert alert-warning cd_section">
<div id="stack_cl_1"></div>
<p class="cl_caption"><span class="cl_caption_text">Alternative Implementation of the Stack class (stack_cl_1)</span> </p>
</div>
<script type="text/javascript">
var stack_cl_1_trace = {"code": "class Stack:\n     def __init__(self):\n         self.items = []\n\n     def isEmpty(self):\n         return self.items == []\n\n     def push(self, item):\n         self.items.insert(0,item)\n\n     def pop(self):\n         return self.items.pop(0)\n\n     def peek(self):\n         return self.items[0]\n\n     def size(self):\n         return len(self.items)\n\ns = Stack()\ns.push('hello')\ns.push('true')\nprint(s.pop())", "trace": [{"ordered_globals": [], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {}, "heap": {}, "line": 1, "event": "step_line"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null]}, "line": 20, "event": "step_line"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "__init__", "stack_to_render": [{"frame_id": 1, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "__init__", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "__init___f1", "ordered_varnames": ["self"]}], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack"]}, "line": 2, "event": "call"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "__init__", "stack_to_render": [{"frame_id": 1, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "__init__", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "__init___f1", "ordered_varnames": ["self"]}], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack"]}, "line": 3, "event": "step_line"}, {"ordered_globals": ["Stack"], "stdout": "", "func_name": "__init__", "stack_to_render": [{"frame_id": 1, "encoded_locals": {"__return__": null, "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "__init__", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "__init___f1", "ordered_varnames": ["self", "__return__"]}], "globals": {"Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 3, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 21, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 2, "encoded_locals": {"item": "hello", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f2", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 8, "event": "call"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 2, "encoded_locals": {"item": "hello", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f2", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST"]}, "line": 9, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 2, "encoded_locals": {"__return__": null, "item": "hello", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f2", "ordered_varnames": ["self", "item", "__return__"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 9, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 22, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 3, "encoded_locals": {"item": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f3", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 8, "event": "call"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 3, "encoded_locals": {"item": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f3", "ordered_varnames": ["self", "item"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 9, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "push", "stack_to_render": [{"frame_id": 3, "encoded_locals": {"__return__": null, "item": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "push", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "push_f3", "ordered_varnames": ["self", "item", "__return__"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 9, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 23, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "pop", "stack_to_render": [{"frame_id": 4, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "pop", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "pop_f4", "ordered_varnames": ["self"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 11, "event": "call"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "pop", "stack_to_render": [{"frame_id": 4, "encoded_locals": {"self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "pop", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "pop_f4", "ordered_varnames": ["self"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "true", "hello"]}, "line": 12, "event": "step_line"}, {"ordered_globals": ["Stack", "s"], "stdout": "", "func_name": "pop", "stack_to_render": [{"frame_id": 4, "encoded_locals": {"__return__": "true", "self": ["REF", 8]}, "is_highlighted": true, "is_parent": false, "func_name": "pop", "is_zombie": false, "parent_frame_id_list": [], "unique_hash": "pop_f4", "ordered_varnames": ["self", "__return__"]}], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 12, "event": "return"}, {"ordered_globals": ["Stack", "s"], "stdout": "true\n", "func_name": "<module>", "stack_to_render": [], "globals": {"s": ["REF", 8], "Stack": ["REF", 1]}, "heap": {"1": ["CLASS", "Stack", [], ["__init__", ["REF", 2]], ["isEmpty", ["REF", 3]], ["peek", ["REF", 4]], ["pop", ["REF", 5]], ["push", ["REF", 6]], ["size", ["REF", 7]]], "2": ["FUNCTION", "__init__(self)", null], "3": ["FUNCTION", "isEmpty(self)", null], "4": ["FUNCTION", "peek(self)", null], "5": ["FUNCTION", "pop(self)", null], "6": ["FUNCTION", "push(self, item)", null], "7": ["FUNCTION", "size(self)", null], "8": ["INSTANCE", "Stack", ["items", ["REF", 9]]], "9": ["LIST", "hello"]}, "line": 23, "event": "return"}]};
var stack_cl_1_vis;

$(document).ready(function() {
    try {
        stack_cl_1_vis = new ExecutionVisualizer('stack_cl_1',stack_cl_1_trace,
                                    {embeddedMode: true,
                                    verticalStack: false,
                                    heightChangeCallback: redrawAllVisualizerArrows,
                                    codeDivWidth: 500,
                                    lang : 'py2'
                                    });
        attachLoggers(stack_cl_1_vis,'stack_cl_1');
        styleButtons('stack_cl_1');
        allVisualizers.push(stack_cl_1_vis);
    } catch (e) {
        console.log("Failed to Initialize CodeLens component stack_cl_1_vis" );
        console.log(e.toString());
    }

});

$(document).ready(function() {
    $("#stack_cl_1_tracecheck").click(function() {
        logBookEvent({'event':'codelens', 'act': 'check', 'div_id':'stack_cl_1'});
    });
});

if (allVisualizers === undefined) {
   var allVisualizers = [];
}


$(window).resize(function() {
    if (stack_cl_1_vis) {
        stack_cl_1_vis.redrawConnectors();
    }
});
</script>
 'x' 'y' 'z' <div id="stack1_video" class="video_popup" >
<video controls preload="none"  poster="../_static/activecodethumb.png">
    <source src="http://media.interactivepython.org/pythondsVideos/Stack1.mov" type="video/mp4"></source>
    <source src="http://media.interactivepython.org/pythondsVideos/Stack1.webm" type="video/webm"></source>
    No supported video types
</video>
</div>
<script>
   jQuery(function($) {
      var rb = new RunestoneBase();
      $('#stack1_video_thumb').click(function(e) {
         $('#stack1_video').show();
         $('#stack1_video_thumb').hide();
         rb.logBookEvent({'event':'video','act':'play','div_id': 'stack1_video'});
         // Log the run event
      });
      $('#stack1_video video').one("click", function(){
        this.play();
      });
      $('#stack1_video video').one("play", function(){
        rb.logBookEvent({'event':'video','act':'play','div_id': 'stack1_video'});
      });
   });
</script>
 As we described in Chapter 1, in Python, as in any object-oriented programming language, the implementation of choice for an abstract data type such as a stack is the creation of a new class. The stack operations are implemented as methods. Further, to implement a stack, which is a collection of elements, it makes sense to utilize the power and simplicity of the primitive collections provided by Python. We will use a list. Good Job. Good job. Implementing a Stack in Python It is important to note that we could have chosen to implement the stack using a list where the top is at the beginning instead of at the end. In this case, the previous ``pop`` and ``append`` methods would no longer work and we would have to index position 0 (the first item in the list) explicitly using ``pop`` and ``insert``. The implementation is shown in :ref:`CodeLens 1 <lst_stackcode2>`. Now that we have clearly defined the stack as an abstract data type we will turn our attention to using Python to implement the stack. Recall that when we give an abstract data type a physical implementation we refer to the implementation as a data structure. Q-7: Given the following sequence of stack operations, what is the top item on the stack when the sequence is complete? Q-8: Given the following sequence of stack operations, what is the top item on the stack when the sequence is complete? Recall that the list class in Python provides an ordered collection mechanism and a set of methods. For example, if we have the list [2,5,3,6,7,4], we need only to decide which end of the list will be considered the top of the stack and which will be the base. Once that decision is made, the operations can be implemented using the list methods such as ``append`` and ``pop``. Remember that a stack is built from the bottom up. Remember that nothing happens when we click the ``run`` button other than the definition of the class.  We must create a ``Stack`` object and then use it. :ref:`ActiveCode 2 <lst_stackcode1>` shows the ``Stack`` class in action as we perform the sequence of operations from :ref:`Table 1 <tbl_stackops>`.  Notice that the definition of the ``Stack`` class is imported from the ``pythonds`` module. Self Check The ``pythonds`` module contains implementations of all data structures discussed in this book.  It is structured according to the sections: basic, trees, and graphs.  The module can be downloaded from `pythonworks.org <http://www.pythonworks.org/pythonds>`_. The following stack implementation (:ref:`ActiveCode 1 <lst_stackcode1>`) assumes that the end of the list will hold the top element of the stack. As the stack grows (as ``push`` operations occur), new items will be added on the end of the list. ``pop`` operations will manipulate that same end. The stack is empty There is an odd number of things on the stack but each time through the loop 2 things are popped. This ability to change the physical implementation of an abstract data type while maintaining the logical characteristics is an example of abstraction at work. However, even though the stack will work either way, if we consider the performance of the two implementations, there is definitely a difference. Recall that the ``append`` and ``pop()`` operations were both O(1). This means that the first implementation will perform push and pop in constant time no matter how many items are on the stack. The performance of the second implementation suffers in that the ``insert(0)`` and ``pop(0)`` operations will both require O(n) for a stack of size n. Clearly, even though the implementations are logically equivalent, they would have very different timings when performing benchmark testing. Write a function `revstring(mystr)` that uses a stack to reverse the characters in a string. You may want to check out the docs for isEmpty an error will occur class Stack:
     def __init__(self):
         self.items = []

     def isEmpty(self):
         return self.items == []

     def push(self, item):
         self.items.append(item)

     def pop(self):
         return self.items.pop()

     def peek(self):
         return self.items[len(self.items)-1]

     def size(self):
         return len(self.items) data-caption='Implementing a Stack class using Python lists' from pythonds.basic.stack import Stack

s=Stack()

print(s.isEmpty())
s.push(4)
s.push('dog')
print(s.peek())
s.push(True)
print(s.size())
print(s.isEmpty())
s.push(8.4)
print(s.pop())
print(s.pop())
print(s.size()) from test import testEqual
from pythonds.basic.stack import Stack

def revstring(mystr):
    # your code here

testEqual(revstring('apple'),'elppa')
testEqual(revstring('x'),'x')
testEqual(revstring('1234567890'),'0987654321') m = Stack()
m.push('x')
m.push('y')
m.pop()
m.push('z')
m.peek() m = Stack()
m.push('x')
m.push('y')
m.push('z')
while not m.isEmpty():
   m.pop()
   m.pop() the stack is empty 