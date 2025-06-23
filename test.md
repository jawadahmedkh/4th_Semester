# Preprations

## 🌟 1. **Alphabets (Σ)**

* **Definition**: A finite **set of symbols**.
* **Notation**: Usually written as **Σ** (sigma).
* **Example**:

  * Σ = {0, 1} → Binary alphabet
  * Σ = {a, b, c, …, z} → English alphabet

🧠 Think of an alphabet as the **basic building blocks**.

---

## 🌟 2. **Strings (Words)**

* **Definition**: A **finite sequence** of symbols from an alphabet.
* **Notation**: Written as **w** (or any variable).
* **Example**:

  * If Σ = {a, b}, then `abba`, `aab`, `b` are **strings**.
  * `aaabbb` is a string of length 6.

💡 A string can be empty too!

---

## 🌟 3. **Empty String (ε)**

* **Symbol**: ε (Greek letter epsilon)
* **Meaning**: A string with **zero symbols**.
* **Length**: |ε| = 0

---

## 🌟 4. **Length of a String**

* **Notation**: |w| = number of symbols in string **w**
* **Examples**:

  * w = `abc` ⇒ |w| = 3
  * w = `aabb` ⇒ |w| = 4
  * w = ε ⇒ |ε| = 0

---

## 🌟 5. **Set of All Strings (Σ\*)**

* **Σ\*** = Set of **all possible strings (including ε)** over Σ.
* **Includes**:

  * ε (empty string)
  * All strings of length 1: `a`, `b`, `c`, …
  * All strings of length 2: `aa`, `ab`, `bc`, …
  * And so on…

### Example:

If Σ = {a, b}, then
Σ\* = {ε, a, b, aa, ab, ba, bb, aaa, aab, aba, …}

---

## 🌟 6. **Words vs Strings**

* In Automata Theory, **word = string**.
* Both mean a **finite sequence** of symbols from Σ.
* No difference, just terminology.

## Summary Table:

| Term             | Definition                            | Example              |       |     |
| ---------------- | ------------------------------------- | -------------------- | ----- | --- |
| **Alphabet (Σ)** | Set of symbols                        | {0,1} or {a,b}       |       |     |
| **String**       | Sequence of symbols from Σ            | `abba`, `101`        |       |     |
| **Empty String** | A string with no symbol               | ε                    |       |     |
| **Length**       | Number of symbols in string           |                      | `abc` | = 3 |
| **Σ\***          | All possible strings from Σ (incl. ε) | {ε, a, b, aa, ab, …} |       |     |

---

## ✅ 1. **What is a String in Automata?**

> A **string** is just a **sequence of symbols** taken **from a given alphabet (Σ)**.

### 🔤 Example:

Let’s say:
**Σ = {a, b}**

Then:

* `a` → a string of length 1
* `ab` → a string of length 2
* `bba` → a string of length 3
* `ε` (empty string) → string of length 0

👉 **Symbols** must come **from Σ only**.

---

## ✅ 2. **How to Count the Length of a String?**

> The **length** is simply the **number of symbols** in the string.

### 🔍 Examples:

| String  | Length |
| ------- | ------ |
| `a`     | 1      |
| `bb`    | 2      |
| `abba`  | 4      |
| `ε`     | 0      |
| `babab` | 5      |

📌 Count every **symbol**, **not letters in English words**, but symbols from the **alphabet Σ**.

---

## ✅ 3. **What Do We Mean by "Tokenizing" in Automata?**

In Automata, **tokenizing** a string often means:

> Breaking it into **individual symbols** from the alphabet.

### 🧠 Example:

Let Σ = {0, 1}

Then:

* String `010` is made up of tokens: `0`, `1`, `0`
  → 3 symbols → Length = **3**

Even if it looks like one chunk, it's really:
→ \[0] \[1] \[0]

---

## ⚠️ Common Confusion:

### ❌ Mistake:

You see a word like `"dog"` and count it as 1 word, so you think:

> Length = 1 ❌

But if Σ = {d, o, g}, then:

✅ `"dog"` = `d`, `o`, `g` → Length = **3**

✅ Each **symbol/character** is counted separately.

---

## ✅ Key Point:

> **Length = Number of symbols from Σ in the string.**

No matter what the word means in English!

