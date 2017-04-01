��          �                      �  +  V   �  ?     Q  ]     �    �  )  �  
   

     
  �  *
  T  �  �  -  �    �   �  w  ?     �  �  �  V   `  ?   �  Q  �     I    \  )  z  
   �     �  �  �  T  r   �  �"  �  �&  �   B(   **Listing 1** <div id="monkeyvid" class="video_popup" >
<video controls preload="none"  poster="../_static/videothumb.png">
    <source src="http://media.interactivepython.org/pythondsVideos/monkeys.mov" type="video/mp4"></source>
    <source src="http://media.interactivepython.org/pythondsVideos/monkeys.webm" type="video/webm"></source>
    No supported video types
</video>
</div>
<script>
   jQuery(function($) {
      var rb = new RunestoneBase();
      $('#monkeyvid_thumb').click(function(e) {
         $('#monkeyvid').show();
         $('#monkeyvid_thumb').hide();
         rb.logBookEvent({'event':'video','act':'play','div_id': 'monkeyvid'});
         // Log the run event
      });
      $('#monkeyvid video').one("click", function(){
        this.play();
      });
      $('#monkeyvid video').one("play", function(){
        rb.logBookEvent({'event':'video','act':'play','div_id': 'monkeyvid'});
      });
   });
</script>
 >>> def square(n):
...    return n**2
...
>>> square(3)
9
>>> square(square(3))
81
>>> >>>squareroot(9)
3.0
>>>squareroot(4563)
67.549981495186216
>>> A third function will repeatedly call generate and score, then if 100% of the letters are correct we are done.  If the letters are not correct then we will generate a whole new string.To make it easier to follow your program's progress this third function should print out the best string generated so far and its score every 1000 tries. Defining Functions Here's a self check that really covers everything so far.  You may have heard of the infinite monkey theorem?  The theorem states that a monkey hitting keys at random on a typewriter keyboard for an infinite amount of time will almost surely type a given text, such as the complete works of William Shakespeare.  Well, suppose we replace a monkey with a Python function.  How long do you think it would take for a Python function to generate just one sentence of Shakespeare?  The sentence we'll shoot for is:  "methinks it is like a weasel" See if you can improve upon the program in the self check by keeping letters that are correct and only modifying one character in the best string so far.  This is a type of algorithm in the class of 'hill climbing' algorithms, that is we only keep the result if it is better than the previous one. Self Check Self Check Challenge The earlier example of procedural abstraction called upon a Python function called ``sqrt`` from the math module to compute the square root. In general, we can hide the details of any computation by defining a function. A function definition requires a name, a group of parameters, and a body. It may also explicitly return a value. For example, the simple function defined below returns the square of the value you pass into it. The syntax for this function definition includes the name, ``square``, and a parenthesized list of formal parameters. For this function, ``n`` is the only formal parameter, which suggests that ``square`` needs only one piece of data to do its work. The details, hidden “inside the box,” simply compute the result of ``n**2`` and return it. We can invoke or call the ``square`` function by asking the Python environment to evaluate it, passing an actual parameter value, in this case, ``3``. Note that the call to ``square`` returns an integer that can in turn be passed to another invocation. We could implement our own square root function by using a well-known technique called “Newton’s Method.” Newton’s Method for approximating square roots performs an iterative computation that converges on the correct value. The equation :math:`newguess = \frac {1}{2} * (oldguess + \frac {n}{oldguess})` takes a value :math:`n` and repeatedly guesses the square root by making each :math:`newguess` the :math:`oldguess` in the subsequent iteration. The initial guess used here is :math:`\frac {n}{2}`. :ref:`Listing 1 <lst_root>` shows a function definition that accepts a value :math:`n` and returns the square root of :math:`n` after making 20 guesses. Again, the details of Newton’s Method are hidden inside the function definition and the user does not have to know anything about the implementation to use the function for its intended purpose. :ref:`Listing 1 <lst_root>` also shows the use of the # character as a comment marker. Any characters that follow the # on a line are ignored. You're not going to want to run this one in the browser, so fire up your favorite Python IDE.  The way we'll simulate this is to write a function that generates a string that is 27 characters long by choosing random letters from the 26 letters in the alphabet plus the space.  We'll write another function that will score each generated string by comparing the randomly generated string to the goal. def squareroot(n):
    root = n/2    #initial guess will be 1/2 of n
    for k in range(20):
        root = (1/2)*(root + (n / root))

    return root Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 **Listing 1** <div id="monkeyvid" class="video_popup" >
<video controls preload="none"  poster="../_static/videothumb.png">
    <source src="http://media.interactivepython.org/pythondsVideos/monkeys.mov" type="video/mp4"></source>
    <source src="http://media.interactivepython.org/pythondsVideos/monkeys.webm" type="video/webm"></source>
    No supported video types
</video>
</div>
<script>
   jQuery(function($) {
      var rb = new RunestoneBase();
      $('#monkeyvid_thumb').click(function(e) {
         $('#monkeyvid').show();
         $('#monkeyvid_thumb').hide();
         rb.logBookEvent({'event':'video','act':'play','div_id': 'monkeyvid'});
         // Log the run event
      });
      $('#monkeyvid video').one("click", function(){
        this.play();
      });
      $('#monkeyvid video').one("play", function(){
        rb.logBookEvent({'event':'video','act':'play','div_id': 'monkeyvid'});
      });
   });
</script>
 >>> def square(n):
...    return n**2
...
>>> square(3)
9
>>> square(square(3))
81
>>> >>>squareroot(9)
3.0
>>>squareroot(4563)
67.549981495186216
>>> A third function will repeatedly call generate and score, then if 100% of the letters are correct we are done.  If the letters are not correct then we will generate a whole new string.To make it easier to follow your program's progress this third function should print out the best string generated so far and its score every 1000 tries. Defining Functions Here's a self check that really covers everything so far.  You may have heard of the infinite monkey theorem?  The theorem states that a monkey hitting keys at random on a typewriter keyboard for an infinite amount of time will almost surely type a given text, such as the complete works of William Shakespeare.  Well, suppose we replace a monkey with a Python function.  How long do you think it would take for a Python function to generate just one sentence of Shakespeare?  The sentence we'll shoot for is:  "methinks it is like a weasel" See if you can improve upon the program in the self check by keeping letters that are correct and only modifying one character in the best string so far.  This is a type of algorithm in the class of 'hill climbing' algorithms, that is we only keep the result if it is better than the previous one. Self Check Self Check Challenge The earlier example of procedural abstraction called upon a Python function called ``sqrt`` from the math module to compute the square root. In general, we can hide the details of any computation by defining a function. A function definition requires a name, a group of parameters, and a body. It may also explicitly return a value. For example, the simple function defined below returns the square of the value you pass into it. The syntax for this function definition includes the name, ``square``, and a parenthesized list of formal parameters. For this function, ``n`` is the only formal parameter, which suggests that ``square`` needs only one piece of data to do its work. The details, hidden “inside the box,” simply compute the result of ``n**2`` and return it. We can invoke or call the ``square`` function by asking the Python environment to evaluate it, passing an actual parameter value, in this case, ``3``. Note that the call to ``square`` returns an integer that can in turn be passed to another invocation. We could implement our own square root function by using a well-known technique called “Newton’s Method.” Newton’s Method for approximating square roots performs an iterative computation that converges on the correct value. The equation :math:`newguess = \frac {1}{2} * (oldguess + \frac {n}{oldguess})` takes a value :math:`n` and repeatedly guesses the square root by making each :math:`newguess` the :math:`oldguess` in the subsequent iteration. The initial guess used here is :math:`\frac {n}{2}`. :ref:`Listing 1 <lst_root>` shows a function definition that accepts a value :math:`n` and returns the square root of :math:`n` after making 20 guesses. Again, the details of Newton’s Method are hidden inside the function definition and the user does not have to know anything about the implementation to use the function for its intended purpose. :ref:`Listing 1 <lst_root>` also shows the use of the # character as a comment marker. Any characters that follow the # on a line are ignored. You're not going to want to run this one in the browser, so fire up your favorite Python IDE.  The way we'll simulate this is to write a function that generates a string that is 27 characters long by choosing random letters from the 26 letters in the alphabet plus the space.  We'll write another function that will score each generated string by comparing the randomly generated string to the goal. def squareroot(n):
    root = n/2    #initial guess will be 1/2 of n
    for k in range(20):
        root = (1/2)*(root + (n / root))

    return root 