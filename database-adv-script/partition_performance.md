# 🧱 Bookings Table Partitioning Report

## 🎯 Objective
Optimize queries on the large `Bookings` table by partitioning it based on `start_date`.

---

## ⚙️ Partitioning Strategy
- Used **range partitioning** on the `start_date` column.
- Created monthly partitions for January, February, and March 2024.
- Each partition acts as a separate table under the same schema.

---

## 🔍 Performance Test

### Query Used:
```sql
EXPLAIN ANALYZE
SELECT * FROM Bookings WHERE start_date BETWEEN '2024-02-01' AND '2024-02-28';
Results:
Before Partitioning: Full table scan on the entire Bookings table.

After Partitioning: Query planner scans only the relevant partition (e.g., Bookings_2024_02), significantly reducing execution time.

✅ Observations
Metric	Before Partitioning	After Partitioning
Partitions Scanned	N/A (full scan)	1 (targeted)
Execution Time (mock)	200ms	~50ms
Index Use	Not effective	Effective per partition

📝 Notes
Partitioning is highly effective for large datasets with date-based queries.

Future improvement: Automate partition creation monthly via scripts.