# SQL Project Requirements and Solution Mapping

**Source:** IT-2352 Assignments 5 and 6 (course assignment questions).  
**Project type:** Academic SQL exercises using MySQL Workbench.  
**Note:** The requirements below are paraphrased for portfolio documentation rather than reproducing the instructor's full assignment text. The original `.sql` source files have not been changed.

## Assignment 5 — Querying and transforming data

| Part | Required task | Submitted SQL approach | Review note |
|---|---|---|---|
| 1 — Customer email parsing | Retrieve email, its length, `@` position, username, and domain from the `guitar_shop` customer table | `LENGTH`, `LOCATE`, `SUBSTRING_INDEX` on `customers` | The query demonstrates all requested derived columns; running it requires selecting the appropriate database. |
| 2 — Vendor string formatting | Return trimmed uppercase vendor name, last four telephone digits, and the second word of multiword vendor names | `UPPER`, `TRIM`, `RIGHT`, nested `SUBSTRING_INDEX` | The query also includes original name and phone for reference. |
| 3 — Invoice categories | Combine invoice and vendor data; replace missing phone values; label invoices High when total > $1,500, otherwise Low (including exactly $1,500) | `INNER JOIN`, `COALESCE`, `CASE` | **Difference:** Original `CASE` uses `< 1500`, not `<= 1500`, so exactly $1,500 is unclassified. |
| 4 — Category-specific sale prices | For guitars (`category_id = 1`), reduce list price by each product's `discount_percent`; other product prices remain unchanged; round to two decimals | `IF`, `ROUND`, `GROUP BY` | **Difference:** Original query uses a fixed 30% reduction (`list_price * .70`) rather than each product's `discount_percent`, and yields a blank for non-guitars. |

## Assignment 6 — Maintaining course data

| Part | Required task | Submitted SQL approach | Review note |
|---|---|---|---|
| 1 — Add instructor | Insert instructor 4, Harriet H, explicitly identifying the minimum required columns | `INSERT INTO instructors VALUES (...)` | The values match the requested new record, but the original statement does **not** name the columns explicitly. |
| 2 — Add courses | Insert History 101 (1200), History 102 (1210), and History 103 (1220); leave History 103's instructor unassigned | Multirow `INSERT` with `NULL` | Matches the listed values, subject to database schema and execution. |
| 3 — Assign a course | Change only course 1220 to instructor 3 | `UPDATE` with `WHERE course_number = 1220` | Targeting is explicit. |
| 4 — Assign two courses | Assign courses 1120 and 1130 to instructor 3 with one update | `UPDATE` with `WHERE course_number IN (1120, 1130)` | Both course numbers are targeted in one statement. |
| 5 — Cancel a course | Delete only History 103 (course 1220) | `DELETE` with `WHERE course_number = 1220` | Targets the requested course. |
| 6 — Investigate deletion restrictions | Attempt deletion of courses 1000 and 1010 and explain what happens | Screenshot and separate original reflection | This step is not present in the reconstructed SQL file. The reflection suggests references from another table, but does not independently confirm a specific constraint. |

## What this project demonstrates

- Translating written requirements into `SELECT`, `JOIN`, transformation, conditional, and data-modification SQL.
- Extracting reusable attributes from customer and vendor text fields.
- Handling missing phone data and defining invoice-reporting categories.
- Using targeted `WHERE` clauses when changing relational records.
- Reviewing query logic against exact business rules and identifying boundary-case mismatches.

## Reproducibility and limitations

The original database setup scripts and full dataset were not provided, so total row counts, full schema, and actual execution outcomes are not independently verified. The original submitted code is preserved as written and should not be represented as an error-free, standalone executable project. Any corrections can be maintained in clearly labeled separate files, leaving the academic originals unchanged.
