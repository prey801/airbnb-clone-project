# 🧠 Database Normalization to Third Normal Form (3NF)

## ✅ Objective
Ensure the database schema adheres to **Third Normal Form (3NF)** by:
- Eliminating partial and transitive dependencies
- Removing data redundancy
- Ensuring data integrity

---

## 🔍 Step-by-Step Normalization Process

### 🔹 First Normal Form (1NF)

A table is in 1NF if:
- It has a primary key
- All attributes are atomic (no repeating groups or arrays)

**✅ All tables satisfy 1NF** — All fields are atomic and each table has a primary key.

---

### 🔹 Second Normal Form (2NF)

A table is in 2NF if:
- It is in 1NF
- All non-key attributes are fully functionally dependent on the whole primary key

**Check for composite keys:**
- All tables have **single-column primary keys (UUID)**  
- Therefore, **no partial dependencies** exist

**✅ All tables satisfy 2NF**

---

### 🔹 Third Normal Form (3NF)

A table is in 3NF if:
- It is in 2NF
- There are **no transitive dependencies** (i.e., non-key attribute depending on another non-key attribute)

#### 🔎 Table-by-Table 3NF Review

---

### 🧍 User Table
- `role`, `email`, `phone_number`, etc., depend only on `user_id`
- No transitive dependencies

**✅ 3NF-compliant**

---

### 🏠 Property Table
- `host_id` is a foreign key; all other fields depend directly on `property_id`
- No redundancy in location or pricing details observed

**✅ 3NF-compliant**

---

### 📆 Booking Table
- `property_id` and `user_id` are FKs
- `total_price` is derived from `pricepernight` × duration  
  ⚠️ **Possible Denormalization:** Consider not storing `total_price`, but calculating it on the fly
- `status` is atomic

**🛠 Recommendation:**  
If `total_price` is derivable (from `Property.pricepernight` × `DATEDIFF(end_date, start_date)`), remove it to adhere strictly to 3NF.

---

### 💳 Payment Table
- Depends entirely on `booking_id`
- `amount` could be derived from Booking, but stored for financial audit consistency

**✅ 3NF-compliant (Justified redundancy for audit/history)**

---

### 🌟 Review Table
- All fields depend on `review_id`
- No transitive dependency

**✅ 3NF-compliant**

---

### 💬 Message Table
- All fields directly depend on `message_id`
- `sender_id` and `recipient_id` are foreign keys to User

**✅ 3NF-compliant**

---

## 🛠  Adjustments 

| Table    | Field         | Change                                         | Reason                                      |
|----------|---------------|------------------------------------------------|---------------------------------------------|
| Booking  | total_price   | Remove or calculate dynamically via JOIN      | To eliminate derived/transitive dependency  |
| Payment  | amount        | (Keep as is for audit purposes)               | Financial systems benefit from immutability |

---

## ✅ Final Verdict

After review:
- **All tables are currently in 3NF** or **justified slight denormalizations** exist
- Data model adheres to normalization principles
- Minimal redundancy, good use of foreign keys, no transitive dependencies

---

## 📌 Notes
- Denormalization for performance (caching `total_price`) may be acceptable but should be documented.
- Consider adding lookup/reference tables for ENUM fields ( `role`, `status`, `payment_method`) for even stricter normalization and easier extensibility.