---

## 🌟 Let’s Practice Together

If I say:

* Σ = {a, b}
* String = `ababa`

👉 What is the length of this string?

---

## 🧠 Given:

* Σ = {**B**, **aB**, **bab**, **d**}
* s = **BaBbabBd**

You are asking:

> Is this a string over Σ? And if yes, what is its **length**?

---

### ✅ Step 1: Understand Each Symbol in Σ

These are your allowed **symbols** (not characters):

* `B` → a single symbol
* `aB` → a symbol (made of 2 characters)
* `bab` → a symbol (made of 3 characters)
* `d` → a symbol

So here, even though some symbols look like “long words”, they are treated as **one atomic unit**.

---

### ✅ Step 2: Tokenize the String

Now let’s try to **split** `s = BaBbabBd` using only valid symbols from Σ.

Try breaking it down:

```
s = B | aB | bab | B | d
```

✅ All parts are in Σ:

* `B` → in Σ
* `aB` → in Σ
* `bab` → in Σ
* `B` → in Σ
* `d` → in Σ

👉 So the string **is valid** over Σ.

---

### ✅ Step 3: Count the Length

We count the **number of symbols used**, not characters.

In this case:

| Symbol | Count |
| ------ | ----- |
| `B`    | 1     |
| `aB`   | 1     |
| `bab`  | 1     |
| `B`    | 1     |
| `d`    | 1     |

🔢 **Length = 5**

---

## ✅ Final Answer:

* `BaBbabBd` **is a valid string over** Σ = {B, aB, bab, d}
* **Length of the string = 5 symbols**

---

## 🔥 Bonus Tip:

When Σ has **multi-character symbols**, your job is to:

1. Break the string into **valid symbols** from Σ (like tokenization).
2. Count how many **symbols**, not characters.

---

## ✅ Recap: What Is a **Word** in Automata?

In **Automata Theory**:

> A **word** is simply a **string** made up of **symbols from an alphabet Σ**.

So:

* **Word = String**
* Both mean the **same thing** in this context.
* A word is **any valid sequence of symbols** from Σ.

---

## 🧠 In Your Case:

You gave:

* **Σ = {B, aB, bab, d}**
* **String (or word) = `BaBbabBd`**

We already showed:

* This string can be tokenized as:
  → `B` `aB` `bab` `B` `d`

So this string:

* Is made up **only of symbols from Σ** ✅
* Therefore, it **is a valid word** over Σ ✅
* Its **length** (number of symbols) = **5**

---

### ✅ Final Answer:

* `BaBbabBd` is a **word** over Σ = {B, aB, bab, d}
* It is also called a **string** in automata theory
* The word contains **5 symbols** from Σ

---

> 💡 **Bottom line**:
> If a sequence can be made using only the **symbols in Σ**, it is a **word** over Σ.

---

✅ Great observation — and **YES**, you're on the right track now.

Let me **clear it 100%**:

---

## 💡 Strings vs Words in Automata

| Concept           | Definition                                       | Validity                |
| ----------------- | ------------------------------------------------ | ----------------------- |
| **String**        | Any sequence of **symbols or characters**        | Can be valid or invalid |
| **Word (over Σ)** | A string that is made **only from symbols in Σ** | Always valid            |

---

### ✅ So YES:

> 🔸 **All words are valid strings** over Σ
> 🔸 But **not all strings are words** over Σ

---

## 🧠 Example:

Let’s say:

* **Σ = {a, ab, c}**

Now look at this string:

* `abcab`

Can we break it into valid symbols from Σ?

Try:

1. `a` ✅
2. `b` ❌ ← `b` is **not in Σ**

So:

* `abcab` is **not** a valid word over Σ
* It is a **string**, but **not a word** over Σ

---

### ✅ Valid Word Example:

Try: `aabcc`

Break it as:

* `a` ✅
* `a` ✅
* `b` ❌ ← again, invalid

So again: ❌ Not a word

Try: `abac`

* `ab` ✅
* `a` ✅
* `c` ✅ → ✅ Valid word

---

## 🔁 Summary:

| Term       | Valid Over Σ? | Example                                       |
| ---------- | ------------- | --------------------------------------------- |
| **String** | Maybe ✅ or ❌  | `abc`, `xy`, `z`                              |
| **Word**   | Always ✅      | `abac`, `abab`, `c` (only if all symbols ∈ Σ) |

