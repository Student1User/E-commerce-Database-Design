-- Sample data for brand
INSERT INTO brand (name, description) VALUES
('TechZone', 'High-quality electronics and gadgets'),
('Fashionista', 'Trendy clothing and accessories'),
('HomeEssence', 'Home decor and furniture');

-- Sample data for product_category
INSERT INTO product_category (name, description) VALUES
('Electronics', 'Devices and gadgets'),
('Clothing', 'Men and women fashion'),
('Furniture', 'Home and office furniture');

-- Sample data for color
INSERT INTO color (name, hex_code) VALUES
('Red', '#FF0000'),
('Blue', '#0000FF'),
('Black', '#000000'),
('White', '#FFFFFF');

-- Sample data for size_category
INSERT INTO size_category (name) VALUES
('Clothing Size'),
('Shoe Size');

-- Sample data for size_option
INSERT INTO size_option (size_category_id, value) VALUES
(1, 'S'),
(1, 'M'),
(1, 'L'),
(2, '40'),
(2, '42');

-- Sample data for product
INSERT INTO product (name, brand_id, category_id, base_price, description) VALUES
('Wireless Earbuds', 1, 1, 39.99, 'Bluetooth 5.0 wireless earbuds with noise canceling'),
('Slim Fit T-Shirt', 2, 2, 19.99, 'Comfortable cotton T-shirt available in multiple sizes'),
('Modern Sofa', 3, 3, 299.99, '3-seater modern grey fabric sofa');

-- Sample data for product_image
INSERT INTO product_image (product_id, image_url, alt_text) VALUES
(1, 'https://example.com/images/earbuds.jpg', 'Wireless Earbuds'),
(2, 'https://example.com/images/tshirt.jpg', 'Slim Fit T-Shirt'),
(3, 'https://example.com/images/sofa.jpg', 'Modern Sofa');

-- Sample data for product_item
INSERT INTO product_item (product_id, sku, stock_quantity, price) VALUES
(1, 'TZ-WEB-001', 50, 39.99),
(2, 'FS-TSHIRT-M', 100, 19.99),
(3, 'HE-SOFA-GREY', 10, 299.99);

-- Sample data for product_variation
INSERT INTO product_variation (item_id, color_id, size_option_id) VALUES
(2, 1, 2), -- Red, Medium T-Shirt
(2, 3, 1); -- Black, Small T-Shirt

-- Sample data for attribute_type
INSERT INTO attribute_type (name) VALUES
('Text'),
('Number'),
('Boolean');

-- Sample data for attribute_category
INSERT INTO attribute_category (name) VALUES
('Technical'),
('Physical');

-- Sample data for product_attribute
INSERT INTO product_attribute (product_id, attribute_category_id, attribute_type_id, name, value) VALUES
(1, 1, 2, 'Battery Life', '6'),
(3, 2, 1, 'Material', 'Fabric'),
(2, 2, 1, 'Material', 'Cotton');
