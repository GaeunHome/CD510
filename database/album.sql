CREATE DATABASE  IF NOT EXISTS `album` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `album`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: album
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ad` (
  `ad_id` int NOT NULL AUTO_INCREMENT,
  `ad_img` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
INSERT INTO `ad` VALUES (1,'assets/images/Yonezu.jpg'),(2,'assets/images/Aimyon.jpg'),(3,'assets/images/IU.jpg'),(4,'assets/images/Taenggu.jpg'),(5,'assets/images/Vicky.jpg'),(6,'assets/images/Eric.jpg'),(7,'assets/images/Rick.jpg'),(8,'assets/images/Peter.jpg'),(9,'assets/images/Yonezu.jpg'),(10,'assets/images/Aimyon.jpg'),(11,'assets/images/IU.jpg');
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `procar_id` int NOT NULL AUTO_INCREMENT,
  `mem_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buy_count` int DEFAULT NULL,
  PRIMARY KEY (`procar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `count` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1000);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage` (
  `manage_id` int NOT NULL AUTO_INCREMENT,
  `manage_account` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manage_password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES (1,'cyim','1234');
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ig` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'吳彥霖｜10944103','assets/images/wu.jpg','<h3>這次的專案沒有之前的匆忙，<br></h3><h3>學習彼此上學期的經驗，<br></h3><h3>互相幫助及分工，<br></h3><h3>才能進行得比較順利，辛苦大家了！</h3>','https://www.facebook.com/profile.php?id=100006519072093','https://www.instagram.com/yanl1n.__/?hl=zh-tw'),(2,'侯文家｜10944105','assets/images/sir.jpg','<h3>這次期末專案的進度很順利，</h3><h3>讓我更知道前後端該如何整合，</h3><h3>乙班同學將前端的部分寫得完整且快速交給我們整合，</h3><h3>再加上和吳彥霖同學分工合作，</h3><h3>這次的期末專案才會順利結束。</h3>','https://www.facebook.com/profile.php?id=100003004043208','https://www.instagram.com/home_0224_gaeun/'),(3,'黃品翰｜10944220','assets/images/pin.jpg','<h3>我覺得這次多媒體期末專案很有趣，也很順利</h3><h3>我們提早開工，加上隊友很罩</h3><h3>然後想法也比上次一致，也知道要怎麼做了</h3><h3>所以進度很順利的結束。</h3>','https://www.facebook.com/profile.php?id=100005070519271','https://instagram.com/17_602han?r=nametag'),(4,'張睿哲｜10944221','assets/images/kuzuma.jpg','<h3>這次的多媒體期末專案進行的蠻順利的，</h3><h3>借鑑了上學期的教訓、經驗，</h3><h3>這次提早動工，熟悉整個流程，</h3><h3>再加上組員分互相合作，才能圓滿順利結束。</h3>','https://www.facebook.com/mier714111','https://www.instagram.com/kuzuma_ub/');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `content` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,1,'侯sir','2022-03-05','太好聽了吧！！！');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `pro_id` int NOT NULL,
  `vip_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_count` int NOT NULL,
  `pay` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--


