-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quizilla
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `mapel` varchar(45) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` VALUES (1,'Matematika'),(2,'Fisika'),(3,'Biologi'),(4,'Kimia'),(5,'Sejarah'),(6,'Bahasa Inggris'),(7,'Geografi'),(8,'Pengetahuan Umum');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertanyaan`
--

DROP TABLE IF EXISTS `pertanyaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertanyaan` (
  `id_pertanyaan` int NOT NULL AUTO_INCREMENT,
  `id_set_pertanyaan` int NOT NULL,
  `pertanyaan` longtext NOT NULL,
  `duration` int NOT NULL DEFAULT '15',
  `jawaban` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_pertanyaan`),
  KEY `fk_id_set_pertanyaan_idx` (`id_set_pertanyaan`),
  CONSTRAINT `fk_id_set_pertanyaan` FOREIGN KEY (`id_set_pertanyaan`) REFERENCES `set_pertanyaan` (`id_set_pertanyaan`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertanyaan`
--

LOCK TABLES `pertanyaan` WRITE;
/*!40000 ALTER TABLE `pertanyaan` DISABLE KEYS */;
INSERT INTO `pertanyaan` VALUES (1,1,'39 + 29',15,1),(2,1,'5 x 9',15,8),(3,1,'34 x 36',15,11),(4,1,'5 x 3',15,16),(5,1,'99 / 3',15,19),(6,2,'x - y = 1, xy = 6, x + y =  . . .',15,22),(7,2,'5! =  . . .',15,28),(8,2,'5C3 =  . . .',15,30),(9,2,'0! =  . . .',15,34),(10,2,'9P3 =  . . .',15,40),(11,3,'Luas lingkaran dengan radius 7cm adalah . . .',15,41),(12,3,'Keliling lingkaran dengan radius 7cm adalah . . .',15,45),(13,3,'sin(30) = . . .',15,50),(14,3,'cos(37) = . . .',15,55),(15,3,'log(10) = . . .',15,58),(16,16,'Where is mother cooking?',20,63),(17,16,'My brother works at a hospital. My brother is a . . . ',20,66),(18,16,'One child, two . . . ',20,72),(19,16,'I watch, she . . .',20,75),(20,16,'The antonym for little is . . .',20,79),(21,17,'Shall we go out for pizza tonight?',20,83),(22,17,'Do you mind if I come too? ',20,85),(23,17,'How long are you here for? ',20,92),(24,17,'I hope I haven\'t . . . you any trouble by changing the arrangements.',20,94),(25,17,'Is there ...... of food for everyone?',20,100),(26,18,'Look up at the sky when it\'s dark. If there . . . no clouds, you will see the moon.',20,103),(27,18,'Tourists can\'t visit the moon yet, but rockets have . . . astronauts there.',20,107),(28,18,'I asked Jay about the accident, but she . . . a word.',20,110),(29,18,'You\'re looking very . . . yourself! Have you won some money?',20,116),(30,18,'I learned English in school, but I . . . most of it.',20,120),(31,22,'Ada berapa hari dalam 1 minggu?',15,124),(32,22,'Planet yang dikenal dengan sebutan \'planet merah\' adalah . . .',15,125),(33,22,'Matahari terbit di . . .',15,131),(34,22,'Yang tidak termasuk warna primer adalah . . .',15,136),(35,22,'Air terjun tertinggi di dunia adalah . . .',15,138),(36,23,'Negara mana yang memiliki garis pantai terpanjang di dunia?',15,141),(37,23,'Bahasa yang paling sering digunakan di dunia adalah . . .',15,145),(38,23,'Berapa panjang dari Great Wall of China?',15,151),(39,23,'Mata uang dari Russia adalah . . .',15,154),(40,23,'Planet terdekat dengan bumi adalah . . .',15,159),(41,24,'Siapa penemu mi instan?',15,161),(42,24,'Presiden pertama Filipina adalah . . .',15,167),(43,24,'Ablutophobia adalah phobia terhadap . . .',15,172),(44,24,'Apa nama spesies dinosaurus yang berukuran 12 inci?',15,174),(45,24,'Negara yang benderanya memiliki bentuk unik . . .',15,180),(46,7,'Kambing termasuk hewan . . .',20,183),(47,7,'Karbohidrat berfungsi untuk . . .',20,186),(48,7,'Saat kita bernafas, pada hidung dan tenggorokan terjadi proses yang sama yaitu . . .',20,191),(49,7,'Alat pernapasan manusia terdiri atas . . .',20,195),(50,7,'Simbiosis mutualisme dapat terjadi antara . . .',20,200),(51,8,'Persilangan tanaman belimbing berbuah banyak, rasa manis (BbMm) dengan tanaman belimbing berbuah sedikit, rasa asam (bbmm), persentase kemungkinan diperoleh tanaman belimbing berbuah banyak, rasa asam sebanyak',25,204),(52,8,'Proses yang terjadi pada tubulus distal adalah . . .',25,208),(53,8,'Apabila tubuh manusia terkena infeksi, maka bagian darah yang bekerja adalah . . .',25,210),(54,8,'Nama enzim yang di hasilkan oleh pankreas adalah . . .',25,213),(55,8,'Albumin dalam plasma darah berfungsi untuk . . .',25,219),(56,9,'Air kelapa saat ini banyak dimanfaatkan untuk pembuatan makanan ringan Nata de Coco. Bakteri yang membantu proses pembentukannya adalah . . .',30,222),(57,9,'Jaringan yang berbentuk pipih, kubus atau silindris, terletak pada permukaan organ, serta berfungsi untuk proteksi dan sekresi disebut dengan . . .',30,227),(58,9,'Seseorang yang menderita sakit akibat infeksi virus akan mengalami . . .',30,229),(59,9,'Kloroplas merupakan tempat terjadinya fotosintesis. Bagian kloroplas tempat terbentuknya glukosa dari karbon dioksida adalah . . .',30,235),(60,9,'Pasangan nama organel dan fungsinya yang benar adalah . . .',30,240),(61,13,'Tokoh yang mengetik teks proklamasi adalah...',15,241),(62,13,'Tokoh yang tidak termasuk sebagai penyusun teks proklamasi adalah...',15,248),(63,13,'Pembacaan naskah proklamasi dilakukan di ?',15,251),(64,13,'Siapakah yang membacakan teks proklamasi',15,255),(65,13,'Berikut ini yang merupakan salah satu dari golongan muda adalah . . .',15,260),(66,14,'Nama gerakan dari golongan pemuda yang mempelopori \"penculikan\" Soekarno - Hatta adalah . . .',20,263),(67,14,'Dari Rengasdengklok, Soekarno dan Hatta langsung menuju ke rumah Laksamana Maeda dalam rangka . . .',20,267),(68,14,'Makna pada kalimat pertama teks proklamasi kemerdekaan Indonesia adalah pernyataan Bangsa Indonesia untuk . . .',20,269),(69,14,'Pengibar bendera merah putih dalam upacara proklamasi kemerdekaan 17 Agustus 1945 adalah...',20,273),(70,14,'Badan yang bertugas menyiapkan proklamasi kemerdekaan Indonesia adalah...',20,277),(71,15,'Yang merupakan wilayah militer Jepang di Indonesia saat menguasai Indonesia adalah tentara...',30,282),(72,15,'Apa yang menyebabkan terjadinya peristiwa Rengasdengklok',30,287),(73,15,'Manifesto politik yang dikeluarkan oleh Perhimpunan Indonesia di Belanda pada tahun 1925 berisi...',30,291),(74,15,'Perang Diponegoro terjadi dikarisidenan Kedu Jawa Tengah pada tahun . ..',30,293),(75,15,'Berikut merupakan latar belakang bangsa Eropa melakukan penjelajahan Samudra adalah ...',30,299),(76,4,'Jika kita tuangkan air ke dalam gelas, gelas akan penuh berisi air. Peristiwa membuktikan salah satu sifat air, yaitu . . .',15,304),(77,4,'Dalam rangkaian listrik saklar berguna untuk . . .',15,305),(78,4,'Setiap perubahan bentuk benda selalu menghasilkan energi . . .',15,310),(79,4,'Pada waktu pagi matahari muncul di sebelah timur. Hal ini disebabkan oleh . . .',15,315),(80,4,'Yang menjadi pusat tata surya adalah . . .',15,317),(81,5,'Besaran pokok dan satuan menurut sistem Internasional yang benar adalah . . .',20,323),(82,5,'Gaya yang ditimbukan ketika dua permukaan benda saling bersentuhan adalah . . .',20,327),(83,5,'Proses terpancarnya kembali cahaya dari permukaan benda yang terkena cahaya merupakan peristiwa . . .',20,330),(84,5,'Alat yang digunakan untuk mengukur hambatan listrik yang merupakan suatu daya yang mampu menahan aliran listrik pada konduktor adalah . . .',20,333),(85,5,'Alat ukur panjang terdiri dari beberapa jenis seperti . . .',20,340),(86,6,'Sebuah batu yang massanya 2 kg jatuh dari ketinggian 100 m. Jika percepatan gravitasi 10 m/s^2, maka usaha yang dilakukan oleh gaya berat sampai ketinggian 20 m adalah . . .',45,343),(87,6,'Sebuah mobil dengan massa 1 ton bergerak dari keadaan diam, sesat kemudan kecepatannya 5 m/s.Besar usaha yang dilakukan adalah mesin mobil tersebut . . .',45,348),(88,6,'Sebuah trem mempergunakan daya 100 kW sehingga dapat bergerak dengan kelajuan tetap 4 m/s. Gaya penggeraknya adalah . . . N',45,351),(89,6,'Seorang astronot sedang menuju sebuah planet dengan menggunakan pesawat ulang-alik dengan kecepatan 0,8 kali kecepatan cahaya. Dengan menggunakan transformasi Lorentz persentasi perambatan massa astronot tersebut adalah . . .',45,356),(90,6,'Sebuah benda massa mo berada dalam sebuah pesawat ruang angkasa yang sedang melaju dengan kecepatan 0,8 c (c = kecepatan cahaya). Dengan menggunakan teori relativitas, perbandingan antara energi kinetik dengan energi diam benda tersebut adalah . . .',45,357),(91,10,'Siapakah nama ilmuwan yang berhasil menemukan elektron dan model atom yang menyerupai roti kismis adalah. . .',15,362),(92,10,'Zat yang tidak dapat diuraikan lagi menjadi zat yang lebih sederhana melalui reaksi kimia biasa disebut. . .',15,367),(93,10,'Sebuah atom memiliki jumlah elektron 7 dan nomor massanya 19. Berapakah jumlah neutron pada atom tersebut?',15,372),(94,10,'Dalam satu golongan, besarnya jari-jari atom dari atas ke bawah adalah. . .',15,375),(95,10,'Sifat-sifat unsur yang berubah secara beraturan seiring pertambahan nomor atomnya disebut. . .',15,377),(96,11,'Unsur gas mulia apakah yang bersifat radioaktif sehingga sinar yang dipancarkan dapat digunakan dalam terapi kanker adalah. . .',20,383),(97,11,'\"Pada suhu dan tekanan sama, semua gas bervolume sama mengandung jumlah molekul yang sama pula.\" Hukum dasar kimia diatas dikemukakan oleh. . .',20,385),(98,11,'Disebut ikatan apakah bila pasangan elektron yang dipakai bersama tertarik lebih kuat ke salah satu atom. . .',20,389),(99,11,'Suatu atom memiliki nomor atom 20. Konfigurasi elektron dari atom tersebut adalah. . .',20,396),(100,11,'Atom Natrium memiliki no massa 23 dan 12 neutron. Jumlah elektron valensi natrium adalah . . .',20,397),(101,12,'Berikut ini pernyataan yang benar mengenai proses endoterm adalah. . .',30,401),(102,12,'Berapakah atom karbon yang ada dalam molekul CO2. . .',30,405),(103,12,'Namakan bagi sebatian LiF. . .',30,409),(104,12,'Kabut adalah sistem koloid dari . . .',30,415),(105,12,'Jika udara ditiupkan ke dalam larutan sabun akan timbul buih. Fase terdispersi dan fase pendispersi pada buih berurut-urut adalah. . .',30,419),(106,19,'Tempat terjadinya peristiwa cuaca, pada lapisan Atmosfer adalah . . .',15,423),(107,19,'Di bawah ini yang merupakan lapisan udara adalah . . .',15,428),(108,19,'Dalam ilmu kosmologi, Jagat Raya adalah ruang tempat seluruh benda langit berada. Berikut ini benda langit yang berada di Jagat Raya itu, kecuali . . .',15,431),(109,19,'Objek formal geografi adalah cara pandang dan berpikir mengenai fenomena geosfer melalui analisa dengan pendekatan . . .',15,436),(110,19,'Geografi dibagi menjadi dua bidang berdasarkan struktur ilmu pengkajian yaitu . . .',15,438),(111,20,'Fenomena geografi yang dianalisis dengan pendekatan spasial yaitu. . .',20,445),(112,20,'Musim kemarau panjang di Indonesia tahun 2015 memaksa petani merugi. Fenomena ini terjadi karena adanya El Nino di Samudera Pasifik bagian timur. Pendekatan yang sesuai dengan paragraf tersebut adalah. . .',20,446),(113,20,'Banjir yang sering terjadi di sekitar pemukiman penduduk di daerah perkotaan akibat semakin dangkal dasar sungai. Pendangkalan sungai terjadi akibat adanya penduduk yang membuang sampah ke sungai. Pendekatan geografi untuk mengkaji hal tersebut adalah. . .',20,450),(114,20,'Pembangunan kawasan permukiman yang dilengkapi dengan pembangunan fasilitas umum, infrastruktur di wilayah perkotaan terus dikembangkan. Pembangunan juga melibatkan wilayah sekitar. Pendekatan geografi untuk pelaksanaan kegiatan tersebut adalah. . .',20,456),(115,20,'Hujan deras yang mengguyur kota Medan beberapa waktu lalu mengakibatkan banjir di beberapa lokasi kota tersebut. Pendekatan yang diperlukan untuk mengkaji permasalahan tersebut adalah. . .',20,461),(116,21,'Hujan deras yang mengguyur kota Medan beberapa waktu lalu mengakibatkan banjir di beberapa lokasi kota tersebut. Pendekatan yang diperlukan untuk mengkaji permasalahan tersebut adalah. . .',30,465),(117,21,'Pada musim kemarau selalu terjadi bencana kabut asap di wilayah Sumatera dan Kalimantan, karena masyarakat membuka areal pertanian dengan cara membakar lahan. Pendekatan geografi untuk melengkapi fenomena tersebut adalah. . .',30,468),(118,21,'Geografi sebagai disiplin ilmu dapat menunjukkan bahwa erupsi gunung api terjadi karena saluran lava yang tersumbat. Berarti geografi dapat menjawab pertanyaan. . .',30,473),(119,21,'Semua bahan yang ditemukan manusia dalam alam yang dapat dipakai untuk kepentingan hidupnya adalah pengertian dari . . .',30,474),(120,21,'Tanah yang terbentuk dari meterial yang dikeluarkan dari letusan gunung merapi disebut tanah. . .',30,480);
/*!40000 ALTER TABLE `pertanyaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pilihan`
--

DROP TABLE IF EXISTS `pilihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pilihan` (
  `id_pilihan` int NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(150) NOT NULL,
  `id_pertanyaan` int NOT NULL,
  PRIMARY KEY (`id_pilihan`),
  KEY `fk_id_pertanyaan_idx` (`id_pertanyaan`),
  CONSTRAINT `fk_id_pertanyaan` FOREIGN KEY (`id_pertanyaan`) REFERENCES `pertanyaan` (`id_pertanyaan`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pilihan`
--

LOCK TABLES `pilihan` WRITE;
/*!40000 ALTER TABLE `pilihan` DISABLE KEYS */;
INSERT INTO `pilihan` VALUES (1,'68',1),(2,'58',1),(3,'78',1),(4,'48',1),(5,'50',2),(6,'35',2),(7,'70',2),(8,'45',2),(9,'2004',3),(10,'1024',3),(11,'1224',3),(12,'1344',3),(13,'5',4),(14,'25',4),(15,'45',4),(16,'15',4),(17,'13',5),(18,'14',5),(19,'33',5),(20,'11',5),(21,'4',6),(22,'5',6),(23,'2',6),(24,'3',6),(25,'15',7),(26,'85',7),(27,'105',7),(28,'120',7),(29,'5',8),(30,'10',8),(31,'15',8),(32,'20',8),(33,'0',9),(34,'1',9),(35,'-1',9),(36,'2',9),(37,'204',10),(38,'304',10),(39,'404',10),(40,'504',10),(41,'154',11),(42,'14 pi',11),(43,'77 pi',11),(44,'44',11),(45,'14 pi',12),(46,'154',12),(47,'77 pi',12),(48,'44',12),(49,'0',13),(50,'0.5',13),(51,'-0.5',13),(52,'1',13),(53,'0.6',14),(54,'-0.6',14),(55,'0.8',14),(56,'-0.8',14),(57,'0',15),(58,'1',15),(59,'10',15),(60,'-1',15),(61,'In the bathroom',16),(62,'In the bedroom',16),(63,'In the kitchen',16),(64,'In the living room',16),(65,'Teacher',17),(66,'Doctor',17),(67,'Police',17),(68,'Chef',17),(69,'Childs',18),(70,'Childes',18),(71,'Childrens',18),(72,'Children',18),(73,'Watchs',19),(74,'Watching',19),(75,'Watches',19),(76,'Watchings',19),(77,'Quiet',20),(78,'Small',20),(79,'Huge',20),(80,'Tiny',20),(81,'I know that.',21),(82,'It\'s very good.',21),(83,'I\'m too tired.',21),(84,'It\'s nice.',21),(85,'That\'s fine.',22),(86,'I\'d like to.',22),(87,'I don\'t know if I can.',22),(88,'I will.',22),(89,'Since last week.',23),(90,'Not today.',23),(91,'Ten days ago.',23),(92,'Till tomorrow.',23),(93,'put',24),(94,'caused',24),(95,'made',24),(96,'done',24),(97,'adequate',25),(98,'enough',25),(99,'sufficient',25),(100,'plenty',25),(101,'was',26),(102,'be',26),(103,'are',26),(104,'is',26),(105,'took',27),(106,'take',27),(107,'taken',27),(108,'takes',27),(109,'didn\'t use to',28),(110,'wouldn\'t say',28),(111,'shouldn\'t say',28),(112,'refused',28),(113,'afraid',29),(114,'angry',29),(115,'concerned',29),(116,'pleased',29),(117,'forgot',30),(118,'forget',30),(119,'forgetted',30),(120,'have forgotten',30),(121,'10',31),(122,'5',31),(123,'8',31),(124,'7',31),(125,'Mars',32),(126,'Jupiter',32),(127,'Bumi',32),(128,'Merkurius',32),(129,'Utara',33),(130,'Selatan',33),(131,'Timur',33),(132,'Barat',33),(133,'Biru',34),(134,'Kuning',34),(135,'Merah',34),(136,'Hitam',34),(137,'Niagara',35),(138,'Angel',35),(139,'Wailua',35),(140,'Sutherland',35),(141,'Canada',36),(142,'Indonesia',36),(143,'Australia',36),(144,'Russia',36),(145,'Mandarin',37),(146,'Indonesia',37),(147,'Inggris',37),(148,'Jepang',37),(149,'5700 km',38),(150,'5500 km',38),(151,'6400 km',38),(152,'7300 km',38),(153,'Rupiah',39),(154,'Rubel',39),(155,'Dollar',39),(156,'Rupee',39),(157,'Jupiter',40),(158,'Saturnus',40),(159,'Venus',40),(160,'Uranus',40),(161,'Momofuku Ando',41),(162,'Shin Choo Ho',41),(163,'Liem Sioe Liong',41),(164,'Julius Maggi',41),(165,'Elpidio Quirino',42),(166,'Manuel Roxas',42),(167,'Emilio Aguinaldo',42),(168,'Rodrigo Duterte',42),(169,'Mobil',43),(170,'Tergores',43),(171,'Gagal',43),(172,'Mandi',43),(173,'Microraptor',44),(174,'Epidendrosaurus',44),(175,'Aquilops',44),(176,'Minmi',44),(177,'Albania',45),(178,'Canada',45),(179,'Guam',45),(180,'Nepal',45),(181,'Omnivora',46),(182,'Karnivora',46),(183,'Herbivora',46),(184,'Semua salah',46),(185,'Pengganti sel yang rusak',47),(186,'Sumber energi',47),(187,'Cadangan makanan',47),(188,'Zat pengatur tubuh',47),(189,'Pertukaran oksigen dan karbondioksida',48),(190,'Pengaturan oksigen yang masuk tubuh',48),(191,'Penyaringan udara pernapasan dari kotoran',48),(192,'Pertukaran gas oksigen',48),(193,'Hidung - tenggorokan - jantung',49),(194,'Hidung - tenggorokan - hati',49),(195,'Hidung - tenggorokan - paru-paru',49),(196,'Hidung - kerongkongan - paru-paru',49),(197,'Lebah dan bunga',50),(198,'Manusia dan bakteri',50),(199,'Lalat dan raflesia',50),(200,'Semua benar',50),(201,'1',51),(202,'0.75',51),(203,'0.5',51),(204,'0.25',51),(205,'Filtrasi',52),(206,'Absorbsi',52),(207,'Reabsorbsi',52),(208,'Augmentasi',52),(209,'Sel darah merah',53),(210,'Sel darah putih',53),(211,'Keping-keping darah',53),(212,'Plasma darah',53),(213,'Amilase dan Tripsin',54),(214,'Pepsin dan Renin',54),(215,'Pepsin dan Amilase',54),(216,'Tripsin dan Renin',54),(217,'Membentuk antibodi (imunitas)',55),(218,'Membunuh antigen (benda asing)',55),(219,'Mengatur keseimbangan air dan volume darah',55),(220,'Menetralkan racun',55),(221,'Bacillus thuringiensi',56),(222,'Acetobacter xylinum',56),(223,'Clostridium acetobotylicum',56),(224,'Lactobacillus thermophillus',56),(225,'Saraf',57),(226,'Otot',57),(227,'Epitel',57),(228,'Lemak',57),(229,'Peningkatan jumlah limfosit untuk membuat antibodi',58),(230,'Peningkatan jumlah neutrofil dan makrofag untuk memakan virus',58),(231,'Penurunan jumlah limfosit karena berinteraksi dengan toksin',58),(232,'Penuruna jumlah neutrofil dan makrofag karena banyak yang mati',58),(233,'Klorofil',59),(234,'Grana',59),(235,'Stroma',59),(236,'Membran tilakoid',59),(237,'Membran sel - respirasi',60),(238,'Retikulum endoplasma - ekskresi',60),(239,'Mitokondria - transportasi',60),(240,'Badan Golgi - regulasi',60),(241,'Sayuti Melik',61),(242,'Achmad Subarjo',61),(243,'Fatmawati',61),(244,'Ahmad Yani',61),(245,'Soekarno',62),(246,'Moh. Hatta',62),(247,'Achmad Subarjo',62),(248,'Soewirjo',62),(249,'Rengasdengklok',63),(250,'Jl. Imam Bonjol',63),(251,'Jl. Pegangsaan Timur No. 56',63),(252,'Rumah Soekarno',63),(253,'Moh. Hatta',64),(254,'Soekarno',64),(255,'Soekarni',64),(256,'Sutan Syahrir',64),(257,'Soekarni',65),(258,'Soekarno',65),(259,'Moh. Hatta',65),(260,'Laksamana Maeda',65),(261,'Gerakan Benteng 31',66),(262,'Gerakan Banteng 31',66),(263,'Gerakan Menteng 31',66),(264,'Gerakan Lenteng 31',66),(265,'Beristirahat',67),(266,'Menyusun strategi perlawanan',67),(267,'Menyusun naskah proklamasi',67),(268,'Bertemu golongan muda',67),(269,'Lepas dari kekuasaan Jepang',68),(270,'Menentukan nasib sendiri',68),(271,'Memasuki awal kemerdekaan',68),(272,'Memulai pelaksanaan pembangunan nasional',68),(273,'Latief Hendraningrat - Suhud',69),(274,'Suhud - Yusud Koento',69),(275,'Yusuf Koento - Wikana',69),(276,'Latief Hendranigrat - Yusuf Koento',69),(277,'Dokuritsu Zumbi Inkai',70),(278,'Komite Nasional Indonesia',70),(279,'Dokuritzu Zumbi Cosakai',70),(280,'Badan Keamanan Rakyat',70),(281,'XXII/ Rikugun Bali',71),(282,'II/ Kaigun Makassar',71),(283,'XXV/ Rikugun Jakarta',71),(284,'II/ Kaigun Sumatera Barat',71),(285,'Perdebatan mengenai penyusun naskah Proklamasi',72),(286,'Keadaan di Indonesia sedang genting',72),(287,'Adanya perbedaan pendapat antara golongan tua dan golongan muda',72),(288,'Adanya vacuum of power karena kekalahan Jepang',72),(289,'Persatuan nasional, kesetaraan, non kooperatif',73),(290,'Solidaritas, kesetaraan, non kooperatif',73),(291,'Persatuan nasional, swadaya, non kooperatif',73),(292,'Solidaritas, kebebasan, non kooperatif',73),(293,'1825 - 1830',74),(294,'1825 - 1831',74),(295,'1824 - 1835',74),(296,'1818 - 1820',74),(297,'Ingin mendapatkan rempah - rempah',75),(298,'Berburu mutiara',75),(299,'Jatuhnya konstantinopel ketangan Turki Usmani',75),(300,'Menemukan daerah baru yang lebih luas',75),(301,'Permukaannya selalu mendatar',76),(302,'Menekan ke segala arah',76),(303,'Meresap melalui lubang-lubang kecil',76),(304,'Menempati ruang',76),(305,'Memutuskan dan menyambung arus listrik',77),(306,'Memperbesar arus listrik',77),(307,'Memperkecil arus listrik',77),(308,'Memutuskan arus listrik',77),(309,'Panas',78),(310,'Gerak',78),(311,'Bunyi',78),(312,'Pegas',78),(313,'Perputaran bulan mengelilingi bumi',79),(314,'Perputaran bumi mengelilingi matahari',79),(315,'Perputaran bumi pada porosnya',79),(316,'Perputaran matahari pada porosnya',79),(317,'Matahari',80),(318,'Bumi',80),(319,'Bulan',80),(320,'Bintang',80),(321,'Massa - gram',81),(322,'Suhu - celcius',81),(323,'Kuat arus listrik - ampere',81),(324,'Waktu - jam',81),(325,'Gaya otot',82),(326,'Gaya pegas',82),(327,'Gaya gesek',82),(328,'Gaya gravitasi',82),(329,'Bayangan maya',83),(330,'Pemantulan (refleksi)',83),(331,'Cahaya merambat lurus',83),(332,'Dispersi cahaya',83),(333,'Ohmmeter',84),(334,'Termometer',84),(335,'Voltmeter',84),(336,'Amperemeter',84),(337,'Meteran lipat (pita)',85),(338,'Mistar',85),(339,'Jangka sorong',85),(340,'Semua jawaban benar',85),(341,'200 J',86),(342,'800 J',86),(343,'1600 J',86),(344,'2000 J',86),(345,'100 J',87),(346,'2500 J',87),(347,'5000 J',87),(348,'12.500 J',87),(349,'250',88),(350,'2500',88),(351,'25000',88),(352,'250000',88),(353,'28%',89),(354,'33%',89),(355,'50%',89),(356,'66%',89),(357,'02:03',90),(358,'03:08',90),(359,'03:07',90),(360,'02:04',90),(361,'Niels Bohr',91),(362,'J.J Thomson',91),(363,'J. Chadwik',91),(364,'Max Planck',91),(365,'Atom',92),(366,'Senyawa',92),(367,'Unsur',92),(368,'Molekul',92),(369,'10',93),(370,'8',93),(371,'3',93),(372,'12',93),(373,'Tetap',94),(374,'Berkurang',94),(375,'Bertambah',94),(376,'Mengecil',94),(377,'Sifat periodik',95),(378,'Sifat koligatif',95),(379,'Sifat golongan',95),(380,'Sifat khas',95),(381,'Neon',96),(382,'Xenon',96),(383,'Radon',96),(384,'Argon',96),(385,'Antonie Laurent Lavoisier',97),(386,'Dalton',97),(387,'Thomson',97),(388,'Amadeo Avogadro',97),(389,'Ikatan kovalen polar',98),(390,'Ikatan ion',98),(391,'Ikatan logam',98),(392,'Ikatan van der walls',98),(393,'2 8 10',99),(394,'2 5 5 4 1',99),(395,'2 9 2009',99),(396,'2 8 8 2',99),(397,'1',100),(398,'2',100),(399,'3',100),(400,'4',100),(401,'entalpi sistem berkurang dan DH bernilai positif',101),(402,'entalpi sistem berkurang dan DH bernilai negatif',101),(403,'entalpi sistem bertambah dan DH bernilai positif',101),(404,'entalpi lingkungan berkurang dan DH bernilai negative',101),(405,'1',102),(406,'2',102),(407,'3',102),(408,'0',102),(409,'Litium fluorida',103),(410,'Litium flourin',103),(411,'Monolitium monoflourida',103),(412,'Litium monoflourida',103),(413,'gas dalam zat cair',104),(414,'gas dalam zat padat',104),(415,'zat cair dalam gas',104),(416,'zat cair dalam zat cair',104),(417,'cair, gas',105),(418,'cair, cair',105),(419,'gas, cair',105),(420,'gas, padat',105),(421,'Stratosfer',106),(422,'Mesosfer',106),(423,'Troposfer',106),(424,'Termosfer',106),(425,'Biosfer',107),(426,'Antroposfer',107),(427,'Litosfer',107),(428,'Atmosfer',107),(429,'Bulan',108),(430,'Matahari',108),(431,'Alien',108),(432,'Komet',108),(433,'Perbedaan wilayah, nilai guna, dan aglomerasi',109),(434,'Keruangan, kelingkungan, dan keseragaman',109),(435,'Keberagaman, keruangan, dan perbedaan wilayah',109),(436,'Keruangan, kelingkungan, dan kewilayahan',109),(437,'Teknik, Analisis, dan Statis',110),(438,'Fisik, Manusia dan Teknik',110),(439,'Fisik, Teknik dan Wilayah',110),(440,'Statis, Analisis, Manusia',110),(441,'Jakarta banjir karena padatnya permukiman',111),(442,'Jakarta banjir karena penebangan',111),(443,'Jakarta banjir karena sampah',111),(444,'Jakarta banjir karena hujan seharian',111),(445,'Pendekatan Keruangan',112),(446,'Pendekatan Kelingkungan',112),(447,'Pendekatan Kewilayahan',112),(448,'Pendekatan Kompleks Wilayah',112),(449,'pendekatan ekologi',113),(450,'pendekatan korologi',113),(451,'pendekatan keruangan',113),(452,'pendekatan kompleks wilayah',113),(453,'Pendekatan spasial',114),(454,'Pendekatan kelingkungan',114),(455,'Pendekatan kompleks wilayah',114),(456,'Pendekatan ekologi',114),(457,'Pendekatan deskripsi',115),(458,'Pendekatan komplek wilayah',115),(459,'Pendekatan ekologi',115),(460,'Pendekatan keruangan',115),(461,'Pendekatan deskripsi',116),(462,'Pendekatan komplek wilayah',116),(463,'Pendekatan ekologi',116),(464,'Pendekatan keruangan',116),(465,'Pendekatan keruangan',117),(466,'Pendekatan kompleks wilayah',117),(467,'Pendekatan kelingkungan',117),(468,'Pendekatan kewilayahan',117),(469,'When',118),(470,'Where',118),(471,'How',118),(472,'Why',118),(473,'Sumber Daya Alam',119),(474,'Sumber Daya Manusia',119),(475,'Sumber Daya Bumi',119),(476,'Sumber Daya Asli',119),(477,'Tanah organik',120),(478,'Tanah tertier',120),(479,'Tanah Vulkanik',120),(480,'Tanah non Vulkanik',120);
/*!40000 ALTER TABLE `pilihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id_player` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL DEFAULT 'User00',
  `score` int NOT NULL DEFAULT '0',
  `id_set_pertanyaan` int NOT NULL,
  PRIMARY KEY (`id_player`),
  KEY `fk_id_set_pertanyaan_idx` (`id_set_pertanyaan`),
  CONSTRAINT `fk_id_set_pertanyaan2` FOREIGN KEY (`id_set_pertanyaan`) REFERENCES `set_pertanyaan` (`id_set_pertanyaan`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Chintya Laurentia',100,1),(2,'Justin Bieber',200,1),(3,'Susin',200,1),(4,'Keli',300,1),(5,'Haruto',100,1),(6,'Sapa lagi ya',200,2),(7,'song jong ki',200,1),(15,'abv',0,1),(16,'abcdsdg',0,1),(17,'test',0,1),(18,'aasdasdga',300,1),(19,'<script>alert(\"coba\");</script>',100,1),(20,'User00',100,2),(21,'COBA 23:40',300,2),(22,'Coba 23:46',300,2),(23,'coba 14:54',500,1),(24,'User00',200,2),(25,'User00',500,1),(26,'AAAA',500,1),(27,'User00',200,3),(28,'User00',200,2),(29,'User00',300,1),(30,'User00',300,1),(31,'User00',0,2),(32,'User00',0,1),(33,'User00',500,1),(34,'User00',500,1),(35,'BEJO',500,1),(36,'User00',300,1),(37,'User00',300,1),(38,'User00',100,1),(39,'User00',500,16),(40,'User00',500,17),(41,'Yay',500,18),(42,'User00',0,18),(43,'User00',200,4),(44,'User00',400,5),(45,'User00',300,6),(46,'User00',300,7),(47,'User00',200,8),(48,'User00',400,9),(49,'User00',200,10),(50,'User00',200,11),(51,'User00',500,12),(52,'User00',300,13),(53,'User00',300,14),(54,'User00',100,15),(55,'User00',300,15),(56,'User00',100,19),(57,'User00',100,20),(58,'User00',100,21),(59,'User00',400,22),(60,'User00',500,23),(61,'User00',400,24);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_pertanyaan`
--

DROP TABLE IF EXISTS `set_pertanyaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `set_pertanyaan` (
  `id_set_pertanyaan` int NOT NULL AUTO_INCREMENT,
  `id_kategori` int NOT NULL,
  `set_pertanyaan` varchar(40) NOT NULL,
  PRIMARY KEY (`id_set_pertanyaan`),
  KEY `fk_id_kategori_idx` (`id_kategori`),
  CONSTRAINT `fk_id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_pertanyaan`
--

LOCK TABLES `set_pertanyaan` WRITE;
/*!40000 ALTER TABLE `set_pertanyaan` DISABLE KEYS */;
INSERT INTO `set_pertanyaan` VALUES (1,1,'Matematika Mudah'),(2,1,'Matematika Sedang'),(3,1,'Matematika Susah'),(4,2,'Fisika Mudah'),(5,2,'Fisika Sedang'),(6,2,'Fisika Susah'),(7,3,'Biologi Mudah'),(8,3,'Biologi Sedang'),(9,3,'Biologi Susah'),(10,4,'Kimia Mudah'),(11,4,'Kimia Sedang'),(12,4,'Kimia Susah'),(13,5,'Sejarah Mudah'),(14,5,'Sejarah Sedang'),(15,5,'Sejarah Susah'),(16,6,'Bahasa Inggris Mudah'),(17,6,'Bahasa Inggris Sedang'),(18,6,'Bahasa Inggris Susah'),(19,7,'Geografi Mudah'),(20,7,'Geografi Sedang'),(21,7,'Geografi Susah'),(22,8,'Pengetahuan Umum Mudah'),(23,8,'Pengetahuan Umum Sedang'),(24,8,'Pengetahuan Umum Susah');
/*!40000 ALTER TABLE `set_pertanyaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 20:53:15
