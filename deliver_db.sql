/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : deliver_db

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 10/06/2024 22:01:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_id` bigint NULL DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `item_price` double NOT NULL,
  `quantity` int NOT NULL,
  `restaurant_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, NULL, NULL, 0, 1, 1, NULL);
INSERT INTO `cart` VALUES (2, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (3, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (4, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (5, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (6, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (7, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (8, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (9, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (10, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (11, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (12, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (13, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (14, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (15, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (16, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (17, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (18, 7, 'French Onion Soup', 300, 1, 2, 3);
INSERT INTO `cart` VALUES (19, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (20, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (21, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (22, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (23, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (24, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (25, 33, 'aa', 11, 1, 6, 3);
INSERT INTO `cart` VALUES (26, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (27, 33, 'aa', 11, 1, 6, 3);
INSERT INTO `cart` VALUES (28, 33, 'aa', 11, 1, 6, 3);
INSERT INTO `cart` VALUES (29, 33, 'aa', 11, 1, 6, 3);
INSERT INTO `cart` VALUES (30, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (31, 33, 'aa', 11, 1, 6, 3);
INSERT INTO `cart` VALUES (32, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (33, 33, 'aa', 11, 1, 6, 3);
INSERT INTO `cart` VALUES (34, 2, 'Vegetable Soup', 200, 1, 1, 3);
INSERT INTO `cart` VALUES (35, 34, 'bb', 22, 1, 6, 3);
INSERT INTO `cart` VALUES (36, 1, 'Grilled Chicken Salad', 300, 1, 1, 3);
INSERT INTO `cart` VALUES (37, 33, 'aa', 11, 1, 6, 3);

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `id` int NOT NULL,
  `homedelivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES (1, '1');

-- ----------------------------
-- Table structure for homerestaurant
-- ----------------------------
DROP TABLE IF EXISTS `homerestaurant`;
CREATE TABLE `homerestaurant`  (
  `restaurant_id` int NULL DEFAULT NULL,
  `id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homerestaurant
-- ----------------------------
INSERT INTO `homerestaurant` VALUES (6, 1);

-- ----------------------------
-- Table structure for menu_item
-- ----------------------------
DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE `menu_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `is_veg` tinyint(1) NOT NULL,
  `is_best_seller` tinyint(1) NOT NULL,
  `restaurant_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `restaurant_id`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `menu_item_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of menu_item
-- ----------------------------
INSERT INTO `menu_item` VALUES (1, 'Grilled Chicken Salad', 'Salads', 'Healthy grilled chicken salad', 300, 0, 0, 1);
INSERT INTO `menu_item` VALUES (2, 'Vegetable Soup', 'Soups', 'Delicious vegetable soup', 200, 1, 0, 1);
INSERT INTO `menu_item` VALUES (3, 'Beef Steak', 'Main Course', 'Juicy beef steak', 800, 0, 1, 1);
INSERT INTO `menu_item` VALUES (4, 'Spaghetti Bolognese', 'Main Course', 'Classic Italian pasta', 400, 0, 1, 1);
INSERT INTO `menu_item` VALUES (5, 'Cheese Burger', 'Quick Bites', 'Cheese burger with fries', 250, 0, 1, 1);
INSERT INTO `menu_item` VALUES (6, 'Fruit Salad', 'Desserts', 'Fresh fruit salad', 150, 1, 0, 1);
INSERT INTO `menu_item` VALUES (7, 'French Onion Soup', 'Soups', 'Classic French onion soup', 300, 1, 0, 2);
INSERT INTO `menu_item` VALUES (8, 'Croque Monsieur', 'Main Course', 'Grilled ham and cheese sandwich', 350, 0, 1, 2);
INSERT INTO `menu_item` VALUES (9, 'Ratatouille', 'Main Course', 'Vegetable stew', 400, 1, 0, 2);
INSERT INTO `menu_item` VALUES (10, 'Duck Confit', 'Main Course', 'Slow-cooked duck leg', 600, 0, 1, 2);
INSERT INTO `menu_item` VALUES (11, 'Cr猫me Br没l茅e', 'Desserts', 'Rich custard dessert', 250, 1, 1, 2);
INSERT INTO `menu_item` VALUES (12, 'Quiche Lorraine', 'Starters', 'Savory pie with bacon and cheese', 300, 0, 0, 2);
INSERT INTO `menu_item` VALUES (13, 'Sushi Platter', 'Main Course', 'Assorted sushi platter', 1200, 0, 1, 3);
INSERT INTO `menu_item` VALUES (14, 'Miso Soup', 'Soups', 'Traditional miso soup', 150, 1, 0, 3);
INSERT INTO `menu_item` VALUES (15, 'Tempura', 'Starters', 'Crispy tempura vegetables and shrimp', 500, 0, 1, 3);
INSERT INTO `menu_item` VALUES (16, 'Ramen', 'Main Course', 'Hearty ramen noodles', 700, 0, 1, 3);
INSERT INTO `menu_item` VALUES (17, 'Green Tea Ice Cream', 'Desserts', 'Refreshing green tea ice cream', 200, 1, 0, 3);
INSERT INTO `menu_item` VALUES (18, 'Chicken Teriyaki', 'Main Course', 'Grilled chicken with teriyaki sauce', 600, 0, 1, 3);
INSERT INTO `menu_item` VALUES (19, 'Margherita Pizza', 'Main Course', 'Pizza with tomatoes and mozzarella', 500, 1, 1, 4);
INSERT INTO `menu_item` VALUES (20, 'Pasta Carbonara', 'Main Course', 'Pasta with creamy sauce and bacon', 400, 0, 1, 4);
INSERT INTO `menu_item` VALUES (21, 'Tiramisu', 'Desserts', 'Classic Italian dessert', 300, 1, 1, 4);
INSERT INTO `menu_item` VALUES (22, 'Caesar Salad', 'Salads', 'Salad with romaine lettuce and croutons', 250, 0, 0, 4);
INSERT INTO `menu_item` VALUES (23, 'Bruschetta', 'Starters', 'Grilled bread with tomatoes and basil', 200, 1, 0, 4);
INSERT INTO `menu_item` VALUES (24, 'Minestrone Soup', 'Soups', 'Hearty vegetable soup', 250, 1, 0, 4);
INSERT INTO `menu_item` VALUES (25, 'California Roll', 'Main Course', 'Sushi roll with crab and avocado', 500, 0, 1, 5);
INSERT INTO `menu_item` VALUES (26, 'Nigiri Sushi', 'Starters', 'Sushi with various toppings', 600, 0, 1, 5);
INSERT INTO `menu_item` VALUES (27, 'Udon Noodles', 'Main Course', 'Thick noodles in broth', 450, 0, 0, 5);
INSERT INTO `menu_item` VALUES (28, 'Mochi Ice Cream', 'Desserts', 'Sweet rice cake with ice cream', 300, 1, 1, 5);
INSERT INTO `menu_item` VALUES (29, 'Gyoza', 'Starters', 'Japanese dumplings', 350, 0, 1, 5);
INSERT INTO `menu_item` VALUES (30, 'Sashimi', 'Main Course', 'Slices of raw fish', 800, 0, 1, 5);
INSERT INTO `menu_item` VALUES (31, 'aa', 'Quick Bites', NULL, 200, 0, 0, NULL);
INSERT INTO `menu_item` VALUES (32, 'aa', 'Quick Bites', NULL, 99, 0, 0, NULL);
INSERT INTO `menu_item` VALUES (33, 'aa', 'Quick Bites', NULL, 11, 0, 0, 6);
INSERT INTO `menu_item` VALUES (34, 'bb', 'Starters', NULL, 22, 0, 0, 6);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `item_price` double NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `item_id` bigint NULL DEFAULT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKk3tpqf5ofyg2m7mvrqvmpnxlv`(`item_id` ASC) USING BTREE,
  INDEX `FKt4dc2r9nbvbujrljv3e23iibt`(`order_id` ASC) USING BTREE,
  CONSTRAINT `FKk3tpqf5ofyg2m7mvrqvmpnxlv` FOREIGN KEY (`item_id`) REFERENCES `menu_item` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (21, 'Grilled Chicken Salad', 300, 1, 1, 27);
INSERT INTO `order_items` VALUES (22, 'aa', 11, 1, 33, 28);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NULL DEFAULT NULL,
  `restaurant_id` bigint NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `total_amount` double NULL DEFAULT NULL,
  `delivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE,
  INDEX `restaurant_id`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (27, 3, 1, 'On Progress', 'ORD-1718038339240', '2024-06-10 14:52:19', 271, NULL, NULL);
INSERT INTO `orders` VALUES (28, 3, 6, 'Finished', 'ORD-1718038460989', '2024-06-10 14:54:21', 19.57, '0', NULL);

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `reviews` int NULL DEFAULT NULL,
  `delivery` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `open_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `rating` int NULL DEFAULT NULL,
  `admin_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admin_3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
INSERT INTO `restaurant` VALUES (1, 'Conrad Chicago Restaurant', '963 Madyson Drive Suite 679', 245, 'Free', '8:00 AM', 4, NULL, NULL, NULL, '1');
INSERT INTO `restaurant` VALUES (2, 'Restaurant Rue', 'Rue de Rivoli, Paris', 200, 'Free', '9:00 PM', 3, NULL, NULL, NULL, '1');
INSERT INTO `restaurant` VALUES (3, 'Tokyo Diner', 'Shibuya, Tokyo', 150, 'Free', '10:00 AM', 5, NULL, NULL, NULL, '1');
INSERT INTO `restaurant` VALUES (4, 'La Pasta', 'Via Roma, Rome', 180, 'Free', '12:00 PM', 4, NULL, NULL, NULL, '1');
INSERT INTO `restaurant` VALUES (5, 'Sushi Zen', 'Market St, San Francisco', 220, 'Free', '11:00 AM', 5, NULL, NULL, NULL, NULL);
INSERT INTO `restaurant` VALUES (6, 'abc', '2333', 0, NULL, NULL, 0, '/Image/test.jpg', '/Image/recomqlgo.png', '/Image/recomqlgo.png', '1');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `restaurant_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK70ry7cuti298yxet366rynxch`(`restaurant_id` ASC) USING BTREE,
  CONSTRAINT `FK70ry7cuti298yxet366rynxch` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (1, 'Amazing food and great service!', '2023-06-01 12:00:00', 5, 'JohnDoe', 1);
INSERT INTO `review` VALUES (2, 'Really enjoyed the atmosphere.', '2023-06-02 14:30:00', 4, 'JaneSmith', 1);
INSERT INTO `review` VALUES (3, 'Food was good, but the service was slow.', '2023-06-03 18:45:00', 3, 'BobJohnson', 1);
INSERT INTO `review` VALUES (4, 'Fantastic French cuisine!', '2023-06-04 19:00:00', 5, 'EmilyClark', 2);
INSERT INTO `review` VALUES (5, 'A wonderful dining experience.', '2023-06-05 20:15:00', 4, 'MichaelBrown', 2);
INSERT INTO `review` VALUES (6, 'Good food, but a bit pricey.', '2023-06-06 21:30:00', 3, 'SarahDavis', 2);
INSERT INTO `review` VALUES (7, 'Authentic Japanese food.', '2023-06-07 12:00:00', 5, 'YukiMori', 3);
INSERT INTO `review` VALUES (8, 'Great ramen and sushi!', '2023-06-08 14:30:00', 4, 'KenWatanabe', 3);
INSERT INTO `review` VALUES (9, 'Nice place, but small portions.', '2023-06-09 18:45:00', 3, 'AikoTanaka', 3);
INSERT INTO `review` VALUES (10, 'Delicious pasta dishes.', '2023-06-10 19:00:00', 5, 'MarcoRossi', 4);
INSERT INTO `review` VALUES (11, 'Great Italian food.', '2023-06-11 20:15:00', 4, 'LucaBianchi', 4);
INSERT INTO `review` VALUES (12, 'Good food, but the wait was long.', '2023-06-12 21:30:00', 3, 'GiuliaVerdi', 4);
INSERT INTO `review` VALUES (13, 'Best sushi in town.', '2023-06-13 12:00:00', 5, 'HiroshiSato', 5);
INSERT INTO `review` VALUES (14, 'Fresh and tasty sushi.', '2023-06-14 14:30:00', 4, 'TakashiYamada', 5);
INSERT INTO `review` VALUES (15, 'Great place, but expensive.', '2023-06-15 18:45:00', 3, 'KazuoMatsui', 5);
INSERT INTO `review` VALUES (20, 'good', '2024-06-10 14:51:53', 4, 'a', 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `friend` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '23', 'zhouzhou3123@outlook.com', '0', '123', 'zhouzhou3123@outlook.com', '0762643286', 'Zhou Zhou', NULL);
INSERT INTO `user` VALUES (2, 'z', 'z@z.com', 'z', 'z', 'z', 'z', 'z', NULL);
INSERT INTO `user` VALUES (3, 'a', 'a@a.com', 'a', 'a', 'a', 'aaa', 'a', NULL);
INSERT INTO `user` VALUES (4, 'b', 'b@b.com', 'b', 'b', 'b', 'b', 'b', NULL);
INSERT INTO `user` VALUES (5, '1', '1@1.com', '1', '1', '1', '1', 'user', NULL);

SET FOREIGN_KEY_CHECKS = 1;
