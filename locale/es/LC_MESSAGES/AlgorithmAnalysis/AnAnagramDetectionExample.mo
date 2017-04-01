��    +      t              �  �  �  y  �  (   #  �  L     #
  �  @
  �   <  �  �  I   �  ,  /  #   \  x   �  �   �  |  �  �        �     �     �     �  �  �  �  I  G   �  F     F   Z  
   �     �     �     �     �  _     �  x  v  !     �      �     �  �  �  Z  �  �  H!  -   #  H   @#  K   �#  U   �#  w  +$  �  �%  y  (  (   �*  �  "+     �,  �  -  �   /  �  �/  I   �1  ,  2  #   23  x   V3  �   �3  |  Z4  �   �5     �6     �6     �6     �6  �  �6  �  9  G   �;  F   �;  F   0<  
   w<     �<     �<     �<     �<  _   �<  �  N=  v  �>     n@      �@     �@  �  �@  Z  �B  �  D  -   �E  H   F  K   _F  U   �F   A **brute force** technique for solving a problem typically tries to exhaust all possibilities. For the anagram detection problem, we can simply generate a list of all possible strings using the characters from ``s1`` and then see if ``s2`` occurs. However, there is a difficulty with this approach. When generating all possible strings from ``s1``, there are *n* possible first characters, :math:`n-1` possible characters for the second position, :math:`n-2` for the third, and so on. The total number of candidate strings is :math:`n*(n-1)*(n-2)*...*3*2*1`, which is :math:`n!`. Although some of the strings may be duplicates, the program cannot know this ahead of time and so it will still generate :math:`n!` different strings. A good example problem for showing algorithms with different orders of magnitude is the classic anagram detection problem for strings. One string is an anagram of another if the second is simply a rearrangement of the first. For example, ``'heart'`` and ``'earth'`` are anagrams. The strings ``'python'`` and ``'typhon'`` are anagrams as well. For the sake of simplicity, we will assume that the two strings in question are of equal length and that they are made up of symbols from the set of 26 lowercase alphabetic characters. Our goal is to write a boolean function that will take two strings and return whether they are anagrams. A singly nested loop like this is O(n^2) Again, the solution has a number of iterations. However, unlike the first solution, none of them are nested. The first two iterations used to count the characters are both based on *n*. The third iteration, comparing the two lists of counts, always takes 26 steps since there are 26 possible characters in the strings. Adding it all up gives us :math:`T(n)=2n+26` steps. That is :math:`O(n)`. We have found a linear order of magnitude algorithm for solving this problem. An Anagram Detection Example Another solution to the anagram problem will make use of the fact that even though ``s1`` and ``s2`` are different, they are anagrams only if they consist of exactly the same characters. So, if we begin by sorting each string alphabetically, from a to z, we will end up with the same string if the original two strings are anagrams. :ref:`ActiveCode 2 <lst_ana2>` shows this solution. Again, in Python we can use the built-in ``sort`` method on lists by simply converting each string to a list at the start. As :math:`n` gets large, the :math:`n^{2}` term will dominate the :math:`n` term and the :math:`\frac {1}{2}` can be ignored. Therefore, this solution is :math:`O(n^{2})`. At first glance you may be tempted to think that this algorithm is :math:`O(n)`, since there is one simple iteration to compare the *n* characters after the sorting process. However, the two calls to the Python ``sort`` method are not without their own cost. As we will see in a later chapter, sorting is typically either :math:`O(n^{2})` or :math:`O(n\log n)`, so the sorting operations dominate the iteration. In the end, this algorithm will have the same order of magnitude as that of the sorting process. Be careful, in counting loops you want to make sure the loops are nested. Before leaving this example, we need to say something about space requirements. Although the last solution was able to run in linear time, it could only do so by using additional storage to keep the two lists of character counts. In other words, this algorithm sacrificed space in order to gain time. Check again, is this a nested loop? Even though there are two loops they are not nested.  You might think of this as O(2n) but we can ignore the constant 2. In an example like this you want to count the nested loops. especially the loops that are dependent on the same variable, in this case, n. It turns out that :math:`n!` grows even faster than :math:`2^{n}` as *n* gets large. In fact, if ``s1`` were 20 characters long, there would be :math:`20!=2,432,902,008,176,640,000` possible candidate strings. If we processed one possibility every second, it would still take us 77,146,816,596 years to go through the entire list. This is probably not going to be a good solution. Look carefully at the loop variable i.  Notice that the value of i is cut in half each time through the loop.  This is a big hint that the performance is better than O(n) O(log n) O(n) O(n^2) O(n^3) Our final solution to the anagram problem takes advantage of the fact that any two anagrams will have the same number of a’s, the same number of b’s, the same number of c’s, and so on. In order to decide whether two strings are anagrams, we will first count the number of times each character occurs. Since there are 26 possible characters, we can use a list of 26 counters, one for each possible character. Each time we see a particular character, we will increment the counter at that position. In the end, if the two lists of counters are identical, the strings must be anagrams. :ref:`ActiveCode 3 <lst_ana4>` shows this solution. Our first solution to the anagram problem will check to see that each character in the first string actually occurs in the second. If it is possible to “checkoff” each character, then the two strings must be anagrams. Checking off a character will be accomplished by replacing it with the special Python value ``None``. However, since strings in Python are immutable, the first step in the process will be to convert the second string to a list. Each character from the first string can be checked against the characters in the list and if found, checked off by replacement. :ref:`ActiveCode 1 <lst_anagramSolution>` shows this function. Q-1: Given the following code fragment, what is its Big-O running time? Q-2: Given the following code fragment what is its Big-O running time? Q-3: Given the following code fragment what is its Big-O running time? Self Check Solution 1: Checking Off Solution 2: Sort and Compare Solution 3: Brute Force Solution 4: Count and Compare The value of i is cut in half each time through the loop so it will only take log n iterations. This is a common occurrence. On many occasions you will need to make decisions between time and space trade-offs. In this case, the amount of extra space is not significant. However, if the underlying alphabet had millions of characters, there would be more concern. As a computer scientist, when given a choice of algorithms, it will be up to you to determine the best use of computing resources given a particular problem. To analyze this algorithm, we need to note that each of the *n* characters in ``s1`` will cause an iteration through up to *n* characters in the list from ``s2``. Each of the *n* positions in the list will be visited once to match a character from ``s1``. The number of visits then becomes the sum of the integers from 1 to *n*. We stated earlier that this can be written as data-caption='Checking Off' data-caption='Count and Compare' data-caption='Sort and Compare' def anagramSolution1(s1,s2):
    alist = list(s2)

    pos1 = 0
    stillOK = True

    while pos1 < len(s1) and stillOK:
        pos2 = 0
        found = False
        while pos2 < len(alist) and not found:
            if s1[pos1] == alist[pos2]:
                found = True
            else:
                pos2 = pos2 + 1

        if found:
            alist[pos2] = None
        else:
            stillOK = False

        pos1 = pos1 + 1

    return stillOK

print(anagramSolution1('abcd','dcba')) def anagramSolution2(s1,s2):
    alist1 = list(s1)
    alist2 = list(s2)

    alist1.sort()
    alist2.sort()

    pos = 0
    matches = True

    while pos < len(s1) and matches:
        if alist1[pos]==alist2[pos]:
            pos = pos + 1
        else:
            matches = False

    return matches

print(anagramSolution2('abcde','edcba')) def anagramSolution4(s1,s2):
    c1 = [0]*26
    c2 = [0]*26

    for i in range(len(s1)):
        pos = ord(s1[i])-ord('a')
        c1[pos] = c1[pos] + 1

    for i in range(len(s2)):
        pos = ord(s2[i])-ord('a')
        c2[pos] = c2[pos] + 1

    j = 0
    stillOK = True
    while j<26 and stillOK:
        if c1[j]==c2[j]:
            j = j + 1
        else:
            stillOK = False

    return stillOK

print(anagramSolution4('apple','pleap')) i = n
while i > 0:
   k = 2 + 2
   i = i // 2 log n typically is indicated when the problem is iteratvely made smaller test = 0
for i in range(n):
   for j in range(n):
      test = test + i * j test = 0
for i in range(n):
   test = test + 1

for j in range(n):
   test = test - 1 Project-Id-Version: Problem Solving with Algorithms and Data Structures 3.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-04-01 14:03-0300
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: LANGUAGE <LL@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.4.0
 A **brute force** technique for solving a problem typically tries to exhaust all possibilities. For the anagram detection problem, we can simply generate a list of all possible strings using the characters from ``s1`` and then see if ``s2`` occurs. However, there is a difficulty with this approach. When generating all possible strings from ``s1``, there are *n* possible first characters, :math:`n-1` possible characters for the second position, :math:`n-2` for the third, and so on. The total number of candidate strings is :math:`n*(n-1)*(n-2)*...*3*2*1`, which is :math:`n!`. Although some of the strings may be duplicates, the program cannot know this ahead of time and so it will still generate :math:`n!` different strings. A good example problem for showing algorithms with different orders of magnitude is the classic anagram detection problem for strings. One string is an anagram of another if the second is simply a rearrangement of the first. For example, ``'heart'`` and ``'earth'`` are anagrams. The strings ``'python'`` and ``'typhon'`` are anagrams as well. For the sake of simplicity, we will assume that the two strings in question are of equal length and that they are made up of symbols from the set of 26 lowercase alphabetic characters. Our goal is to write a boolean function that will take two strings and return whether they are anagrams. A singly nested loop like this is O(n^2) Again, the solution has a number of iterations. However, unlike the first solution, none of them are nested. The first two iterations used to count the characters are both based on *n*. The third iteration, comparing the two lists of counts, always takes 26 steps since there are 26 possible characters in the strings. Adding it all up gives us :math:`T(n)=2n+26` steps. That is :math:`O(n)`. We have found a linear order of magnitude algorithm for solving this problem. An Anagram Detection Example Another solution to the anagram problem will make use of the fact that even though ``s1`` and ``s2`` are different, they are anagrams only if they consist of exactly the same characters. So, if we begin by sorting each string alphabetically, from a to z, we will end up with the same string if the original two strings are anagrams. :ref:`ActiveCode 2 <lst_ana2>` shows this solution. Again, in Python we can use the built-in ``sort`` method on lists by simply converting each string to a list at the start. As :math:`n` gets large, the :math:`n^{2}` term will dominate the :math:`n` term and the :math:`\frac {1}{2}` can be ignored. Therefore, this solution is :math:`O(n^{2})`. At first glance you may be tempted to think that this algorithm is :math:`O(n)`, since there is one simple iteration to compare the *n* characters after the sorting process. However, the two calls to the Python ``sort`` method are not without their own cost. As we will see in a later chapter, sorting is typically either :math:`O(n^{2})` or :math:`O(n\log n)`, so the sorting operations dominate the iteration. In the end, this algorithm will have the same order of magnitude as that of the sorting process. Be careful, in counting loops you want to make sure the loops are nested. Before leaving this example, we need to say something about space requirements. Although the last solution was able to run in linear time, it could only do so by using additional storage to keep the two lists of character counts. In other words, this algorithm sacrificed space in order to gain time. Check again, is this a nested loop? Even though there are two loops they are not nested.  You might think of this as O(2n) but we can ignore the constant 2. In an example like this you want to count the nested loops. especially the loops that are dependent on the same variable, in this case, n. It turns out that :math:`n!` grows even faster than :math:`2^{n}` as *n* gets large. In fact, if ``s1`` were 20 characters long, there would be :math:`20!=2,432,902,008,176,640,000` possible candidate strings. If we processed one possibility every second, it would still take us 77,146,816,596 years to go through the entire list. This is probably not going to be a good solution. Look carefully at the loop variable i.  Notice that the value of i is cut in half each time through the loop.  This is a big hint that the performance is better than O(n) O(log n) O(n) O(n^2) O(n^3) Our final solution to the anagram problem takes advantage of the fact that any two anagrams will have the same number of a’s, the same number of b’s, the same number of c’s, and so on. In order to decide whether two strings are anagrams, we will first count the number of times each character occurs. Since there are 26 possible characters, we can use a list of 26 counters, one for each possible character. Each time we see a particular character, we will increment the counter at that position. In the end, if the two lists of counters are identical, the strings must be anagrams. :ref:`ActiveCode 3 <lst_ana4>` shows this solution. Our first solution to the anagram problem will check to see that each character in the first string actually occurs in the second. If it is possible to “checkoff” each character, then the two strings must be anagrams. Checking off a character will be accomplished by replacing it with the special Python value ``None``. However, since strings in Python are immutable, the first step in the process will be to convert the second string to a list. Each character from the first string can be checked against the characters in the list and if found, checked off by replacement. :ref:`ActiveCode 1 <lst_anagramSolution>` shows this function. Q-1: Given the following code fragment, what is its Big-O running time? Q-2: Given the following code fragment what is its Big-O running time? Q-3: Given the following code fragment what is its Big-O running time? Self Check Solution 1: Checking Off Solution 2: Sort and Compare Solution 3: Brute Force Solution 4: Count and Compare The value of i is cut in half each time through the loop so it will only take log n iterations. This is a common occurrence. On many occasions you will need to make decisions between time and space trade-offs. In this case, the amount of extra space is not significant. However, if the underlying alphabet had millions of characters, there would be more concern. As a computer scientist, when given a choice of algorithms, it will be up to you to determine the best use of computing resources given a particular problem. To analyze this algorithm, we need to note that each of the *n* characters in ``s1`` will cause an iteration through up to *n* characters in the list from ``s2``. Each of the *n* positions in the list will be visited once to match a character from ``s1``. The number of visits then becomes the sum of the integers from 1 to *n*. We stated earlier that this can be written as data-caption='Checking Off' data-caption='Count and Compare' data-caption='Sort and Compare' def anagramSolution1(s1,s2):
    alist = list(s2)

    pos1 = 0
    stillOK = True

    while pos1 < len(s1) and stillOK:
        pos2 = 0
        found = False
        while pos2 < len(alist) and not found:
            if s1[pos1] == alist[pos2]:
                found = True
            else:
                pos2 = pos2 + 1

        if found:
            alist[pos2] = None
        else:
            stillOK = False

        pos1 = pos1 + 1

    return stillOK

print(anagramSolution1('abcd','dcba')) def anagramSolution2(s1,s2):
    alist1 = list(s1)
    alist2 = list(s2)

    alist1.sort()
    alist2.sort()

    pos = 0
    matches = True

    while pos < len(s1) and matches:
        if alist1[pos]==alist2[pos]:
            pos = pos + 1
        else:
            matches = False

    return matches

print(anagramSolution2('abcde','edcba')) def anagramSolution4(s1,s2):
    c1 = [0]*26
    c2 = [0]*26

    for i in range(len(s1)):
        pos = ord(s1[i])-ord('a')
        c1[pos] = c1[pos] + 1

    for i in range(len(s2)):
        pos = ord(s2[i])-ord('a')
        c2[pos] = c2[pos] + 1

    j = 0
    stillOK = True
    while j<26 and stillOK:
        if c1[j]==c2[j]:
            j = j + 1
        else:
            stillOK = False

    return stillOK

print(anagramSolution4('apple','pleap')) i = n
while i > 0:
   k = 2 + 2
   i = i // 2 log n typically is indicated when the problem is iteratvely made smaller test = 0
for i in range(n):
   for j in range(n):
      test = test + i * j test = 0
for i in range(n):
   test = test + 1

for j in range(n):
   test = test - 1 