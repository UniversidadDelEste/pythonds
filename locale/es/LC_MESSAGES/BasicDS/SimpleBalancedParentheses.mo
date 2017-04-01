��          �               L     M  "   g     �  -   �     �  9   �     +    J  E  c     �  �   �  {  z  �   �	  �  �
  �   O  7   �      �   2  w  �     K  "   e     �  -   �     �  9   �     )    H  E  a     �  �   �  {  x  �   �  �  �  �   M  7   �      �   0!   ((((((())

()))

(()()(() (()()()())

(((())))

(()((())())) (defun square(n)
     (* n n)) .. image:: BasicDS/Figures/simpleparcheck.png :math:`(5+6)*(7+8)/(4+3)` Compare those with the following, which are not balanced: Figure 4: Matching Parentheses In both of these examples, parentheses must appear in a balanced fashion. **Balanced parentheses** means that each opening symbol has a corresponding closing symbol and the pairs of parentheses are properly nested. Consider the following correctly balanced strings of parentheses: Once you agree that a stack is the appropriate data structure for keeping the parentheses, the statement of the algorithm is straightforward. Starting with an empty stack, process the parenthesis strings from left to right. If a symbol is an opening parenthesis, push it on the stack as a signal that a corresponding closing symbol needs to appear later. If, on the other hand, a symbol is a closing parenthesis, pop the stack. As long as it is possible to pop the stack to match every closing symbol, the parentheses remain balanced. If at any time there is no opening symbol on the stack to match a closing symbol, the string is not balanced properly. At the end of the string, when all symbols have been processed, the stack should be empty. The Python code to implement this algorithm is shown in :ref:`ActiveCode 1 <lst_parcheck1>`. Simple Balanced Parentheses The ability to differentiate between parentheses that are correctly balanced and those that are unbalanced is an important part of recognizing many programming language structures. The challenge then is to write an algorithm that will read a string of parentheses from left to right and decide whether the symbols are balanced. To solve this problem we need to make an important observation. As you process symbols from left to right, the most recent opening parenthesis must match the next closing symbol (see :ref:`Figure 4 <fig_parmatch>`). Also, the first opening symbol processed may have to wait until the very last symbol for its match. Closing symbols match opening symbols in the reverse order of their appearance; they match from the inside out. This is a clue that stacks can be used to solve the problem. This defines a function called ``square`` that will return the square of its argument ``n``. Lisp is notorious for using lots and lots of parentheses. This function, ``parChecker``, assumes that a ``Stack`` class is available and returns a boolean result as to whether the string of parentheses is balanced. Note that the boolean variable ``balanced`` is initialized to ``True`` as there is no reason to assume otherwise at the start. If the current symbol is ``(``, then it is pushed on the stack (lines 9–10). Note also in line 15 that ``pop`` simply removes a symbol from the stack. The returned value is not used since we know it must be an opening symbol seen earlier. At the end (lines 19–22), as long as the expression is balanced and the stack has been completely cleaned off, the string represents a correctly balanced sequence of parentheses. We now turn our attention to using stacks to solve real computer science problems. You have no doubt written arithmetic expressions such as data-caption='Solving the Balanced Parentheses Problem' from pythonds.basic.stack import Stack

def parChecker(symbolString):
    s = Stack()
    balanced = True
    index = 0
    while index < len(symbolString) and balanced:
        symbol = symbolString[index]
        if symbol == "(":
            s.push(symbol)
        else:
            if s.isEmpty():
                balanced = False
            else:
                s.pop()

        index = index + 1

    if balanced and s.isEmpty():
        return True
    else:
        return False

print(parChecker('((()))'))
print(parChecker('(()')) where parentheses are used to order the performance of operations. You may also have some experience programming in a language such as Lisp with constructs like Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 ((((((())

()))

(()()(() (()()()())

(((())))

(()((())())) (defun square(n)
     (* n n)) .. image:: BasicDS/Figures/simpleparcheck.png :math:`(5+6)*(7+8)/(4+3)` Compare those with the following, which are not balanced: Figure 4: Matching Parentheses In both of these examples, parentheses must appear in a balanced fashion. **Balanced parentheses** means that each opening symbol has a corresponding closing symbol and the pairs of parentheses are properly nested. Consider the following correctly balanced strings of parentheses: Once you agree that a stack is the appropriate data structure for keeping the parentheses, the statement of the algorithm is straightforward. Starting with an empty stack, process the parenthesis strings from left to right. If a symbol is an opening parenthesis, push it on the stack as a signal that a corresponding closing symbol needs to appear later. If, on the other hand, a symbol is a closing parenthesis, pop the stack. As long as it is possible to pop the stack to match every closing symbol, the parentheses remain balanced. If at any time there is no opening symbol on the stack to match a closing symbol, the string is not balanced properly. At the end of the string, when all symbols have been processed, the stack should be empty. The Python code to implement this algorithm is shown in :ref:`ActiveCode 1 <lst_parcheck1>`. Simple Balanced Parentheses The ability to differentiate between parentheses that are correctly balanced and those that are unbalanced is an important part of recognizing many programming language structures. The challenge then is to write an algorithm that will read a string of parentheses from left to right and decide whether the symbols are balanced. To solve this problem we need to make an important observation. As you process symbols from left to right, the most recent opening parenthesis must match the next closing symbol (see :ref:`Figure 4 <fig_parmatch>`). Also, the first opening symbol processed may have to wait until the very last symbol for its match. Closing symbols match opening symbols in the reverse order of their appearance; they match from the inside out. This is a clue that stacks can be used to solve the problem. This defines a function called ``square`` that will return the square of its argument ``n``. Lisp is notorious for using lots and lots of parentheses. This function, ``parChecker``, assumes that a ``Stack`` class is available and returns a boolean result as to whether the string of parentheses is balanced. Note that the boolean variable ``balanced`` is initialized to ``True`` as there is no reason to assume otherwise at the start. If the current symbol is ``(``, then it is pushed on the stack (lines 9–10). Note also in line 15 that ``pop`` simply removes a symbol from the stack. The returned value is not used since we know it must be an opening symbol seen earlier. At the end (lines 19–22), as long as the expression is balanced and the stack has been completely cleaned off, the string represents a correctly balanced sequence of parentheses. We now turn our attention to using stacks to solve real computer science problems. You have no doubt written arithmetic expressions such as data-caption='Solving the Balanced Parentheses Problem' from pythonds.basic.stack import Stack

def parChecker(symbolString):
    s = Stack()
    balanced = True
    index = 0
    while index < len(symbolString) and balanced:
        symbol = symbolString[index]
        if symbol == "(":
            s.push(symbol)
        else:
            if s.isEmpty():
                balanced = False
            else:
                s.pop()

        index = index + 1

    if balanced and s.isEmpty():
        return True
    else:
        return False

print(parChecker('((()))'))
print(parChecker('(()')) where parentheses are used to order the performance of operations. You may also have some experience programming in a language such as Lisp with constructs like 