# Solution to Questions

## 1. NeelumAJK

### 1.1. Tokenized String

$$(N), (ee), (lum), (A), (J), (K)$$

### 1.2. Length

$$|s| = 6$$

---

## 2. Proofs

### $$2.1. \space (S^+)^+ = S^+$$

Since $S^+$ generate all possible strings that can be obtained by concatenating the strings of S, so $(S^+)^+$ generates all possible strings that can b obtained by concatenating the strings of $S^+$, will not generate the new string, So

$$\boxed{(S^+)^+ = S^+}$$
---

## 3. Recursive Definition

### 3.1. Exactly 11

#### Step 1

11 is in L

#### Step 2

S (11) S is in L, Where S belongs to $2^*$.

#### Step 3

All words except those constructed using above two rules are in L.

---

### 3.2. Containing 11 or 22

#### Step 1

11 and 22 are in L

#### Step 2

S (11) S and S (22) S are in L, Where S belongs to $\sum^*$.

#### Step 3

All words except those constructed using above two rules are in L.

---
