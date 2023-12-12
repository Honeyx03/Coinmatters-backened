\c coinsmatter_dev;

INSERT INTO users (username, email, password, created_at) VALUES 
('testuser', 'testuser@example.com', 'password123', CURRENT_TIMESTAMP),
('Irwin Jorge', 'irwinj@example.com', 'irwinrocks123!', CURRENT_TIMESTAMP),
('Lakisha Johnson', 'LakishaJ@example.com', 'LakishaRocks123!', CURRENT_TIMESTAMP),
('Noni Porter', 'NoniP@example.com', 'NoniRocks123!', CURRENT_TIMESTAMP),
('Dennys Antunish', 'DennysA@example.com', 'DennysRocks123!', CURRENT_TIMESTAMP),
('John Goodman', 'JohnG@example.com', 'JohnRocks123!', CURRENT_TIMESTAMP),
('Ahmad Hamoudeh', 'AhmadH@example.com', 'AhmadRocks123!', CURRENT_TIMESTAMP);

INSERT INTO lists (list_name, user_id, list_id) VALUES 
('groceries', 2, 1),
('Birthday party', 2, 2),
('Nonis list', 4, 3),
('Dennys list', 5, 4),
('fruit', 5, 5);

INSERT INTO products (product_id, product_name, source, price) VALUES
(1,'Friendly Farms Whole Milk - 0.5 Gal', 'Instacart', 2),
(2,'Publix Milk, Whole', 'Publix Delivery', 3),
(3,'Horizon Organic Whole Shelf-Stable Milk Boxes - 8 fl oz', 'Walmart', 2),
(4,'Great Value Large White Eggs', 'Walmart', 5),
(5,'Great Value Grade A Large White Eggs - 12 ct', 'DailyCart', 5),
(6,'Good & Gather Grade A Large Fresh Eggs', 'Target', 6),
(7,'Azure Market Whole Milk Mozzarella Cheese, 6 lb', 'Azure Standard', 6),
(8,'Sargento Shredded Cheese, Whole Milk, Mozzarella - 8 oz', 'Publix Delivery', 3),
(9,'Belgioioso Cheese, Fresh Mozzarella, Sliced - 16 oz', 'DoorDash - Target Grocery US', 4),
(10,'Mango - Each', 'Instacart', 2),
(11,'Tropical Importers Fresh Kent Mangoes (9 lbs)', 'Amazon.com - Seller', 20);

INSERT INTO products_list (product_id, list_id, quantity) VALUES
(1, 1, 2),
(4, 1, 1),
(10, 2, 1),
(3, 3, 1),
(2, 3, 1),
(1, 4, 1);








