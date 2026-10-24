# SQL Database Querying & Management

**MySQL | MySQL Workbench | Academic Portfolio Project**

## Project overview

This repository brings together two SQL assignments completed in MySQL Workbench. The exercises demonstrate how SQL can be used to retrieve and format data, combine related tables, classify records, calculate adjusted prices, and modify database records.

The `.sql` files were reconstructed from screenshots of my original submissions. **The original SQL statements and their explanatory comments have been preserved rather than rewritten or optimized.** The submitted PDFs are included so readers can see the original work.

## Skills demonstrated

- **Data retrieval:** `SELECT` statements to inspect tables and return selected fields.
- **String manipulation:** `LENGTH`, `LOCATE`, `SUBSTRING_INDEX`, `UPPER`, `TRIM`, and `RIGHT` to format or extract text.
- **Relational queries:** `INNER JOIN` to combine invoice and vendor records.
- **Conditional logic:** `CASE`, `IF`, and `COALESCE` to categorize values and handle missing phone numbers.
- **Calculations and grouping:** `ROUND` and `GROUP BY` in a product-pricing exercise.
- **Data modification:** `INSERT`, `UPDATE`, and `DELETE` to maintain instructor and course records.

## Assignment breakdown

### Assignment 5 — Querying and transforming data

Four exercises use customer, vendor, invoice, and product tables:

| Exercise | Purpose | Main SQL concepts |
| --- | --- | --- |
| Customer email analysis | Separate email addresses into usernames and domains and inspect string lengths | `LENGTH`, `LOCATE`, `SUBSTRING_INDEX` |
| Vendor data formatting | Standardize vendor names and extract phone-number and name components | `UPPER`, `TRIM`, `RIGHT`, `SUBSTRING_INDEX` |
| Vendor invoice categories | Join invoices to vendors, display contact information, and assign invoice-value categories | `INNER JOIN`, `COALESCE`, `CASE` |
| Product sale-price calculations | Calculate a 30% discount for products in a specified category | `IF`, `ROUND`, `GROUP BY` |

[View Assignment 5 SQL](sql/assignment_5.sql) · [View original submission](assignments/IT-2352%20Assignment%205.pdf)

### Assignment 6 — Modifying relational data

Five exercises work with instructor and course records:

| Exercise | Purpose | Main SQL concepts |
| --- | --- | --- |
| Add an instructor | Insert a new instructor record | `INSERT` |
| Add courses | Insert three course records, including one initially without an instructor | `INSERT`, `NULL` |
| Assign History 103 | Update a course to reference instructor 3 | `UPDATE`, `WHERE` |
| Assign two science courses | Update multiple rows using a course-number filter | `UPDATE`, `IN` |
| Delete History 103 | Attempt to remove a course record | `DELETE`, `WHERE` |

The original submission also contains a short explanation of why a deletion was unsuccessful. That reflection is reproduced separately, without changing the original wording, in [Assignment 6 Reflection](ASSIGNMENT_6_REFLECTION.md).

[View Assignment 6 SQL](sql/assignment_6.sql) · [View original submission](assignments/IT-2352%20Assignment%206.pdf)

## Repository structure

```text
sql-database-coursework/
├── sql/
│   ├── assignment_5.sql
│   └── assignment_6.sql
├── assignments/
│   ├── IT-2352 Assignment 5.pdf
│   └── IT-2352 Assignment 6.pdf
├── ASSIGNMENT_6_REFLECTION.md
└── README.md
```

If a `data/` directory has been added to the repository, it is reserved for future database setup files or permitted sample data; no original course database is included here.

## Reproducing the work

The source code can be opened as text in GitHub or in MySQL Workbench. The coursework references databases such as `moores_guitar_shop`, `ap`, and `courses`, which have been included within the "Data" folder.

To reproduce the exercises, you would need compatible schemas, tables, and data. Some statements intentionally change records; always use a disposable test database or a backup. The source files reflect the original submissions, including any missing statement terminators or other issues.

## Project context and future improvements

These assignments were created as part of my database coursework and are presented as evidence of foundational SQL knowledge. A future iteration could add an independently created sample schema, test data, executable versions of the queries, and documented query results. Those additions would be clearly separated from the preserved original coursework.

---

**Tools:** MySQL, MySQL Workbench, SQL  
**Project type:** Academic coursework / data analytics portfolio
