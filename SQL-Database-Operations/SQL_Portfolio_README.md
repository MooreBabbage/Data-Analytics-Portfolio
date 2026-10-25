# SQL Database Querying & Management

**MySQL · MySQL Workbench · SQL · Academic portfolio project**

## Project Overview

This repository contains two IT-2352 database assignments completed in MySQL Workbench. The work demonstrates how SQL can retrieve and transform relational data, classify invoice values, calculate proposed discounts, and add or change records. The original SQL and comments were reconstructed from screenshots and retained as submitted; the original PDF assignments are included for comparison.

### Business / Analytical Question

**How can SQL turn existing customer, vendor, invoice, and product records into more usable information—and maintain course records accurately?**

These are *skills-based exercises*, not a single business dataset or a completed commercial analysis. The practical questions include how to isolate email domains, standardize vendor details, flag invoice amounts, calculate sale prices, and update course assignments.

## Dataset Scope

| Measure | Documented scope |
|---|---|
| Source assignments | 2 (Assignments 5 and 6) |
| SQL exercise parts | 10 (4 querying/transformation parts and 6 course-data parts, including a troubleshooting question) |
| Referenced databases | `moores_guitar_shop`, `ap`, and `courses` |
| Main tables referenced | `customers`, `vendors`, `invoices`, `products`, `instructors`, `courses` |
| Total rows / database size | **Not established** by the submitted files |
| Data availability | Original databases, full schemas, and underlying records **not included** |

**Why no row count?** The PDF screenshots show selected queries and output samples, but do not verify the complete record count for each table. Reporting a specific dataset size would be misleading. Assignment 6's `INSERT` statement specifies three new course records and one instructor record; these are operations in the script, **not the size of the database**.

## Key Work Demonstrated

| Technical skill | Evidence in the original SQL | Why it matters |
|---|---|---|
| Data retrieval | `SELECT` from customer, vendor, product, and course tables | Accesses relevant fields for review |
| Text cleaning and extraction | `LENGTH`, `LOCATE`, `SUBSTRING_INDEX`, `UPPER`, `TRIM`, `RIGHT` | Converts unstructured text fields into more useful columns |
| Relational joins | `INNER JOIN` between `vendors` and `invoices` | Connects business records across tables |
| Conditional reporting | `CASE`, `COALESCE`, `IF` | Produces readable labels and substitutes for missing contact details |
| Numeric calculation | `ROUND` and an expression for a 30% product discount | Creates a derived price field |
| Database maintenance | `INSERT`, `UPDATE`, `DELETE`, `WHERE`, `IN` | Demonstrates targeted changes to records |

## Methods and Observable Results

### Assignment 5 — Querying and transforming data

Four exercises address separate reporting questions:

1. **Customer emails:** Inspect email-address lengths and split each address into a username and domain. This produces fields that could support data-quality review or domain-based reporting.
2. **Vendor details:** Standardize vendor-name capitalization and spacing, display phone numbers, extract the last four digits, and isolate a word from vendor names. These transformations make existing fields easier to inspect.
3. **Invoice categories:** Join vendors with their invoices, show a phone-number fallback of `No phone provided`, and label invoices **High** if `invoice_total > 1500` or **Low** if `invoice_total < 1500`. **Values exactly equal to 1,500 receive no label in the original `CASE` expression**; the threshold should be clarified before operational use.
4. **Product discounts:** Calculate a proposed **fixed 30% reduction** for products where `category_id = 1`, using `ROUND` to display sale prices. **The assignment instead requested each guitar’s stored `discount_percent` and unchanged non-guitar prices.** This demonstrates a price calculation but not full compliance with the pricing requirement.

### Assignment 6 — Managing instructor and course records

Five parts demonstrate database modifications; a sixth addresses deletion troubleshooting:

1. Write an `INSERT` for **one instructor** (`Harriet H`).
2. Write an `INSERT` for **three courses**: History 101, History 102, and History 103.
3. Update History 103 to reference instructor ID **3**.
4. Update Science course numbers **1120 and 1130** to reference instructor ID **3**.
5. Attempt to delete History 103 (course number **1220**).

A sixth, troubleshooting part asks about deleting course numbers **1000 and 1010**. The original written reflection reports that the rows could not be removed and suggests that another table may reference them. **That is the student's hypothesis, not a confirmed diagnosis**; the underlying database constraints and full error output are not included here.

## Requirements and solution mapping

See [PROJECT_REQUIREMENTS.md](PROJECT_REQUIREMENTS.md) for a part-by-part comparison of the original questions with the preserved SQL. It identifies where the submitted logic differs from the written requirements, without altering the original files.

## Significant Findings and Interpretation

Because these were SQL practice assignments—not an aggregated business analysis—**the evidence supports demonstrated transformations and database operations, not population-level trends or measured business performance**.

- **Vendor and invoice information can be combined** for invoice-level reporting, including readable handling of missing phone values.
- **Invoice segmentation logic does not fully follow the instructor’s threshold rule:** the original query leaves an invoice of exactly **$1,500** unclassified.
- **A fixed 30% sale-price scenario** can be calculated directly from product list prices for the selected product category, but there is no evidence of sales lift, margin, or customer response.
- **Relational dependencies may affect deletions:** the failed delete documented in the assignment indicates a need to inspect database constraints before removing records.

## Practical Decision Supported by the Exercises

**Before adopting the invoice-value report for routine use, update the classification to include invoices of exactly $1,500 in the Low category, as the original requirements specify, and test that boundary explicitly.**

This recommendation comes directly from the mismatch between the required `<= 1500` condition and the submitted `CASE` statement’s `< 1500` condition. It is a specific, testable improvement to reporting completeness—not a claim that the query produced a measured financial result.

For data maintenance, use a **test database and check foreign-key relationships before running `DELETE` or `UPDATE` statements**. This is a sound operational precaution prompted by the documented deletion attempt.

## Repository Contents

```text
sql-database-coursework/
├── sql/
│   ├── assignment_5.sql
│   └── assignment_6.sql
├── assignments/
│   ├── IT-2352 Assignment 5.pdf
│   └── IT-2352 Assignment 6.pdf
├── ASSIGNMENT_6_REFLECTION.md
├── PROJECT_REQUIREMENTS.md
└── README.md
```

- [Assignment 5 — Original SQL source](sql/assignment_5.sql)
- [Assignment 6 — Original SQL source](sql/assignment_6.sql)
- [Assignment 5 — PDF submission](assignments/IT-2352%20Assignment%205.pdf)
- [Assignment 6 — PDF submission](assignments/IT-2352%20Assignment%206.pdf)
- [Original deletion reflection](ASSIGNMENT_6_REFLECTION.md)
- [Requirements and solution mapping](PROJECT_REQUIREMENTS.md)

If present, `data/` is a placeholder for future, appropriately shareable database files; no original course dataset is supplied.

## Reproducibility and Limitations

The original queries and comments were preserved from assignment screenshots, including any missing terminators or other original syntax issues. They **have not been verified against the underlying course databases** and should not be treated as a ready-to-run standalone application. To execute them, a user needs the appropriate MySQL schemas, tables, records, and permissions, and may need to choose the correct database context. The MySQL schemas, tables, records, and permissions may be found within the related "Data" section.

The repository does not provide reliable total record counts, verified aggregate business metrics, or evidence of the effect of a real-world pricing or management decision. 

## Project Context

**Tools:** MySQL, MySQL Workbench  
**Project type:** Academic SQL coursework  
**Skills shown:** Relational querying, data formatting, conditional logic, calculations, and record maintenance