---

## 🔹 Situation:

* Σ = {a, ab, c}
* String = `abcab`
* Goal: Check if `abcab` is a valid **word** over Σ using **tokenization**

---

## 🔎 Step-by-Step: Tokenizing `abcab`

We need to **break it into valid symbols from Σ**, which are:

> `{a, ab, c}`

So we're allowed to pick:

* `a` ✅
* `ab` ✅
* `c` ✅

Let’s try to tokenize `abcab`:

---

### ✅ Attempt 1: Greedy left-to-right

```
abcab
↑ try "ab"? Yes → match ✅
   ab | cab
        ↑ try "c"? Yes → match ✅
            ab | c | ab
                  ↑ "ab"? Yes → match ✅
Final tokenization: ab | c | ab → all in Σ ✅
```

➡️ **Yes! This tokenization works!**

---

## ✅ Final Answer:

* `abcab` **can be tokenized as** `ab`, `c`, `ab`
* Each part is a valid **symbol from Σ**
* So, `abcab` is a **valid word over Σ = {a, ab, c}**

---

## ⚠️ Important Tokenizing Rule:

In Automata, we often use **greedy matching**:

> Always try to match the **longest possible symbol** from left to right.

So:

* At `ab`, match `ab` (not `a` then `b`) — because `b` alone is **not** in Σ.

---

## 🧠 Atomic Value = Symbol in Σ

Each symbol from Σ (like `ab`, `a`, `c`) is considered an **atomic unit**. You can’t break it further when validating a word.

---

## 🔁 Summary:

| Term             | Meaning                                    |
| ---------------- | ------------------------------------------ |
| **Atomic Value** | Each indivisible symbol in Σ               |
| **Tokenizing**   | Breaking a string into symbols from Σ      |
| **Word**         | A string that can be tokenized with Σ only |

---

Awesome question! You're now stepping into the connection between **Automata Theory** and **Compiler Design** — specifically the **Lexical Analyzer (Lexer)**.

Let me explain how a **lexical analyzer** checks if a string is a **valid word** over a given **Σ (alphabet)** — just like you do in Automata.

---

## 🎯 What is a Lexical Analyzer?

> A **lexical analyzer** is the **first phase** of a compiler.
> It reads an **input string (source code)** and breaks it into **valid tokens (words)** based on predefined **lexical rules** (a kind of Σ).

✅ The **tokens** must match the **patterns** defined in the **language grammar or symbol set (Σ)**.

---

## ⚙️ Lexical Analyzer vs Automata

| Automata                            | Lexical Analyzer                             |
| ----------------------------------- | -------------------------------------------- |
| Uses Σ to define valid symbols      | Uses token definitions (keywords, IDs, etc.) |
| Checks if a string is a valid word  | Breaks source code into valid tokens         |
| DFA (Deterministic Finite Automata) | Is built using DFAs internally               |

So a lexer is basically an **automaton (DFA)** that recognizes **valid words/tokens** from a stream of characters.

---

## 📦 PROCESS: How Lexical Analyzer Checks a Word

Let’s go step by step using two examples:

---

### ✅ Example 1: Simple

* **Σ = {int, main, =, +, num, ;}**
* **Input String**: `int num = num + num ;`

👉 Lexer should **tokenize** this as:

| Token | Valid in Σ? |
| ----- | ----------- |
| int   | ✅           |
| num   | ✅           |
| =     | ✅           |
| num   | ✅           |
| +     | ✅           |
| num   | ✅           |
| ;     | ✅           |

➡️ All tokens are valid → ✔️ This is a **valid word** (program statement) over Σ

---

### ❌ Example 2: Complex / Invalid

* **Σ = {int, main, =, +, num, ;}**
* **Input String**: `int numb = num - num ;`

Try tokenizing:

| Token | Valid in Σ? |
| ----- | ----------- |
| int   | ✅           |
| numb  | ❌           |
| =     | ✅           |
| num   | ✅           |
| -     | ❌           |
| num   | ✅           |
| ;     | ✅           |

⚠️ `numb` and `-` are **not in Σ**
➡️ So lexer flags this string as **invalid** ❌

