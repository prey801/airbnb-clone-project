# 🚀 Database Indexing Strategy

## ✅ Objective
Improve query performance by creating indexes on frequently used columns in:
- **Users**
- **Bookings**
- **Properties**

---

## 🔍 Index Candidates

### 🧍‍♂️ Users Table
| Column      | Reason for Index                  |
|-------------|-----------------------------------|
| `email`     | Frequently used for login (WHERE) |
| `user_id`   | Used in JOINs with Bookings, Reviews, Messages |

---

### 📆 Bookings Table
| Column        | Reason for Index                       |
|----------------|----------------------------------------|
| `user_id`      | JOINs with Users                       |
| `property_id`  | JOINs with Properties, WHERE filters   |
| `status`       | Used in filtered queries               |

---

### 🏠 Properties Table
| Column        | Reason for Index                       |
|----------------|----------------------------------------|
| `host_id`      | JOINs with Users                       |
| `location`     | Used in search/filter queries          |
| `property_id`  | JOINs with Bookings, Reviews           |

---

## 🛠 SQL Index Commands

See [`database_index.sql`](database_index.sql) for the actual `CREATE INDEX` statements.

---

## 🧪 Performance Testing with EXPLAIN

### 🔹 Before Index
```sql
EXPLAIN ANALYZE
SELECT * FROM Bookings WHERE user_id = 'uuid-value';
