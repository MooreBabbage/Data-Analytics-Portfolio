-- The purpose of this query is to provide previous customer email addresses. Then strip down the email to the username entered and the domain that their email is registered with.
-- Christopher Moore 10/15/2026

SELECT * FROM moores_guitar_shop.customers;

SELECT
    email_address as "Email",
    length(email_address) as "Length",
    LOCATE('@',email_address) as '@',
    substring_index(email_address, '@', 1) as "Username",
    substring_index(email_address, '@',-1) as "Domain"
FROM customers;

-- The purpose of this query is to locate vendor records and standardize information. We also extract portions of strings which may be useful for a variety of reasons.
-- Christopher Moore 10/15/2026

SELECT * FROM ap.vendors;

SELECT
    vendor_name as "name",
    UPPER(TRIM(vendor_name)) as "Name",
    vendor_phone as "Phone",
    RIGHT(vendor_phone, 4) as 'Last 4 of Phone',
    substring_index(substring_index(vendor_name, ' ', 2), ' ', -1) as "Second Word of Vendor Name"
FROM vendors;

-- The purpose of this query is to display vendors, their contact number, and rank their value based on invoice total.
-- Christopher Moore 10/15/2026

SELECT
    invoice_id,
    vendor_name,
    COALESCE(vendor_phone, "No phone provided") as "Phone",
        CASE
            WHEN invoice_total > 1500 THEN "High"
            WHEN invoice_total < 1500 THEN "Low"
        END as "Value Category"
FROM vendors
INNER JOIN invoices on vendors.vendor_id = invoices.vendor_id

-- The purpose of this query is to display the offered products and mark down their price by 30%.
-- Christopher Moore 10/15/2026

SELECT
    product_name as "Item",
    list_price as "Price",
    ROUND(IF(category_id = 1, list_price*.70, ' '), 2) as "Sale Price"
FROM products
GROUP BY category_id, product_name, list_price
