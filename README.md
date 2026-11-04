# Mobile Accessories Shop - Sales Analysis (SQL)

A small SQL project to practice basic queries. I took sales data of a mobile accessories shop (3 months) and tried to answer simple questions like which products sell the most, how much money came in each month and how customers pay.

The data is made up for practice, so the numbers are not from a real shop.

## Tables

There are only 2 tables.

**products**: product_id, product_name, category, price

**sales**: sale_id, product_id, quantity, sale_date, payment_mode

`sales.product_id` is linked to `products.product_id`, so I used JOIN to get the price of each sold item.
Revenue = quantity x price.

The data has 14 products and 60 sales from January to March 2026.

## Questions I answered

1. Total sales, items sold and total revenue
2. Average value of one sale
3. Revenue by category
4. Top 5 products by items sold
5. Top 5 products by revenue
6. Revenue month by month
7. How customers pay (UPI / Cash / Card)
8. Products that never sold
9. Products with revenue above Rs. 5000
10. Sales divided into small / medium / big

## What I found

- Total revenue is Rs. 46,425 from 60 sales (75 items). One sale is about Rs. 774 on average.
- Charging products (charger, cable, power bank) earn the most, around 42% of total revenue. Audio is second.
- Type-C Cable sold the most items (12), but Power Bank earned the most money (Rs. 9,891) because it costs more.
- March alone is about 63% of the revenue. January was the lowest month.
- UPI is the most used payment mode (35 of 60 sales), then Cash and Card.
- Three products had zero sales: Fitness Band, Selfie Stick and Memory Card 32GB.
- Only 5 sales were "big" (above Rs. 1500). Most sales are small or medium.

## What I would suggest to the shop

- Always keep chargers, cables and power banks in stock.
- Check if the 3 unsold products are worth keeping, or put them on discount.
- Find out why March was so good (festival? offer?) and try to repeat it.

## SQL topics used

SELECT, WHERE, ORDER BY, LIMIT, COUNT, SUM, AVG, GROUP BY, HAVING, JOIN, LEFT JOIN, CASE WHEN

## How to run

1. Open [DB Browser for SQLite](https://sqlitebrowser.org/) and make a new database.
2. Go to the "Execute SQL" tab and run `sql/setup.sql`. This creates the tables and adds the data.
3. Open `sql/queries.sql` and run the queries one by one.

If you use MySQL, change `strftime('%Y-%m', sale_date)` in query 6 to `DATE_FORMAT(sale_date, '%Y-%m')`.

## Files

```
README.md
sql/setup.sql      -> tables and data
sql/queries.sql    -> the 10 queries
```

## What I learned

(Write 3-4 lines here in your own words. For example: what was new for you, which query was hardest, what you want to learn next.)
