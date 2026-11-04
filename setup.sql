-- setup.sql
-- Tables and data for the Mobile Accessories Shop project

DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id   INTEGER PRIMARY KEY,
    product_name TEXT,
    category     TEXT,
    price        INTEGER      -- price in rupees
);

CREATE TABLE sales (
    sale_id      INTEGER PRIMARY KEY,
    product_id   INTEGER,
    quantity     INTEGER,
    sale_date    DATE,
    payment_mode TEXT,        -- UPI / Cash / Card
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products VALUES
  (1, 'Phone Case', 'Cases', 199),
  (2, 'Tempered Glass', 'Protection', 149),
  (3, 'Charger 20W', 'Charging', 599),
  (4, 'Type-C Cable', 'Charging', 249),
  (5, 'Power Bank 10000mAh', 'Charging', 1099),
  (6, 'Wired Earphones', 'Audio', 299),
  (7, 'Bluetooth Earbuds', 'Audio', 1299),
  (8, 'Bluetooth Speaker', 'Audio', 1499),
  (9, 'Smart Watch', 'Wearables', 1999),
  (10, 'Fitness Band', 'Wearables', 1499),
  (11, 'Phone Stand', 'Accessories', 199),
  (12, 'Selfie Stick', 'Accessories', 349),
  (13, 'Memory Card 32GB', 'Storage', 399),
  (14, 'Pen Drive 64GB', 'Storage', 449);

INSERT INTO sales VALUES
  (1, 4, 1, '2026-01-04', 'Cash'),
  (2, 9, 1, '2026-01-05', 'UPI'),
  (3, 3, 1, '2026-01-06', 'UPI'),
  (4, 3, 1, '2026-01-07', 'UPI'),
  (5, 2, 1, '2026-01-08', 'UPI'),
  (6, 11, 1, '2026-01-09', 'Card'),
  (7, 1, 1, '2026-01-09', 'UPI'),
  (8, 4, 1, '2026-01-14', 'UPI'),
  (9, 6, 1, '2026-01-16', 'Card'),
  (10, 11, 1, '2026-01-17', 'UPI'),
  (11, 14, 1, '2026-01-18', 'Card'),
  (12, 2, 1, '2026-01-22', 'UPI'),
  (13, 6, 2, '2026-01-22', 'UPI'),
  (14, 1, 1, '2026-01-23', 'Cash'),
  (15, 2, 1, '2026-01-24', 'Cash'),
  (16, 3, 1, '2026-01-25', 'UPI'),
  (17, 2, 1, '2026-01-25', 'UPI'),
  (18, 2, 1, '2026-02-02', 'UPI'),
  (19, 6, 1, '2026-02-05', 'UPI'),
  (20, 6, 1, '2026-02-06', 'Cash'),
  (21, 3, 2, '2026-02-06', 'UPI'),
  (22, 3, 1, '2026-02-07', 'UPI'),
  (23, 1, 1, '2026-02-16', 'Cash'),
  (24, 4, 2, '2026-02-18', 'UPI'),
  (25, 2, 1, '2026-02-19', 'UPI'),
  (26, 6, 1, '2026-02-19', 'Card'),
  (27, 1, 1, '2026-02-20', 'UPI'),
  (28, 9, 1, '2026-02-21', 'UPI'),
  (29, 1, 1, '2026-02-21', 'UPI'),
  (30, 8, 1, '2026-02-24', 'UPI'),
  (31, 8, 1, '2026-02-24', 'UPI'),
  (32, 6, 1, '2026-02-27', 'UPI'),
  (33, 4, 3, '2026-02-28', 'UPI'),
  (34, 4, 3, '2026-03-01', 'UPI'),
  (35, 5, 1, '2026-03-02', 'Cash'),
  (36, 3, 1, '2026-03-03', 'Cash'),
  (37, 7, 1, '2026-03-03', 'Cash'),
  (38, 1, 1, '2026-03-05', 'Cash'),
  (39, 3, 2, '2026-03-06', 'Card'),
  (40, 1, 1, '2026-03-07', 'UPI'),
  (41, 6, 3, '2026-03-10', 'Cash'),
  (42, 5, 1, '2026-03-11', 'Cash'),
  (43, 11, 1, '2026-03-12', 'UPI'),
  (44, 3, 1, '2026-03-12', 'Card'),
  (45, 9, 2, '2026-03-12', 'UPI'),
  (46, 7, 2, '2026-03-13', 'Card'),
  (47, 8, 1, '2026-03-13', 'UPI'),
  (48, 14, 1, '2026-03-15', 'Card'),
  (49, 7, 1, '2026-03-17', 'UPI'),
  (50, 5, 2, '2026-03-19', 'Card'),
  (51, 5, 1, '2026-03-20', 'UPI'),
  (52, 5, 1, '2026-03-20', 'Cash'),
  (53, 4, 2, '2026-03-20', 'UPI'),
  (54, 3, 1, '2026-03-23', 'Card'),
  (55, 5, 1, '2026-03-24', 'UPI'),
  (56, 6, 1, '2026-03-24', 'UPI'),
  (57, 5, 1, '2026-03-24', 'Cash'),
  (58, 14, 2, '2026-03-27', 'UPI'),
  (59, 7, 1, '2026-03-27', 'Card'),
  (60, 5, 1, '2026-03-28', 'Cash');
