\c coinsmatter_dev;

INSERT INTO users (username, email, password, created_at) VALUES 
('testuser', 'testuser@example.com', 'password123', CURRENT_TIMESTAMP),
('Irwin Jorge', 'irwinj@example.com', 'irwinrocks123!', CURRENT_TIMESTAMP),
('Lakisha Johnson', 'LakishaJ@example.com', 'LakishaRocks123!', CURRENT_TIMESTAMP),
('Noni Porter', 'NoniP@example.com', 'NoniRocks123!', CURRENT_TIMESTAMP),
('Dennys Antunish', 'DennysA@example.com', 'DennysRocks123!', CURRENT_TIMESTAMP),
('John Goodman', 'JohnG@example.com', 'JohnRocks123!', CURRENT_TIMESTAMP),
('Ahmad Hamoudeh', 'AhmadH@example.com', 'AhmadRocks123!', CURRENT_TIMESTAMP);

INSERT INTO lists (user_id, list_name, products, note, date_created) VALUES
(4, 'Grocery List', ARRAY['Product1', 'Product2', 'Product3'], 'every day groceries', '2024-01-16T15:05:41.139Z'),
(2, 'Party List', ARRAY['Product1', 'Product2', 'Product3'], 'party items', '2024-01-16T15:05:41.139Z');


INSERT INTO retailers (retailer_id, retailer_name, zipcodes_array, website) VALUES
(1,'CTown', ARRAY[10456, 10462, 11101, 10029],'https://www.ctownsupermarkets.com/'),
(2,'Target', ARRAY[10456, 10462, 11101, 10029],'https://www.target.com'),
(3,'Walmart', ARRAY[10456, 10462, 11101, 10029],'https://www.walmart.com');

