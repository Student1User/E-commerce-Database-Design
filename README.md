Perfect! Here's a single **all-in-one `README.md`** file that includes everything: project overview, contributors, how to run the project, schema preview, sample data output, technologies, and visuals (with image placeholders).

---

### ✅ `README.md`

```markdown
# 🛒 E-Commerce Database Design Project

Welcome to the official repository for our **E-Commerce Relational Database Project**, created as part of the **Power Learn Project (PLP)**.

---

## 📘 Project Overview

This relational database is designed to support a scalable e-commerce platform. It covers:

- ✅ Product & variation handling (size, color)
- ✅ Category & brand management
- ✅ Inventory tracking & product attributes
- ✅ ERD modeling for visualization

It’s a real-world simulation to help practice database normalization, design, and data manipulation using MySQL.

---

## 👨‍💻 Contributors

> Group 168 – February 2025 – Cohort VII Peer-to-Peer Learning  
> Guided by the Power Learn Project (PLP)

- 👨‍🔬 **Emmanuel Jesse**
- 👨‍🔬 **Isaac Mutuma**

---

## 📁 Project Structure

```
ecommerce-database/
├── schema/
│   └── ecommerce_schema.sql        -- Contains all CREATE TABLE statements
├── data/
│   └── sample_data.sql             -- Inserts sample records into all tables
├── ERD/
│   └── ecommerce_ERD.png           -- ERD image from dbdiagram.io
└── README.md                       -- This documentation
```

---

## 🛠️ How to Run This Project

### ✅ Requirements
- MySQL or compatible server
- MySQL Workbench / phpMyAdmin / CLI
- Git (optional)
- dbdiagram.io (for viewing the ERD)

---

### 🚀 Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/ecommerce-database.git
   cd ecommerce-database
   ```

2. **Create and Select Database**
   ```sql
   CREATE DATABASE ecommerce_db;
   USE ecommerce_db;
   ```

3. **Run Schema**
   ```bash
   mysql -u root -p ecommerce_db < schema/ecommerce_schema.sql
   ```

4. **Run Sample Data**
   ```bash
   mysql -u root -p ecommerce_db < data/sample_data.sql
   ```

---

## 🧱 Database Tables Overview

- `brand` – Company or manufacturer name
- `product_category` – Classifies products
- `color` – Available color options
- `size_category` – Groups of sizes
- `size_option` – Actual size values
- `product` – Main product info
- `product_item` – Unique SKU + stock + price
- `product_image` – Images for each product
- `product_variation` – Links items to color/size
- `attribute_type` – Type of attribute value
- `attribute_category` – Groups of attributes
- `product_attribute` – Custom attributes like weight, material

---

## 🗂️ ERD Diagram

Here’s a visual representation of the full database:

![ERD Sample](ERD/ecommerce_ERD.png)

*Image generated with [dbdiagram.io](https://dbdiagram.io)*

---

## 🧪 Sample Output Query

**Query: Show all T-Shirts with color, size & stock**

```sql
SELECT
  p.name AS product,
  c.name AS color,
  s.value AS size,
  pi.stock_quantity
FROM product_item pi
JOIN product p ON pi.product_id = p.id
JOIN product_variation pv ON pv.item_id = pi.id
JOIN color c ON pv.color_id = c.id
JOIN size_option s ON pv.size_option_id = s.id
WHERE p.name LIKE '%T-Shirt%';
```

**Output:**

| product          | color | size | stock_quantity |
|------------------|-------|------|----------------|
| Slim Fit T-Shirt | Red   | M    | 150            |
| Slim Fit T-Shirt | Black | L    | 150            |

---

## 💾 Sample Data Used

Here are some snippets of sample data added:

```sql
-- Brands
INSERT INTO brand (name, description) VALUES
('TechZone', 'High-quality electronics and gadgets'),
('Fashionista', 'Trendy clothing and accessories');

-- Product Categories
INSERT INTO product_category (name, description) VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Men and women fashion');

-- Products
INSERT INTO product (name, brand_id, category_id, base_price, description) VALUES
('Wireless Earbuds', 1, 1, 39.99, 'Bluetooth 5.0 earbuds'),
('Slim Fit T-Shirt', 2, 2, 19.99, 'Cotton slim fit T-shirt');
```

> Full sample data is located in `/data/sample_data.sql`.

---

## 🔧 Technologies Used

- **MySQL 8+**
- **dbdiagram.io** (for ERD)
- **Git + GitHub** (version control)
- **Markdown** (documentation)

---

## 📌 Project Status

- ✅ ERD Design Complete  
- ✅ Schema + Constraints Implemented  
- ✅ Sample Data Inserted  
- ✅ Tested & Validated  
- ✅ Ready for Submission 🎓

---

## 🙌 Acknowledgements

Thanks to **PLP Academy**, our mentors, and teammates for the support and collaboration during this group challenge!

> Made with 💙 by learners who build for impact.

```

---

Let me know if you’d like:
- A **cover banner image** with your names
- A **ZIP folder** with everything bundled up
- Or if you want to link this to a real GitHub repo

Ready to go? 😎