--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singer` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singer_img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singer_intro` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `amount` int NOT NULL,
  `introduction` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pubtime` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'assets/images/free.jpeg','終於了解自由','周興哲Eric Chou','assets/images/eric-removebg-preview.png','台灣華語流行音樂創作歌手，擅長彈奏古典鋼琴及音樂創作，因為被星探挖掘，2014年演唱電視劇《16個夏天》的片尾曲《以後別做朋友》以及《16個夏天》中演出打開知名度。2019年1月發行EP《終於了解自由》。歌曲《以後別做朋友》與《你，好不好？》在 YouTube 點閱數均破億，使周興哲成為在周杰倫、林俊傑之後，第三位擁有兩首破億歌曲的華語歌手。',800,999,'以感情線貫穿，EDM、R&B、Trap 等多種音樂風格訴說在不同階段中的感情心境轉折。 古典底蘊深厚的周興哲在首張專輯中即展現了出色的創作能力，在這張EP 中同樣展現了不俗的創作廣度，多首詞曲、製作一手包辦，以故事性的創作概念點出「自由」的主軸，透過音樂剖析出最真實的內心波動。','華語','索尼音樂','2019/01'),(2,'assets/images/love.jpeg','愛我的時候','周興哲Eric Chou','assets/images/eric-removebg-preview.png','台灣華語流行音樂創作歌手，擅長彈奏古典鋼琴及音樂創作，因為被星探挖掘，2014年演唱電視劇《16個夏天》的片尾曲《以後別做朋友》以及《16個夏天》中演出打開知名度。2019年1月發行EP《終於了解自由》。歌曲《以後別做朋友》與《你，好不好？》在 YouTube 點閱數均破億，使周興哲成為在周杰倫、林俊傑之後，第三位擁有兩首破億歌曲的華語歌手。','1000',999,'周興哲×單依純聯手演繹同行序曲「愛我的時候」，興哲詞曲創作 講述分手心境，感謝曾經相伴 放開手遞祝福，讓記憶停留 在彼此相愛的時候...','華語','索尼音樂','2021/03'),(3,'assets/images/trash.jpg','社會敗類','陳忻玥Vicky Chen','assets/images/vicky-removebg-preview.png','台灣華語流行音樂創作歌手，參加歌唱選秀節目《聲林之王2》後人氣大漲。代表作《煙幕》目前在YouTube已累積近4000萬次點擊，，獨特帶點沙啞的高亢嗓音，是她最強的武器。外型陽光、開朗的陳忻玥，相信如果聽過她的創作作品，一定能感覺到其中之反差，〈入土之前〉、〈社會敗類〉等衝擊的歌名及透過旋律的吶喊，處處細節都能看見Vicky對音樂的熱情與能量。',520,999,'〈社會敗類〉是在講述陳忻玥自身在《聲林之王》節目進15強比賽輸了的沉重自我反省心聲，對於自身的不願意面對現實的態度感到討厭，因此在沉痛的內心中寫下了這首曲子來痛罵自已的個性。', '華語', '史科特音樂', '2020/04'),(4,'assets/images/who am i.jpg','AM I WHO I AM','陳忻玥Vicky Chen','assets/images/vicky-removebg-preview.png','台灣華語流行音樂創作歌手，參加歌唱選秀節目《聲林之王2》後人氣大漲。代表作《煙幕》目前在YouTube已累積近4000萬次點擊，，獨特帶點沙啞的高亢嗓音，是她最強的武器。外型陽光、開朗的陳忻玥，相信如果聽過她的創作作品，一定能感覺到其中之反差，〈入土之前〉、〈社會敗類〉等衝擊的歌名及透過旋律的吶喊，處處細節都能看見Vicky對音樂的熱情與能量。',800,999,'這是她找尋自己、定義自己、又推翻自己的一趟旅程。摘下習慣的面具找尋那個真實的自己質疑著被社會制約的一切試圖找尋到那個屬於自己的答案也許，這個迷惘、但卻不放棄尋找自己的她就是真正的她。', '華語', '史科特音樂', '2020/04'),(5,'assets/images/spring.jpeg','春日ハルノヒ','愛繆あいみょん','assets/images/aimyon-removebg-preview.png','日本女性創作歌手，所屬經紀公司為ENS Entertainment。藝名「愛繆」是由高中好友取的，好友也是歌曲《○○ちゃん》的原型。有著「中毒性歌姬」、「流媒女王」，以及「平成最後的天才少女」等許多稱誇張稱號，外表陽光、開郎的她，作曲上卻有著異想不到的反差，歌詞無拘無束的表達自己對萬事萬物的態度，也背日本公評為「世界觀最為獨特的新人女歌手」。',8888,999,'為電影《蠟筆小新：新婚旅行風暴〜奪回廣志大作戰〜》創作主題歌的消息公開，作為蠟筆小新粉絲的愛繆表示「這是我一生中的寶物」。本作歌名《春日》取自電影主角野原家所在的「春日部」，歌詞首句中的「北千住站的站台」為野原新之助的父母求婚之地，歌曲中處處體現著野原一家的家庭愛這個主題。','日語', 'unBORDE', '2019/04'),(6,'assets/images/heart.jpeg','裸の心','愛繆あいみょん','assets/images/aimyon-removebg-preview.png','日本女性創作歌手，所屬經紀公司為ENS Entertainment。藝名「愛繆」是由高中好友取的，好友也是歌曲《○○ちゃん》的原型。有著「中毒性歌姬」、「流媒女王」，以及「平成最後的天才少女」等許多稱誇張稱號，外表陽光、開郎的她，作曲上卻有著異想不到的反差，歌詞無拘無束的表達自己對萬事萬物的態度，也背日本公評為「世界觀最為獨特的新人女歌手」。', 10000,999,'歌曲由愛繆本人創作，並由Tomi Yo編曲兼製作。歌曲為帶有民間音樂與歌謠曲風格的J-Pop抒情曲，並以「希望戀情能夠開花結果」的女性作為主題。也是TBS電視台週二連續劇《我的家政夫渚先生》的主題曲，於2020年6月17日發售，並於同年5月在數位平台先行上架。', '日語', 'unBORDE', '2020/06'),(7,'assets/images/DAYDREAM.jpeg','DAYDREAM','米津玄師よねづけんし','assets/images/rice-removebg-preview.png','日本音樂家、創作歌手、插畫家、攝影師、舞者，為近年日本流行音樂的代表歌手之一，甚至在MV當中挑戰過跳舞，這樣廣泛的才能讓他被稱作「全方位創作型鬼才歌手」、「十年難得一見的天才」。第八張單曲《Lemon》是他的代表作，並連續兩年位列日本Billboard Japan Hot 100排行榜榜首，MV在Youtube上的瀏覽量超越7億次，為日本國內最多瀏覽次數的影片之一。' ,1000,999,'收錄於米津玄師的專輯《Pale Blue》的第二曲〈ゆめうつつ〉，也是新聞節目《news zero》的主題曲。「反覆於夢和現實間」的曲子。現實中某種意義上虛幻的事件，或是讓人感到憤怒的事，縱觀來看這樣的事俯拾皆是。近乎殘酷的「現實」，和那正相反的「安穩的夢中」，反覆於這樣的夢和現實間並生活下去。', '日語', 'SME Records', '2021/06'),(8,'assets/images/yANKEE.jpeg','YANKEE','米津玄師よねづけんし','assets/images/rice-removebg-preview.png','日本音樂家、創作歌手、插畫家、攝影師、舞者，為近年日本流行音樂的代表歌手之一，甚至在MV當中挑戰過跳舞，這樣廣泛的才能讓他被稱作「全方位創作型鬼才歌手」、「十年難得一見的天才」。第八張單曲《Lemon》是他的代表作，並連續兩年位列日本Billboard Japan Hot 100排行榜榜首，MV在Youtube上的瀏覽量超越7億次，為日本國內最多瀏覽次數的影片之一。',9981,999,'Yankee（洋基）含有移民的意思，米津解釋他很喜歡移民這個詞，他是以網絡為基礎逐漸發展的人，然後又從那兒轉移到不同的地方，也像是移民。diorama的歌曲大部分是在傢記錄的，而YANKEE則是和樂隊合作。歌曲アイネクライネ被用為東京地下鐵的CM曲。', '日語', '環球音樂', '2014/04'),(9,'assets/images/voice.jpeg','voice','金泰耎김태연','assets/images/taenggu2.png','藝名太妍，韓國女歌手，牛奶肌膚、精緻五官、空靈清新的氣質加上超強歌唱實力，被粉絲們封為「精靈王」。以女子組合少女時代出道，在隊內擔任隊長、主唱，現為SM娛樂限定團GOT the beat的隊長。有著獨特的個人品味框架在，她時而抒情、時而時尚，有點不按牌理出牌，每次回歸都能有新的驚喜，而粉絲給了她「聽信太」的美談，意思是只要是太妍唱的歌一定會很好聽，值得聽。',520,999,'《VOICE》是韓國組合少女時代成員太妍在日本出道首張個人迷你專輯，5月13日先行在各大音源網站發佈專輯歌曲，6月5日在日本發行實體專輯。','韓語', 'SM娛樂', '2019/06'),(10,'assets/images/four season.jpeg','four season','金泰耎김태연','assets/images/taenggu2.png','藝名太妍，韓國女歌手，牛奶肌膚、精緻五官、空靈清新的氣質加上超強歌唱實力，被粉絲們封為「精靈王」。以女子組合少女時代出道，在隊內擔任隊長、主唱，現為SM娛樂限定團GOT the beat的隊長。有著獨特的個人品味框架在，她時而抒情、時而時尚，有點不按牌理出牌，每次回歸都能有新的驚喜，而粉絲給了她「聽信太」的美談，意思是只要是太妍唱的歌一定會很好聽，值得聽。',1314,999,'〈四季〉是首另類流行（Alternative Pop）的歌曲，旋律主要由原聲吉他、鋼琴及高音小提琴構成。歌詞以四季來形容一段戀情，從一開始的熱戀再到逐漸麻木並平靜的離開，太妍描述〈四季〉是首「如同經歷四季，面對戀情尾聲離別的歌曲」。','韓語', 'SM娛樂', '2019/03'),(11,'assets/images/love peom.jpeg','love poem','李知恩이지은','assets/images/iu2-removebg-preview.png','韓國創作歌手、演員。藝名「IU」是「I」和「You」的複合詞，意為「你我通過音樂成為一體」。現為EDAM娛樂，15歲時推出首張迷你專輯《Lost and Found》，開始歌手生涯，有著「國民妹妹」、「國民甜心」的稱號。除了身為知名度、歌曲銷量與獎項兼具的天后級歌手之外，其本人也是實力受到認可的詞曲作家以及音樂製作人，還作為演員出演過許多電視劇，並獲得過獎項。',1150,999,'《Love Poem》是韓國創作歌手IU的第五張韓語迷你專輯，此張專輯是IU距離十週年紀念單曲〈BBIBBI〉時隔後1年的回歸。', '韓語', 'kakao M', '2019/01'), (12,'assets/images/celebrity.jpeg','celebrity','李知恩이지은','assets/images/iu2-removebg-preview.png','韓國創作歌手、演員。藝名「IU」是「I」和「You」的複合詞，意為「你我通過音樂成為一體」。現為EDAM娛樂，15歲時推出首張迷你專輯《Lost and Found》，開始歌手生涯，有著「國民妹妹」、「國民甜心」的稱號。除了身為知名度、歌曲銷量與獎項兼具的天后級歌手之外，其本人也是實力受到認可的詞曲作家以及音樂製作人，還作為演員出演過許多電視劇，並獲得過獎項。',646,999,'IU李知恩為了致敬這樣的「奇異之友」開始將故事寫成歌詞，隨著歌詞的製作推進，漸漸地她領悟到這也是IU自己的故事，IU希望透過這首歌告訴所有人：「你並不是奇怪的人，你是像星星般一樣的存在。」', '韓語', 'EDAM娛樂', '2021/07'),(13,'assets/images/whenever you need somebody.jpeg','When Ever You Need Somebody','瑞克·艾斯里Rick Astley','assets/images/bgremove_rick.jpg','英國流行情歌和舞曲男歌手，Rick Astley憑《Never Gonna Give You Up》一曲走紅，曾於6年間推出四張大碟，直至1993年《Body & Soul》大碟的失利，他逐漸淡出樂壇，直至2000年才捲土重來，以更成熟的唱腔再戰樂壇，更打響了網路的知名度。在現今也是人氣惡作劇迷因神曲，網路上也充斥著許多相關的謎因圖片以及影片，在2022/03宣布《Never Gonna Give You Up》的專輯時隔35年將推出重製版。',6666,999,'《每當你孤獨時》是英國歌手瑞克·艾斯里的出道專輯。專輯由RCA唱片於1987年11月16日發行。 《每當你孤獨時》是艾斯里最暢銷的專輯，共售出1520萬張，這也是1987年，英國第7熱賣的專輯。', '歐美', 'RAC', '1987/10'),(14,'assets/images/beautiful life.jpeg','Beautiful Life','瑞克·艾斯里Rick Astley','assets/images/bgremove_rick.jpg','英國流行情歌和舞曲男歌手，Rick Astley憑《Never Gonna Give You Up》一曲走紅，曾於6年間推出四張大碟，直至1993年《Body & Soul》大碟的失利，他逐漸淡出樂壇，直至2000年才捲土重來，以更成熟的唱腔再戰樂壇，更打響了網路的知名度。在現今也是人氣惡作劇迷因神曲，網路上也充斥著許多相關的謎因圖片以及影片，在2022/03宣布《Never Gonna Give You Up》的專輯時隔35年將推出重製版。', 7777,999,'Beautiful Life是英國創作歌手Rick Astley的第八張錄音室專輯。它於2018年7月13日由BMG發布。該專輯在英國專輯排行榜上名列第六。', '歐美', 'BRMG', '2018/01'),(15,'assets/images/that whats i like.jpeg','that whats i like','火星人 布魯諾<br> Peter Gene Hernandez','assets/images/bono-removebg-preview.png','美國歌手、詞曲作家、音樂製作人和舞者，流行樂中最具多元性、最平易近人的歌手之一，全球專輯銷量已超過900萬，單曲銷量已超過1.15億。他是有史以來取得銷量最高的藝人之一。自2010年出道以來，他已纍計取得了7支百大單曲榜冠軍，在男藝人中僅次於埃爾維斯·皮禮士利，是《時代》2011年全球百大影響力人物之一。', 2017,999,'這首歌輕快浪漫，搭配手繪風的舞蹈 MV，很有個人特色也好洗腦啊～整首歌充滿富豪式既霸氣又浪漫的告白，快來學學幾句，一把擄獲愛人的心吧！', '歐美', '大西洋唱片', '2010/10'),(16,'assets/images/doo-wops & hooligans.jpeg','doo-wops & hooligans','火星人 布魯諾<br> Peter Gene Hernandez','assets/images/bono-removebg-preview.png','美國歌手、詞曲作家、音樂製作人和舞者，流行樂中最具多元性、最平易近人的歌手之一，全球專輯銷量已超過900萬，單曲銷量已超過1.15億。他是有史以來取得銷量最高的藝人之一。自2010年出道以來，他已纍計取得了7支百大單曲榜冠軍，在男藝人中僅次於埃爾維斯·皮禮士利，是《時代》2011年全球百大影響力人物之一。' ,2010,999,'《情歌正傳》是美國歌手火星人布魯諾的首張錄音室專輯，於2010年10月4日發行。火星人參與了全部歌曲的創作。專輯名稱中的「doo-wop」指的是一種音樂流派。 專輯中的兩首歌曲《Liquor Store Blues》與《Grenade》率先作為專輯的促銷單曲發行。', '歐美', '大西洋唱片', '2017/01');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slideshow`
--

DROP TABLE IF EXISTS `slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slideshow` (
  `slideshow_id` int NOT NULL AUTO_INCREMENT,
  `slideshow_pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`slideshow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slideshow`
--

LOCK TABLES `slideshow` WRITE;
/*!40000 ALTER TABLE `slideshow` DISABLE KEYS */;
INSERT INTO `slideshow` VALUES (1,'assets/images/aimyonad.jpg'),(2,'assets/images/aimyonad.jpg'),(3,'assets/images/ericad.jpg'),(4,'assets/images/taengguad.jpg'),(5,'assets/images/en.jpg');
/*!40000 ALTER TABLE `slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip`
--

DROP TABLE IF EXISTS `vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip` (
  `vip_id` int NOT NULL AUTO_INCREMENT,
  `vip_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip_account` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vip_password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `vip`
--

LOCK TABLES `vip` WRITE;
/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` VALUES (1,NULL,NULL,NULL,NULL,'cyim','1234');
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `good_id` int COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vip_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 13:47:16

DROP TABLE IF EXISTS `response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `response` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,  
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` VARCHAR(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