INSERT INTO products (product_id, product_name, size, price, retailer_id, thumbnail) VALUES
(1,'Lactaid Milk, Lactose Free','96 Ounces',9.99, 1,'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9tZExlanFUSWdiWk0wMTUwMWp1MWJMM09VTktWZDVDT0k5VU15SElBLmpwZWcifQ=='),
(2,'Farmland Organic 2% Reduced Fat Milk', '64 Ounces', 6.09, 1, 'https://static.vecteezy.com/system/resources/thumbnails/000/429/651/small/1312.i011.022.S.i011.c10.COMING_SOON.jpg'),
(3,'Farmland Fat Free Milk - 1/2 Gallon', '1/2 Gallon', 3.69, 1, 'https://static.vecteezy.com/system/resources/thumbnails/000/429/651/small/1312.i011.022.S.i011.c10.COMING_SOON.jpg'),
(4,'Poland Spring Spring Water, 100% Natural', '24 x 16.9 Fluid Ounces', 11.59, 1, 'https://static.vecteezy.com/system/resources/thumbnails/000/429/651/small/1312.i011.022.S.i011.c10.COMING_SOON.jpg'),
(5,'Poland Spring Spring Water, 100% Natural, Minis', '12 x 8 Fluid Ounces', 5.59, 1, 'https://static.vecteezy.com/system/resources/thumbnails/000/429/651/small/1312.i011.022.S.i011.c10.COMING_SOON.jpg'),
(6,'Poland Spring Distilled Water', '1 Gallon', 2.69, 1, 'https://static.vecteezy.com/system/resources/thumbnails/000/429/651/small/1312.i011.022.S.i011.c10.COMING_SOON.jpg'),
(7,'Natures Yoke Extra Large Brown Eggs','1 Dozen', 8.39, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9EeXpPV3VhRmxLNmJBem9pRVRCV2x0UExYOGdpWUhRUWVYanB2M09qLmpwZyJ9'),
(8,'Egglands Best Grade A Large Eggs', '1/2 Dozen', 6.89, 1, 'https://cdn2.egglandsbest.com/assets/images/products/_productThumbMobi/n-classic-18.jpg'),
(9,'Egg Beaters Egg Whites, 100% Liquid', '16 Ounces', 4.79, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy90ZWZXTG1rRWRBMFhHRjRQYmt4TFYzUmF2aTZ4RUJMUVViSDNYa3NpLmpwZyJ9'),
(10,'Kr Shred Cheddar Cheese', '8 Ounces', 3.89, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9iRW9zZTRORVVrYlQ3TU5BT01xZlZVZFdGcTZyQmVSTFB3ODdrcXpTLmpwZyJ9'),
(11,'Polly O Reduced Fat Mozzarella & Cheddar Cheeses - 12 snacks', '9.52 Ounces', 6.89, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9XQjR2bmVHYVptMWY3SE9HNkhabnREMkJOVURCUTZYU3lPdUtON0hqLmpwZWcifQ=='),
(12,'Kraft Singles American Cheese Slices', '20 Slices', 4.99, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnSlicespZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy8wUG12Z2V1a1Z6V3RiZ3h4b3J5b3F5Q1d0c0F3Z3p2WjB0VE56VG0uanBnLmpwZyJ9'),
(13,'Kraft Velveeta Smooth & Melty Pasteurized Process Cheese Spread', '15 Ounces', 4.49, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnSlicespZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy8yV01jSW5VWE1oN0l0dnRjR2lQNVlXdDNVamN2a3FzMWdNUG9vLmpwZyJ9'),
(14,'Kraft Velveeta Mac & Cheese Original Shells & Cheese', '12 Ounces', 3.99, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRv-LWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnSlicespZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy9tQ1d0c0F3Z3p2WjB0VE56VG0uanBnLmpwZyJ9'),
(15,'Horizon Organic Whole Milk', '1/2 Gallon', 4.79, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRv-LWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnSlicespZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy81U291Q0Z3RWRBMFhHRjRQYmt4TFYzUmF2aTZ'),
(16,'Perdue Chicken Breast Strips, Original', '12 Ounces', 5.29, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRv-LWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnSlicespZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy9FUlJ1WlZOV0lIa2h1bEd2WUVVU0tYQmRJQjJOVVhsVU1FNTduTTFhLmpwZyJ9'),
(17,'Oscar Mayer Chicken Breast, Rotisserie Seasoned', '9 Ounces', 8.59, 1, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRv-LWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnSlicespZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy96QkRJR0VxNkdrcWVMVEkzdDFtSHo5MEJhNFRVQ0ZRRFc1djRtT2ZzLmpwZWcifQ=='),
(18,'Driscolls Strawberries', '1 Pound', 3.99, 1, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTM4lcW2XraWkaQsNbhNWeEpywcUfR2PslzXgIIW3xpTwQeDJpY6U274D7Dg6aVSZ5Dwh2f9bfWfC2vcANRVS_Z2rV1bD6fzcSsmGqngyXg2GbGWUt7D3_jn4Qe0gws8TVVje3UWA&usqp=CAc'),
(19,'Lactaid Milk, Lactose Free', '96 Ounces', 7.69, 2, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9tZExlanFUSWdiWk0wMTUwMWp1MWJMM09VTktWZDVDT0k5VU15SElBLmpwZWcifQ=='),
(20,'Horizon Organic 2% Reduced Fat Milk', '64 Ounces', 5.79, 2, 'https://target.scene7.com/is/image/Target/GUEST_fb2893b7-e892-40e3-b64f-bf54e4c99aa9?qlt=65&fmt=webp&hei=350&wid=350'),
(21,'Good and Gather Organic Skim Milk - 1/2 Gallon', '1/2 Gallon', 4.99, 2, 'https://target.scene7.com/is/image/Target/GUEST_79306b0e-8b9f-46df-99f9-d250f2f5845a?qlt=65&fmt=webp&hei=350&wid=350'),
(22,'Poland Spring Spring Water, 100% Natural', '32 x 16.9 Fluid Ounces', 8.99, 2, 'https://target.scene7.com/is/image/Target/GUEST_896d5b6f-c7d1-4cb2-a37f-124f54370b2b?wid=1200&hei=1200&qlt=80&fmt=webp'),
(23,'Poland Spring Spring Water, 100% Natural, Minis', '12 x 12 Fluid Ounces', 4.59, 2, 'https://target.scene7.com/is/image/Target/GUEST_7e7c829d-a8b8-44e9-8d0d-1b04aecfcaf4?wid=1200&hei=1200&qlt=80&fmt=webp'),
(24,'Poland Spring Distilled Water', '1 Gallon', 3.19, 2, 'https://target.scene7.com/is/image/Target/GUEST_03314696-132d-4389-951b-b2ab8e1a5808?qlt=65&fmt=webp&hei=350&wid=350'),
(25,'Good & Gather Cage-Free Fresh Grade A Large Brown Eggs', '1 Dozen', 2.89, 2, 'https://target.scene7.com/is/image/Target/GUEST_fdcd2e42-1d87-4b92-aebc-abab6719cb08?qlt=65&fmt=webp&hei=350&wid=350'),
(26,'Egglands Best Grade A Large Eggs', '1 Dozen', 4.99, 2, 'https://target.scene7.com/is/image/Target/GUEST_5bbec1b9-3020-4a36-a873-66ff699130dd?qlt=65&fmt=webp&hei=350&wid=350'),
(27,'Good & Gather Cage-Free Liquid Egg Whites', '32 Ounces', 5.79, 2, 'https://target.scene7.com/is/image/Target/GUEST_1043dd92-363c-4da8-b309-8c451c4024d4?qlt=65&fmt=webp&hei=350&wid=350'),
(28,'Kr Shred Cheddar Cheese', '8 Ounces', 3.89, 2, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9iRW9zZTRORVVrYlQ3TU5BT01xZlZVZFdGcTZyQmVSTFB3ODdrcXpTLmpwZyJ9'),
(29,'Polly O Reduced Fat Mozzarella & Cheddar Cheeses - 12 snacks', '9.52 Ounces', 6.89, 2, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9XQjR2bmVHYVptMWY3SE9HNkhabnREMkJOVURCUTZYU3lPdUtON0hqLmpwZWcifQ=='),
(30,'Kraft Singles American Cheese Slices', '24 Slices', 6.49, 2, 'https://target.scene7.com/is/image/Target/GUEST_60247e44-38ea-43a9-9d94-5e94ecc3c8c5?qlt=65&fmt=webp&hei=350&wid=350'),
(31,'The Laughing Cow Garlic & Herb Spreadable Cheese', '5.4 Ounces / 8 Count', 3.69, 2, 'https://target.scene7.com/is/image/Target/GUEST_0be1385f-c0f0-4ee2-a119-d3d3a9f5df7f?qlt=65&fmt=webp&hei=350&wid=350'),
(32,'Kraft Velveeta Mac & Cheese Original Shells & Cheese', '12 Ounces', 3.99, 2, 'https://target.scene7.com/is/image/Target/GUEST_dd690b7e-60eb-45f0-8cb9-f4b77e14fbc5?wid=600&hei=600&qlt=80&fmt=webp'),
(33,'Horizon Organic Whole Milk', '1/2 Gallon', 4.79, 2, 'https://target.scene7.com/is/image/Target/GUEST_2a359408-3f61-45df-95b1-0859e68867c3?qlt=65&fmt=webp&hei=350&wid=350'),
(34,'Perdue Chicken Breast Strips', '1.25 Pounds', 7.49, 2, 'https://target.scene7.com/is/image/Target/GUEST_7274b9b7-ce60-4ad6-8918-54f001b24865?wid=600&hei=600&qlt=80&fmt=webp'),
(35,'Oscar Mayer Chicken Breast, Rotisserie Seasoned', '9 Ounces', 4.99, 2, 'https://target.scene7.com/is/image/Target/GUEST_df8b8a7a-a33b-471c-bd7f-6240f78c38bb?qlt=65&fmt=webp&hei=350&wid=350'),
(36,'Strawberries', '1 Pound', 4.99, 2, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTM4lcW2XraWkaQsNbhNWeEpywcUfR2PslzXgIIW3xpTwQeDJpY6U274D7Dg6aVSZ5Dwh2f9bfWfC2vcANRVS_Z2rV1bD6fzcSsmGqngyXg2GbGWUt7D3_jn4Qe0gws8TVVje3UWA&usqp=CAc'),
(37,'Folgers Classic Medium Roast Ground Coffee', '9.6 Ounces', 4.92, 3, 'https://target.scene7.com/is/image/Target/GUEST_dc756103-223e-46b7-9726-24cfb5b4ddbd?qlt=65&fmt=webp&hei=350&wid=350'),
(38,'Cafe Bustelo Espresso Dark Roast Ground Coffee', '10 Ounces', 5.37, 3, 'https://i5.walmartimages.com/seo/Caf-Bustelo-Espresso-Style-Dark-Roast-Ground-Coffee-10-oz-Can_72a50f82-8b98-4e51-9e09-0313091e810d.78856991d9ead7ecd695f330f3d9ee29.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF'),
(39,'SToK Black Unsweetened Cold Brew Coffee', '48 fl Ounces', 5.58, 3, 'https://target.scene7.com/is/image/Target/GUEST_29dcae9f-9f6c-419f-a283-4c05b714ee22?wid=600&hei=600&qlt=80&fmt=webp'),
(41,'Kauai Whole Bean Coffee, Koloa Estate Dark Roast', '10 Ounces', 12.85, 3, 'https://i5.walmartimages.com/seo/Kauai-Whole-Bean-Coffee-Koloa-Estate-Dark-Roast-10-oz-Package_9ab31c68-e4e9-44bf-9be1-54c6ba128436.1dc9613fe87e05801bdf788b064ef8cf.jpeg?odnHeight=640&odnWidth=640&odnBg=FFFFFF'),
(42,'Lactaid Milk, Lactose Free', '96 Ounces', 6.24, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy9tZExlanFUSWdiWk0wMTUwMWp1MWJMM09VTktWZDVDT0k5VU15SElBLmpwZWcifQ=='),
(43,'Great Value Organic 2% Reduced Fat Milk', '64 Ounces', 3.98, 3, 'https://i5.walmartimages.com/seo/Great-Value-Organic-2-Reduced-Fat-Milk-Half-Gallon-64-fl-oz_3fbcc52f-c25e-44ea-9990-f1dff21d73b0.0611ca57822b048849474b9e4e5662d4.jpeg?odnHeight=640&odnWidth=640&odnBg=FFFFFF'),
(44,'Great Value Organic Skim Fat Free Milk', '64 Ounces', 3.98, 3, 'https://i5.walmartimages.com/seo/Great-Value-Organic-Skim-Fat-Free-Milk-Half-Gallon-64-fl-oz_6c9fc9c6-f5ee-4f9a-ad3d-0e31d6649457.959bc81b20013cd75253282a4428b70b.jpeg?odnHeight=640&odnWidth=640&odnBg=FFFFFF'),
(45,'Poland Spring Spring Water, 100% Natural (35 Pack)', '35 x 16.9 Fluid Ounces', 6.98, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0LWltYWdlcy80Z3VwQ2dHZmJqYzZGdld4TTJKUDVwUWRGdHJWZGE0U0hPc2dFRjVYLmpwZyJ9'),
(46,'Poland Spring Spring Water, 100% Natural, Minis', '12 x 8 Fluid Ounces', 2.38, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy9UcFdLVFN3NEZmckE4Vmo1ajhSWHg1TVV0S0JWSnlqQ0FjdDNleGdvLmpwZyJ9'),
(47,'Poland Spring Distilled Water', '1 Gallon', 1.69, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy9JNzNodzhEMzhMTkdON1R5dE01ZDIwbW9mcFlMWGExUWhITGlRR1psLmpwZWcifQ=='),
(48,'Marketside Large Cage-Free Brown Eggs', '1 Dozen', 2.58, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy9EeXpPV3VhRmxLNmJBem9pRVRCV2x0UExYOGdpWUhRUWVYanB2M09qLmpwZyJ9'),
(49,'Egglands Best Grade A Large Eggs', '1 Dozen', 2.78, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy9UcFdLVFN3NEZmckE4Vmo1ajhSWHg1TVV0S0JWSnlqQ0FjdDNleGdvLmpwZyJ9'),
(50,'Great Value 100% Liquid Egg Whites', '32 Ounces', 4.86, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LWltYWdlcy90ZWZXTG1rRWRBMFhHRjRQYmt4TFYzUmF2aTZ4RUJMUVViSDNYa3NpLmpwZyJ9'),
(51,'Great Value Finely Shredded Sharp Cheddar Cheese', '8 Ounces', 2.22, 3, 'https://i5.walmartimages.com/seo/Great-Value-Finely-Shredded-Sharp-Cheddar-Cheese-8-oz_3f490f17-2f67-4e06-9080-4d1c1aa9312e.783aa9b49dcdb9e518be4f97f7a4f158.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF'),
(52,'Polly-O String Cheese Mozzarella Cheese Snacks, 24 ct Sticks', '24 Ounces', 7.98, 3, 'https://i5.walmartimages.com/asr/0e730f60-bcc4-40ec-9564-72d540c1b832.79518bc753512d50861fbe7b82f9ebfd.png?odnHeight=640&odnWidth=640&odnBg=FFFFFF'),
(53,'Fresh Strawberries', '1 Pound', 4.99, 3, 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTM4lcW2XraWkaQsNbhNWeEpywcUfR2PslzXgIIW3xpTwQeDJpY6U274D7Dg6aVSZ5Dwh2f9bfWfC2vcANRVS_Z2rV1bD6fzcSsmGqngyXg2GbGWUt7D3_jn4Qe0gws8TVVje3UWA&usqp=CAc'),
(54,'Kraft Singles American Cheese Slices', '24 Slices', 4.98, 3, 'https://i5.walmartimages.com/seo/Kraft-Singles-American-Cheese-Slices-24-Ct-Pk_34e6c549-e792-4f5a-9da5-260a3b9312e5.7b696b54ff949e9142802ea8f38a5c1f.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF'),
(55,'Velveeta Original Melting Cheese Dip & Sauce, 16 Oz Block', '16 Ounces', 5.48, 3, 'https://i5.walmartimages.com/seo/Velveeta-Original-Melting-Cheese-Dip-Sauce-16-Oz-Block_b9d405f9-eabe-4440-9834-8fc4e384be35.afbe57faab0ec68b5a7befdb4038df04.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF'),
(56,'Kraft Velveeta Mac & Cheese Original Shells & Cheese', '12 Ounces', 2.98, 3, 'https://i5.walmartimages.com/seo/Velveeta-Shells-and-Cheese-Original-Macaroni-and-Cheese-Dinner-12-oz-Box_62912541-c743-46fa-9e9d-33c3d078855b.797b57add164c164b5b4f0f71844dbac.jpeg?odnHeight=2000&odnWidth=2000&odnBg=FFFFFF'),
(57,'Horizon Organic Whole Milk', '1/2 Gallon', 4.88, 3, 'https:/https://i5.walmartimages.com/seo/Horizon-Organic-Whole-High-Vitamin-D-Milk-Half-Gallon_4fce5a92-df70-40f9-9d0b-68fc6af6b4b4.b79666bc9c9f8492d5f5ab74ce9f7501.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF'),
(58,'Perdue Breaded Chicken Breast Cutlets', '12 Ounces', 4.46, 3, 'https://i5.walmartimages.com/seo/Perdue-No-Antibiotics-Ever-Refrigerated-Breaded-Chicken-Breast-Cutlets-12-oz-Tray_358a6e27-7077-4579-b466-beea2f774cfc.fd4d313bd3a699eda2bbbc47a2818666.jpeg?odnHeight=117&odnWidth=117&odnBg=FFFFFF'),
(59,'Oscar Mayer Chicken Breast, Rotisserie Seasoned', '9 Ounces', 4.48, 3, 'https://db535g4onu9gg.cloudfront.net/eyJidWNrZXQiOiJtZXJjYXRvLWltYWdlcyIsImVkaXRzIjp7InJlc2l6ZSI6eyJmaXQiOiJpbnNpZGUiLCJ3aWR0aCI6MjgwLCJoZWlnaHQiOjE4N319LCJrZXkiOiJwcm9kdWN0-LW');

-- INSERT INTO products_list (product_id, list_id, quantity) VALUES
-- (1, 1, 2),
-- (4, 1, 1),
-- (10, 2, 1),
-- (3, 3, 1),
-- (2, 3, 1),
-- (1, 4, 1);



--- Product in products thumbnail link is being truncated by psql,
--- this goes for products (2, 3, 4, 5, 6)