---

## 🧠 What’s Happening Internally?

1. Lexer scans from **left to right**
2. Tries to match the **longest possible valid token**
3. Uses a **DFA** for each token definition (keyword, identifier, operator, etc.)
4. If it finds a symbol that doesn't match any DFA:

   * It reports an **invalid token error**

---

## 🤖 Automata Behind the Scenes

Each token is accepted by a **DFA**.
For example:

* `int` is accepted by DFA1
* `num` by DFA2
* `+` by DFA3, etc.

The lexer runs the **input through all DFAs** in parallel or in order to find the **longest valid match**.

---

## 🧪 Summary: Lexical Analyzer vs Word Checking

| Concept          | Description                                              |
| ---------------- | -------------------------------------------------------- |
| Alphabet (Σ)     | Set of valid symbols/tokens                              |
| String           | Sequence of characters (program code or sentence)        |
| Tokenizing       | Breaking string into symbols from Σ                      |
| Valid Word       | A string that is fully made of valid tokens from Σ       |
| Lexical Analyzer | DFA-based tool to tokenize and validate the input string |

---

## 💡 Want to try?

Here’s a challenge for you:

**Σ = {if, else, id, ==, =, +, ;}**
**String**: `if id == id + id ; else id = id + id ;`

Can you:

1. Tokenize this string
2. Check if all tokens are in Σ?

Reply and I’ll check it for you!

---

Of course! Here's your teacher's statement translated into **clear, simple language**, just like the explanation above:

---

### 🧾 Original Statement:

> “As when the string is scanned by lexical analyzer (compiler) first symbol 'B' is identified as a letter the lexical analyzer would not be able to identify, so while defining an alphabet it should be kept in mind that ambiguity should not be created.”

---

### ✅ Easy Explanation:

> When the **compiler** (lexical analyzer) starts scanning the string from left to right, it sees the first symbol is `B`.
> Now, because `B`, `Ba`, and `bab` are all in the alphabet (Σ), the analyzer might get **confused** — should it pick just `B`, or try for `Ba`?

> If the lexer picks the wrong one first (like just `B`), it may **fail to understand the rest of the string**.

> So, to **avoid this confusion (ambiguity)**, when we **design our alphabet Σ**, we should **not include overlapping symbols** like `B` and `Ba`.

> This makes tokenization clear and avoids errors when recognizing words (valid strings).

---

### 🎯 In One Line:

> **Avoid using symbols in Σ that start with the same letters**, or it will confuse the compiler during scanning.

---

Absolutely! Let's add **reverse of a string** (according to Automata Theory) to your study summary — using **your example** too.

---

## 🔁 Reverse of a String in Automata

### ✅ Definition:

> The **reverse** of a string `w`, written as `w^R`, is the string obtained by **reversing the order of symbols** (not characters) in `w`.

---

### ⚠️ Important:

In Automata, when reversing:

* You reverse **symbols** from **Σ**, **not characters**
* So, tokenization **must come first**

---

## 🧠 Example Based on Your Case:

### Given:

* **Σ = {B, Ba, bab, d}**
* **String s = BababB**

---

### ✅ Step 1: Tokenize

We use the correct tokenization (as discussed earlier):

```
s = (Ba)(bab)(B)
```

---

### ✅ Step 2: Reverse the Tokens

Now reverse the **symbols**, not characters:

```
Original: Ba | bab | B  
Reversed: B | bab | Ba
```

---

### ✅ Step 3: Final Reversed String:

```
Reverse(s) = BbabBa
```

✔️ This is the **reversed string**, made using **symbols from Σ**, in **reverse order**.

---

## 🧪 Summary of Reversal

| Original String | Tokenized as | Reversed Order | Final Reversed String |
| --------------- | ------------ | -------------- | --------------------- |
| `BababB`        | Ba, bab, B   | B, bab, Ba     | `BbabBa`              |

---

### 🧠 Why Not Reverse Characters?

If you did `reverse("BababB")` by character, you'd get:

```
Original: B a b a b B  
Reversed: B b a b a B → Bbabab
```

But this may not tokenize properly based on Σ.

---

## 📌 Automata Rule:

> **Always reverse symbols (tokens), not characters**, especially when Σ contains multi-character symbols.

---
