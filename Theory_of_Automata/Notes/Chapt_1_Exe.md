# $$\boxed{\text{Solution to Questions}}$$

## 1. Consider the language S*, where S = {a, b}. How many words does this language have of length 2? of length 3? of length n?

**Formula For finding the words of specific length:**

$$\text{Number of words} = (\text{Number of letters})^ {(WordLength )}$$

For given problem we have $$\boxed{\text{Number of Letters = 2}}$$
$$\boxed{\text{WordLength} = 2,3,n}$$
By using above formula I can find the total number of words of length 2,3 and n.

**Length** $2: 2^2 = 4$
**Length** $3: 2^3 = 8$
**Length** $n: 2^n = 2^n$

---

## 2. Consider the language S*, where S = {aa, b}. How many words does this language have of length 4? of length 5? of length 6? What can be said in general?

As in the given problem we have some other length words like **'aa'** are of **2** length and **'b'** are of **1** length so here we cannot use the formula like for we have used for above problem.

So what to do?

Let's find the words of length from 0 to 6 then we will write a general view.

**Words of length 0:** /\ = $\boxed{1 word}$
**Words of length 1:** b = $\boxed{1 word}$
**Words of length 2:**
> (Add aa to all words of length 0 $\rArr$ 0 + 2 = 2)
> (Add b to all words of length 1 $\rArr$ 1 + 1 = 2)
$$\boxed{2 \space words}$$

**Words of length 3:**
> (Add aa to all words of length 1 $\rArr$ 1 + 2 = 3)
> (Add b to all words of length 2 $\rArr$ 2 + 1 = 3)
> $$\boxed{3 \space words}$$

**Words of length 4:**

> (Add b to all words of length 3)
> (Add aa to all words of length 2)
> $$\boxed{5 \space words}$$

**Words of length 5:**

> (Add aa to the 3 words of length 3)
> (Add b to the 5 words of length 4)
$$\boxed{8 \space words}$$

**Words of length 6:**

> (Add aa to the 5 words of length 4)
> (Add b to the 8 words of length 5)
$$\boxed{13 \space words}$$

Now in general we have seen something that if

**Case 1: Word ends in `"b"` (length 1)**

If the last block is `"b"`, then the previous part must be a valid word of length $n - 1$

So this gives:

$$
\text{Words of length } n \text{ ending in "b"} = f(n - 1)
$$

**Case 2: Word ends in `"aa"` (length 2)**

If the last block is `"aa"`, then the rest must be a word of length $n - 2$

So this gives:

$$
\text{Words of length } n \text{ ending in "aa"} = f(n - 2)
$$

So the total number of words of length $n$ is:

$$
f(n) = f(n - 1) + f(n - 2)
$$

This is **exactly the Fibonacci recurrence relation!**

Let's define some **Base Cases:**

Now define the first values (base cases):

* $f(0) = 1$: the empty string (length 0) is a valid word
* $f(1) = 1$: only one word: `"b"`

Then:

* $f(2) = f(1) + f(0) = 1 + 1 = 2$ → `"bb"`, `"aa"`
* $f(3) = f(2) + f(1) = 2 + 1 = 3$ → `"bbb"`, `"baa"`, `"abb"`
* and so on...

So:

$$
f(n) = \text{Fibonacci}(n + 1)
$$

Because Fibonacci starts with:

| n   | Fibonacci(n) |
| --- | ------------ |
| 0   | 0            |
| 1   | 1            |
| 2   | 1            |
| 3   | 2            |
| 4   | 3            |
| 5   | 5            |
| 6   | 8            |
| 7   | 13           |
| ... | ...          |

So if:

* $f(0) = 1 = \text{Fib}(1)$
* $f(1) = 1 = \text{Fib}(2)$
* $f(2) = 2 = \text{Fib}(3)$
* …

That means:

$$
f(n) = \text{Fibonacci}(n + 1)
$$

---

## 3. Consider the language S*, where S = {ab ba}. Write out all the words in S* that have seven or fewer letters. Can any word in this language contain the substrings aaa or bbb? What is the smallest word that is not in this language?

### 3.1. All the words in S* that have seven or fewer letters

**Words of length 0:** /\
**Words of length 2:** ab ba
**Words of length 4:** abab abba baab baba
**Words of length 6:** ababab ababba abbaab abbaba baabab baabba babaab bababa

### 3.2. Can any word in this language contain the substrings aaa or bbb?

No words can contain aaa or bbb because every a and b is preceded / followed by a different letter, so one letter can never be surrounded on both sides by the same letter.

### 3.3. What is the smallest word that is not in this language?

a and b are the smallest words / strings not in S*.

---

## 4. Consider the language S*, where S = {a ab ba}. Is the string (abbba) a word in this language? Write out all the words in this language with six or fewer letters. What is another way in which to describe the words in this language? Be careful, this is not simply the language of all words without bbb.

### 4.1. Is the string (abbba) a word in this language?

Let's tokenize the given word i.e. **abbba**.

1. {ab b ba}
While tokenzing we can clearly see that the second token i.e. **b** is not in the language so we can say that the word **abbba** is not in the language.

**OR**

abba is not in S* because each b must be preceded / followed by a.

### 4.2. All the words in this language with six or fewer letters.

Words of length 0: /\ 
Words of length 1: a
Words of length 2: aa ab ba
Words of length 3: aaa aab aba baa
Words of length 4: aaaa aaab aaba abaa abab abba baab baba baaa
Words of length 5: aaaaa aaaab aaaba aabaa aabab aabba abaab ababa abaaa abbaa baaaa baaab baaba babaa
Words of length 6: aaaaaa aaaaab aaaaba aaabaa aaabab aaabba aabaab aababa aabaaa aabbaa abaaaa abaaab abaaba ababaa ababab ababba abbaab abbaba abbaaa baabab baabba babaab bababa babaaa baaaaa baaaab baaaba baabaa

**There are 60 words with 6 or fewer letters.**

### 4.3. What is another way in which to describe the words in this language?

The language is the set of strings over {a, b} where every 'b' is part of either "ab" or "ba", and no standalone "b" or "bb" can appear.

---

## 5. Consider the language S*, where S = {aa aba baa}. Show that the words aabaa, baaabaaa, and baaaaababaaaa are all in this language. Can any word in this language be interpreted as a string of elements from S in two different ways? Can any word in this language have an odd total number of a’s?

### 5.1. Words aabaa, baaabaaa, and baaaaababaaaa are all in this language?

Let's Tokenzie and check them:

#### (a) `aabaa`

Try breaking:

* `aa` + `baa` Yes it is in $S^*$

#### (b) `baaabaaa`

Try breaking:

* `baa` + `aba` + `aa` Yes it is in $S^*$

#### (c) `baaaaababaaaa`

Try:

* `baa` + `aa` + `aba` + `baa` + `aa` Yes it is in $S^*$

All given words are in $S^*$

### 5.2. Can any word in this language be interpreted as a string of elements from S in two different ways?

**No, Only one way is possible.**
Here’s why:

1. All a's must come in pairs — only "aa" is allowed.
2. Every b must be part of either "aba" or "baa".
3. How you split depends on how many a’s come before or between b’s:
   1. If the number of a’s is even, the b is part of "baa"
   2. If odd, the b is part of "aba"

### 5.3. Can any word in this language have an odd total number of a’s?

No word can have an odd total of a’s because all the elements used to build the words have
an even number of a’s.

## 6. 


---

$$\boxed{\color{cyan}{\alef}}$$
