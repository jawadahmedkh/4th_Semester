# **Q. No. 1: Explain the following Relational Algebra operations with suitable examples**

---

## **1. Natural Join**

* Natural join is used when we have **two tables with one or more same column names**.
* It **joins both tables** using those common columns.
* It **automatically matches** the values of the common column and **removes duplicates**.
* The result shows data from both tables where values of the common column are same.

**Example:**

**Students Table**

| RollNo | Name | Class |
| ------ | ---- | ----- |
| 1      | Ali  | 10    |
| 2      | Sana | 9     |

**Class Table**

| Class | Section |
| ----- | ------- |
| 10    | A       |
| 9     | B       |

**Result of Natural Join (Students ⨝ Class):**

| RollNo | Name | Class | Section |
| ------ | ---- | ----- | ------- |
| 1      | Ali  | 10    | A       |
| 2      | Sana | 9     | B       |

---

## **2. Semi Join**

* Semi Join returns **only matching rows from the first table**.
* It **does not include** any columns from the second table.
* It is used to **check which rows from the first table have matching values** in the second table.

**Example:**

**Customer Table**

| CustID | Name  |
| ------ | ----- |
| 1      | Ahsan |
| 2      | Maria |
| 3      | Jawad |

**Orders Table**

| OrderID | CustID |
| ------- | ------ |
| 101     | 1      |
| 102     | 3      |

**Result of Semi Join (Customer ⋉ Orders):**

| CustID | Name  |
| ------ | ----- |
| 1      | Ahsan |
| 3      | Jawad |

Only those customers are shown who have placed orders.

---

## **3. Theta Join**

Theta join **joins rows** from two tables using **any condition** (like =, <, >, etc).The condition is called **theta (θ)**. It is written as `R ⨝F S` where F is the condition like `R.A > S.B`. It is the **same as first doing a Cartesian product**, and then selecting the rows that satisfy the condition.

**Formula:**
`R ⨝F S = σF (R × S)`

This means:
"Join of R and S with condition F = select rows from Cartesian product of R and S where condition F is true."

**Example:**

**Product Table**

| P\_ID | Price |
| ----- | ----- |
| 1     | 500   |
| 2     | 1000  |

**Discount Table**

| D\_ID | Amount |
| ----- | ------ |
| 1     | 200    |
| 2     | 600    |

If we apply Theta Join with condition: **Price > Amount**, then:

**Product ⨝(Price > Amount) Discount**

**Result:**

| P\_ID | Price | D\_ID | Amount |
| ----- | ----- | ----- | ------ |
| 1     | 500   | 1     | 200    |
| 2     | 1000  | 1     | 200    |
| 2     | 1000  | 2     | 600    |

Only those rows are shown where **Product.Price > Discount.Amount**.

---