-- INSERT INTO products_list (title, source, price, thumbnail, product_href) VALUES
-- ('Friendly Farms Whole Milk - 0.5 Gal', 'Instacart', '1.75','https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTyGj40gbT3RIYG5Qgoki96dwC-9IQk_dleNhh7K__awgziJHhooxSEfnPGxElvfmgt30Tf3YaqckMjbkdCjAD2bBavWypHs7hyKFZpmXqp&usqp=CAE','https://www.google.com/shopping/product/7961724404250836972?q=whole+milk&prds=eto:7152414089349286463_0,pid:6044129351032024308&sa=X&ved=0ahUKEwjmmLrUxKGCAxVALbkGHUwpDykQ8gII9QooAA'),
-- ('Publix Milk, Whole', 'Publix Delivery', '3.87', 'ttps://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSiNV1fLY6pZvqYcIbfW1ANCq5omR2K3g-A4bx2U-bA3V2AwpYqsLQrKnQzHbEyZtKNBc8jbv4FgcPEY1oUQCyMoGEWdajCJjOt0_54PC0C&usqp=CAE', 'https://www.google.com/shopping/product/2178798347282800912?q=whole+milk&prds=eto:14697323860505399132_0,pid:17390289774107248465,rsk:PC_2548524185199486745&sa=X&ved=0ahUKEwjmmLrUxKGCAxVALbkGHUwpDykQ8gIIhgsoAA'),
-- ('Horizon Organic Whole Shelf-Stable Milk Boxes - 8 fl oz', 'Walmart', '$12.53','https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTjozgf0S39z-rkUKS4GS1K8JO7ycMehvU7k5Y40hTAKtW2viL2k61C2g5LcUBMbQh-lih8dBNQC8vlgywmdxVqFWPWEw26cmlKdEAJmZkjGrevHFAaDu3aIg&usqp=CAE', ''),
-- ('Great Value Large White Eggs', 'Walmart', '$6.64', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQhxMvdEZBbiiLiTE6ORDljV-nVxQSn6pavqIwhzFoXYXMnDnGug0uW3pfSbXYYqFJgqNRurjhkktPJTLVko7p9gw4LQIknMXvYGEBKNtKQdRa0d64Ut3-H&usqp=CAE', 'https://www.google.com/shopping/product/7906853259101151599?q=dozen+eggs&prds=eto:18104076258029827006_0,local:1,pid:6988309869926126491,prmr:2,rsk:PC_11845863612692417945&sa=X&ved=0ahUKEwihtZeLzKGCAxURtaQKHX48DgQQ8gII-gkoAA'),
-- ('Great Value Grade A Large White Eggs - 12 ct', 'DailyCart', '$6.99', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcS62sXABAOX_mUNumCeigHXHNj2HGCdcSGhL_gnCsVzF3TuLf_rlC35obu-OF1iy4bbVvUzue_DHmja2_K_GZyJo9l3gphbglcd6jMVWB3Rl8X7t6z8Nlt7&usqp=CAE', 'https://www.google.com/shopping/product/13581232495611643146?q=dozen+eggs&prds=eto:6352236207353339779_0,pid:15298264003302053838,rsk:PC_1903367941520608973&sa=X&ved=0ahUKEwihtZeLzKGCAxURtaQKHX48DgQQ8gIIkQooAA'),
-- ('Good & Gather Grade A Large Fresh Eggs', 'Target', '$1.79', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRbKHJ-2gLTCUmz_x1yISv3N7-bq9nmYZIWgY7ULF1IXakIJbO6P3UsexEigwpniSwZpzqOrhV6SbgIj-KYdKK06GbNh6Ileb-ryAryvDoI-BXy2ZwoYbFhQA&usqp=CAE', 'https://www.google.com/shopping/product/4728555087931815519?q=dozen+eggs&prds=eto:9974088653654860158_0,local:1,pid:13461530109749057861,prmr:2,rsk:PC_17718684657588295550&sa=X&ved=0ahUKEwihtZeLzKGCAxURtaQKHX48DgQQ8gIIpQooAA'),
-- ('Azure Market Whole Milk Mozzarella Cheese, 6 lb', 'Azure Standard', '$23.51', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSDi2jZD66kx7VDyuDeNwSdqA4px3eyjjK_EaCI3Wg44Rbt7o6QLNVF9VWFYSa8h8ygUcLu4v-x1atcZVxWD-eilXNg28Cp1I_txZu75ZjUvPWY1IJzq40f3A&usqp=CAE', 'https://www.google.com/url?url=https://www.azurestandard.com/shop/product/food/cheese/mozzarella/plain/mozzarella-cheese-whole-milk/9302%3Fpackage%3DCH064&rct=j&q=&esrc=s&opi=95576897&sa=U&ved=0ahUKEwjN9dT8z6GCAxU_ATQIHWIJDNoQ1SkIswooAA&usg=AOvVaw2xqhADFci3tYcn4kVFHc_c'),
-- ('Sargento Shredded Cheese, Whole Milk, Mozzarella - 8 oz', 'Publix Delivery', '$4.27', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcToPxjzU4yRnwK98fF-uS_4qHjHk57fVOt-_2slf6tLTGxFnTMiPILEp8FLZQ26QyaYBDY1uFMq293x3P5oW-dYJz2JvTkz0Yoa06rSth9Nic3Va02ZFt5U&usqp=CAE', 'https://www.google.com/shopping/product/10580349090661222934?q=mozzarella+cheese&prds=eto:6363226281302510892_0,pid:2992351077362548943,rsk:PC_1526050241420223974&sa=X&ved=0ahUKEwjN9dT8z6GCAxU_ATQIHWIJDNoQ8gIIxgooAA'),
-- ('Belgioioso Cheese, Fresh Mozzarella, Sliced - 16 oz', 'DoorDash - Target Grocery US', '$9.20', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcStGqMgGM-MfFyY6qFsbZWQnKDG3hodJ_r14aSwktsI0T3lgv7GgCBeAQu5qq_y0h5K7OHVGo3gR1C-1u4xIW-SWLLinTXy0W_qQR4e0088ffEP9b7sZmlMWg&usqp=CAE', 'https://www.google.com/shopping/product/4498214311546955190?q=mozzarella+cheese&prds=eto:15803840689638310067_0,pid:1341730498629059883,rsk:PC_10902094356598628636&sa=X&ved=0ahUKEwjN9dT8z6GCAxU_ATQIHWIJDNoQ8gII1gooAA'),
-- ('Mango - Each', 'Instacart', '$2.77', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTWi0V4w1U__6t_mG5vLx6jm6Gj7JZW7GhFgXQr38FjWm2d4ClNCPBqDFDxB93sEV3-BIdbXiUr&usqp=CAE', 'https://www.google.com/shopping/product/11548294421862137860?q=mango&prds=eto:1633059246818355051_0,pid:14380211681306493673&sa=X&ved=0ahUKEwi72brt16GCAxWFH0QIHb1CCzwQ8gIIig4oAA'),
-- ('Tropical Importers Fresh Kent Mangoes (9 lbs)', 'Amazon.com - Seller', '$33.88', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcR3D0ZP8vWqQDKPwpdyLyAE2wnC0TAz8y3cYazOrdxPYYqmHU4BojwtjLyvGE0RIsIKIUrWpjc&usqp=CAE', 'https://www.google.com/shopping/product/1688108056667500348?q=mango&prds=eto:11114920305271407775_0,pid:12333799032595885287&sa=X&ved=0ahUKEwi72brt16GCAxWFH0QIHb1CCzwQ8gIIlw4oAA');