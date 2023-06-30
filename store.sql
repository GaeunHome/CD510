CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `store`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `pro_id` (`pro_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `ID` int NOT NULL,
  `pro_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `pro_id` (`pro_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,99),(2,2,99),(3,3,99),(4,4,99),(5,5,99),(6,6,99),(7,7,99),(8,8,99),(9,9,99),(10,10,99),(11,11,99),(12,12,99),(13,13,99),(14,14,99),(15,15,99),(16,16,99),(17,17,99),(18,18,99);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manege`
--

DROP TABLE IF EXISTS `manege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manege` (
  `manage_id` int NOT NULL AUTO_INCREMENT,
  `manege_account` varchar(15) NOT NULL,
  `manege_password` varchar(15) NOT NULL,
  PRIMARY KEY (`manage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manege`
--

LOCK TABLES `manege` WRITE;
/*!40000 ALTER TABLE `manege` DISABLE KEYS */;
INSERT INTO `manege` VALUES (1,'111@111','11111111');
/*!40000 ALTER TABLE `manege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `meb_id` int NOT NULL AUTO_INCREMENT,
  `meb_name` varchar(10) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(15) NOT NULL,
  `agpsd` varchar(45) NOT NULL,
  PRIMARY KEY (`meb_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'Chloe','w','0966331615','2003-01-02','weixi2047@gmail.com','20030102','20030102'),(2,'0102','w','0102','2023-06-09','123@123','20030102','20030101');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `mes_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(200) NOT NULL,
  `rate` int NOT NULL,
  PRIMARY KEY (`mes_id`),
  KEY `message_idfk_1_idx` (`pro_id`),
  CONSTRAINT `message_idfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pro_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sort` varchar(10) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `detail` varchar(500) NOT NULL,
  `jsp` varchar(100) NOT NULL,
  `material` varchar(45) NOT NULL,
  `size` varchar(45) NOT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'酪梨寶寶','大型玩偶','image\\\\dolls\\\\avocado.jpg',1480,'受大家喜愛的酪梨寶寶，腹部有立體酪梨籽，抱起來手感更佳！底部填充讓酪梨寶寶也能穩穩坐著，表面短毛讓人愛不釋手！','avocado.jsp','聚脂纖維','長30cm，寬23cm'),(2,'微笑豆苗','大型玩偶','image\\\\dolls\\\\smile.jpg',850,'微笑小豆苗放在桌上也能夠帶來一整天的好心情＞＜！11公分的迷你絨毛玩偶不須刻意照料，為忙碌卻又想養小盆栽的朋友們帶來新的選擇～','smile.jsp','聚脂纖維','11cm'),(3,'紐結麵包寶寶','大型玩偶','image\\\\dolls\\\\pretzel.jpg',3890,'和扭結麵包寶寶開啟美味的午茶時光吧！扭結麵包同時也被稱為椒鹽脆餅，抱枕後有立體扭結設計，抱起來更加舒適。底座填充讓抱枕也能席地而坐，一同度過美好的午後時光！','pretzel.jsp','聚脂纖維','長30cm，寬28cm'),(4,'馬卡龍粉碎花愛心兔','大型玩偶','image\\\\dolls\\\\blossom_bunny.jpg',1280,'馬卡龍碎花小兔為情人節限定商品，將心意通通藏在碎花愛心當中！小尺寸可一手掌握，感受溫柔的愛意。','blossom bunny.jsp','聚脂纖維','長15cm，寬8cm'),(5,'檸檬黃兔','大型玩偶','image\\\\dolls\\\\lemon_bunny.jpg',1680,'檸檬黃明亮且溫馨，看一眼就能感受到滿滿的正向能量。31公分最適合抱在懷裡，陪伴一個人的安靜時光。','lemon bunny.jsp','聚脂纖維','長31cm，寬12cm'),(6,'拿鐵灰兔','大型玩偶','image\\\\dolls\\\\coffee.jpg',950,'拿鐵灰給人帶來沉穩大器的氣質，18公分的大小無論抱在懷中入睡或是當作可愛的擺設都非常適合。','coffee.jsp','聚脂纖維','長18cm，寬9cm'),(7,'郁色Aromatic','紙膠帶','image\\\\papertape\\\\Aromatic1.jpg',290,'設計師手繪出『紫丁香』與『尤加利葉』的靈感來自秋冬季節，觀察到大地色系的尤加利葉，搭配深咖啡的葉子及果實的絕美景象，並繪畫時尋找出氣味相同濃郁的紫丁花，並以局部光澤、顏色濃郁飽滿，呈現出質感高的華美復古風。','Aromatic.jsp','日本和紙<br>霧面PET<br>亮面PET<br>自帶離型紙','長10 m，寬5cm，循環90cm'),(8,'光隙 Meteor','紙膠帶','image\\\\papertape\\\\meteor1.jpg',385,'以星空與煙花為主題，運用如星星般的彗星拖尾、閃耀光芒、星座連串造型，搭配辰榛（IG：cv.126）暖心語錄的簡約風手寫字體，帶給大家一種溫柔被呵護的感覺。','meteor.jsp','大年創意承印<br>亮面PET<br>自帶離型紙<br>特油印刷<br>白墨','長10 m，寬5cm，循環90cm'),(9,'爍色 Twinkle','紙膠帶','image\\\\papertape\\\\blinking1.jpg',230,'水彩手繪出彩虹的玫瑰花朵，搭配小星星變奏曲的樂譜；還有搭配詩人：劉定騫的詩－小星，絕美呈現！溫暖色系的搭配，貼成立體卡片很可愛！推薦給喜愛暖色系的朋友們','blinking.jsp','大米創意承印<br>霧面 PET<br>自帶離型紙<br>UV特油','長10 m，寬3cm，循環90cm'),(10,'出差少女 Business Trip','紙膠帶','image\\\\papertape\\\\BusinessTrip1.jpg',385,'『出差少女』展現出現今工作中的女孩認真拚搏的樣子，不管是創業或工作上到各地出差的忙碌感或忙裡偷閒的享受感覺，都從設計師的2兩種上色方式，將生活中繁忙扎實感及生活中隨興地享受感，分別體現的淋淋盡致！','BusinessTrip.jsp','大年創意承印<br>亮面PET<br>自帶離型紙<br>特油印刷<br>白墨','長10 m，寬5cm，循環90cm'),(11,'My Dear','紙膠帶','image\\\\papertape\\\\MyDear1.jpg',290,'作者將想重回少女時期的心境，描繪於稚嫩、苗條纖細的小鹿上，並想像在夢境中，以纖細的身姿穿梭在樹林間，還有小鳥和蝴蝶在身邊飛舞作伴，以安靜優雅且輕盈的漫步在草地上，帶給人一種特別自然舒服的氛圍！','MyDear.jsp','自印膠帶<br>日本和紙<br>自離型紙<br>UV 特殊油印','長10 m，寬5cm，循環90cm'),(12,'美好生活 Life','紙膠帶','image\\\\papertape\\\\Life1.jpg',385,'\"『美好生活 Life』收錄了13句治癒人心的語錄，以手寫的草寫英文字體，並畫了香茅、小方塊、橫線做裝飾，還搭配了迷迭香、薄荷、芹菜、百里香與文字相互襯托！\n採用了單色版且亮面PET透明無邊際，防水、耐磨、黏性高使用範圍更廣，讓視覺效果達到一致的簡單愜意感及拼貼堆疊效果更好！\"','Life.jsp','大年創意承印<br>亮面PET<br>自帶離型紙<br>特油印刷<br>白墨','長10 m，寬5cm，循環90cm'),(13,'Quakka（大頭）滑鼠墊','產品周邊','image\\\\mobile\\\\Bighead_mat.jpg',150,'成日坐在電腦前讓你感到煩躁嗎？放個可愛滑鼠墊讓自己有個好心情吧！可和筆電包系列一同購入，可愛加倍，快樂也加倍！背面採防滑設計，可愛又實用！','Bighead_mat.jsp','布料','200*200 (mm)'),(14,'Quakka（棉花糖）滑鼠墊','產品周邊','image\\\\mobile\\\\Marshmallow_mat.jpg',150,'成日坐在電腦前讓你感到煩躁嗎？放個可愛滑鼠墊讓自己有個好心情吧！可和筆電包系列一同購入，可愛加倍，快樂也加倍！背面採防滑設計，可愛又實用！','Marshmallow_mat.jsp','布料','220*183 (mm)'),(15,'Quakka（外太空）滑鼠墊','產品周邊','image\\\\mobile\\\\Space_mat.jpg',150,'成日坐在電腦前讓你感到煩躁嗎？放個可愛滑鼠墊讓自己有個好心情吧！可和筆電包系列一同購入，可愛加倍，快樂也加倍！背面採防滑設計，可愛又實用！','Space_mat.jsp','布料','210*210 (mm)'),(16,'Quakka筆電包','產品周邊','image\\\\mobile\\\\Quakka_bag.jpg',1380,'帶著Dinotaeng家族四處趴趴走吧！可愛筆電包為15吋，除了筆電外也能裝平板。內鋪厚軟絨，保護你的墊子產品完好無損！（內部無隔層）（附apple pencil插環）（拉鍊為塑膠非金屬）','Quakka_bag.jsp','100%棉<br>毛絨內裡<br>拉鍊為塑膠材質','15吋(390*271) (mm)'),(17,'棉花糖筆電包','產品周邊','image\\\\mobile\\\\Marshmallow_bag.jpg',1380,'帶著Dinotaeng家族四處趴趴走吧！可愛筆電包為15吋，除了筆電外也能裝平板。內鋪厚軟絨，保護你的墊子產品完好無損！（內部無隔層）（附apple pencil插環）（拉鍊為塑膠非金屬）','Marshmallow_bag.jsp','100%棉<br>毛絨內裡<br>拉鍊為塑膠材質','15吋(390*270) (mm)'),(18,'Quakka papa 耳機殼','產品周邊','image\\\\mobile\\\\Quakka papa_earphone case.jpg',570,'想要與眾不同卻又不想太顯眼的話，小巧可愛的Quakka papa耳機殼會是你的好選擇！帶著粗眉毛的Quakka papa總是能吸引住大家的目光! （此款只適用於 Airpods pro）','Quakka papa_earphone case.jsp','PVC軟膠','75*65*25 (mm)');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `meb_id` int NOT NULL,
  `amount` int NOT NULL,
  `re_name` varchar(10) DEFAULT NULL,
  `re_phone` varchar(10) DEFAULT NULL,
  `re_email` varchar(45) DEFAULT NULL,
  `pay` varchar(20) DEFAULT NULL,
  `re_address` varchar(45) DEFAULT NULL,
  `getdate` date DEFAULT NULL,
  `note` varchar(45) DEFAULT NULL,
  `statue` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `pro_id` (`pro_id`),
  KEY `slae_ibfk_2_idx` (`meb_id`),
  CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`),
  CONSTRAINT `slae_ibfk_2` FOREIGN KEY (`meb_id`) REFERENCES `member` (`meb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale`
--

LOCK TABLES `sale` WRITE;
/*!40000 ALTER TABLE `sale` DISABLE KEYS */;
INSERT INTO `sale` VALUES (1,1,1,2,'1','1','1','1','1','2023-06-10','1',NULL),(2,1,1,5,'1','1','1','1','1','2023-06-10','1',NULL),(3,12,1,3,'1','5','6','7','8','2023-06-10','1',NULL),(4,8,1,2,'1','1','1','1','4','2023-06-10','1',NULL);
/*!40000 ALTER TABLE `sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10  8:30:55
