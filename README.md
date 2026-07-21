# 📊TheLook E-Commerce Business Analytics Dashboard
## 📌 Latar Belakang
Perusahaan e-commerce menghasilkan ribuan hingga jutaan transaksi yang mencakup berbagai aktivitas bisnis, seperti penjualan, perilaku pelanggan, performa produk, hingga proses pengiriman. Data tersebut memiliki potensi besar untuk menghasilkan insight yang dapat mendukung pengambilan keputusan strategis. Namun, tanpa proses analisis yang terstruktur, perusahaan akan kesulitan memantau performa bisnis secara menyeluruh dan mengidentifikasi area yang perlu ditingkatkan.

Project ini bertujuan membangun solusi Business Analytics end-to-end menggunakan MySQL sebagai database management system dan Power BI sebagai tool visualisasi data. Dataset TheLook E-Commerce digunakan untuk merancang relational database, melakukan analisis menggunakan SQL, serta mengembangkan dashboard interaktif yang mencakup empat area utama bisnis, yaitu Sales, Customer, Product, dan Shipping.

Dashboard yang dihasilkan dirancang untuk membantu stakeholder memonitor Key Performance Indicators (KPI), memahami tren bisnis, mengevaluasi perilaku pelanggan, mengidentifikasi performa produk, serta menilai efisiensi proses pengiriman sehingga dapat mendukung pengambilan keputusan berbasis data.

Catatan: Dataset yang digunakan merupakan dataset publik TheLook E-Commerce untuk tujuan pembelajaran dan pengembangan portfolio. Repository ini berfokus pada proses perancangan database, analisis SQL, pengembangan dashboard Power BI, serta penyusunan insight dan rekomendasi bisnis.

## 🎯 Tujuan Analisis
Project ini bertujuan untuk menganalisis performa bisnis TheLook E-Commerce secara menyeluruh melalui 4 area utama, yaitu Sales, Customer, Product, dan Shipping. Analisis dilakukan menggunakan SQL dan Power BI untuk menghasilkan dashboard interaktif yang dapat membantu stakeholder memantau KPI utama, mengidentifikasi peluang peningkatan kinerja bisnis, serta mendukung pengambilan keputusan berbasis data.

Melalui analisis tersebut, dashboard ini diharapkan dapat membantu stakeholder memonitor KPI utama, mengidentifikasi peluang peningkatan performa bisnis, serta mendukung proses pengambilan keputusan yang lebih efektif dan berbasis data.

## ❓ Business Questions
Adapun beberapa pertanyaan stakeholder dari beberapa analysis yang sudah dibuat, sebagai berikut:

📈 Sales Analysis
- Bagaimana performa penjualan berdasarkan revenue, order, profit, dan Average Order Value (AOV)?
- Bagaimana tren revenue dari waktu ke waktu?
- Brand, kategori, dan produk apa yang memberikan kontribusi revenue terbesar?

👥 Customer Analysis
- Bagaimana karakteristik pelanggan berdasarkan gender, usia, dan lokasi?
- Berapa rata-rata pengeluaran pelanggan serta jumlah repeat customer?
- Traffic source mana yang paling efektif dalam mendatangkan pelanggan?
- Siapa pelanggan dengan kontribusi revenue tertinggi?

📦 Product Analysis
- Produk, brand, dan kategori apa yang memiliki performa terbaik?
- Bagaimana kontribusi setiap departemen terhadap revenue?
- Produk mana yang memiliki tingkat return tertinggi sehingga memerlukan evaluasi lebih lanjut?

🚚 Shipping Analysis
- Bagaimana performa proses pengiriman berdasarkan rata-rata shipping days?
- Distribution center mana yang memiliki performa pengiriman terbaik?
- Bagaimana tingkat return berdasarkan kategori, brand, dan status order?
- Bagaimana distribusi status pesanan selama periode analisis?

## 🛠️ Tools & Technologies
![MySQL](https://img.shields.io/badge/MySQL-Database%20Management%20System-blue)
![SQL](https://img.shields.io/badge/SQL-Data%20Query%20%26%20Analysis-orange)
![Excel](https://img.shields.io/badge/Excel-Data%20Preparation-green)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard%20%26%20Visualization-yellow)

| **Tools** | **Fungsi** |
|-----------|------------|
| MySQL | Database Management System |
| SQL | Data Query, Transformation & Analysis |
| Microsoft Excel | Data Preparation & Initial Data Handling |
| Power BI | Dashboard & Data Visualization |

## 📂 Struktur Repository

```
TheLook-Ecommerce-Business-Analytics
│
├── 📁 Dashboard
│   ├── Sales Dashboard.png
│   ├── Customer Dashboard.png
│   ├── Product Dashboard.png
│   ├── Shipping Dashboard.png
│   └── TheLook Dashboard. pbix
│
├── 📁 SQL
│   ├── 01_Create Database.sql
│   ├── 02_Create Table.sql
│   ├── 03_Primary Key.sql
│   ├── 04_Foreign Key.sql
│   ├── 05_Import Data.sql
│   ├── 06_Data Cleaning.sql
│   ├── 07_Data Validation.sql
│   ├── 08_Sales Analysis.sql
│   ├── 09_Customer Analysis.sql
│   ├── 10_Product Analysis.sql
│   ├── 11_Shipping Analysis.sql
│   └── 12_Master Table.sql
│
├── 📁 Database Schema
│   └── ERD.png
│
├── 📁 Dataset
│   └── Dataset Information.md
│
└── README.md
```

## 🔄 Alur Pengolahan Data
1. Database Design
Membangun database TheLook E-Commerce di MySQL serta merancang struktur tabel berdasarkan dataset yang terdiri dari Users, Orders, Order Items, Products, Inventory Items, Events, dan Distribution Centers.

2. Data Import
Mengimpor seluruh dataset CSV ke dalam database menggunakan perintah LOAD DATA LOCAL INFILE sehingga setiap dataset tersimpan pada tabel yang sesuai.

3. Data Type Transformation
Melakukan penyesuaian tipe data agar sesuai untuk proses analisis, termasuk:
- Konversi kolom tanggal dan waktu menjadi format DATETIME menggunakan STR_TO_DATE()
- Menghapus informasi zona waktu (UTC) tanpa mengubah nilai waktu asli
- Menyesuaikan tipe data beberapa kolom agar sesuai dengan kebutuhan relasi database

4. Data Cleaning
Melakukan proses pembersihan data untuk meningkatkan kualitas data, seperti:
- Mengubah string kosong ('') menjadi nilai NULL
- Menyesuaikan tipe data setelah proses cleaning
- Memastikan data siap digunakan pada proses analisis berikutnya

5. Data Validation
Melakukan validasi kualitas data untuk memastikan data yang digunakan telah konsisten, meliputi:
- Pemeriksaan nilai NULL
- Pemeriksaan string kosong
- Validasi tipe data
- Validasi struktur tabel sebelum proses analisis

6. Data Modeling
Membangun Entity Relationship Diagram (ERD) dengan menentukan Primary Key dan Foreign Key sehingga hubungan antar tabel dapat terintegrasi serta menjaga integritas data.

7. Exploratory Data Analysis (EDA)
Melakukan eksplorasi awal terhadap dataset menggunakan SQL untuk memahami karakteristik data, meliputi:
- Dataset Overview
- Distribution Overview
- Time Analysis
- Customer Overview
- Product Overview
- Pricing Overview
- Order Overview
- Event Overview

8. SQL Data Analysis
Melakukan analisis menggunakan SQL untuk menjawab kebutuhan bisnis pada empat area utama:
- 📈 Sales Analysis
- 👥 Customer Analysis
- 📦 Product Analysis
- 🚚 Shipping Analysis

9. Data Visualization
Mengembangkan dashboard interaktif menggunakan Power BI untuk menyajikan KPI, tren, dan insight bisnis yang mendukung proses monitoring serta pengambilan keputusan berbasis data.


## 🗄️ Database Structure
Database TheLook E-Commerce terdiri dari tujuh tabel utama yang saling terhubung untuk mendukung proses analisis bisnis pada area Sales, Customer, Product, dan Shipping.
| **Table**                | **Description**                                                                                                           |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------- |
| **Users**                | Menyimpan informasi pelanggan, termasuk data demografi, lokasi, traffic source, dan tanggal registrasi akun.              |
| **Orders**               | Menyimpan informasi transaksi pesanan, status order, tanggal transaksi, serta jumlah item dalam setiap pesanan.           |
| **Order Items**          | Menyimpan detail setiap produk yang dibeli pada suatu order, termasuk harga jual, status, dan informasi pengiriman.       |
| **Products**             | Menyimpan informasi master produk, seperti kategori, brand, department, harga, SKU, dan distribution center.              |
| **Inventory Items**      | Menyimpan data inventori setiap produk beserta informasi biaya, tanggal dibuat, tanggal terjual, dan distribution center. |
| **Events**               | Menyimpan aktivitas pengguna di website, seperti page view, klik, browser, traffic source, serta informasi sesi pengguna. |
| **Distribution Centers** | Menyimpan informasi pusat distribusi beserta lokasi geografisnya.                                                         |



## 🔗 Entity Relationship Diagram (ERD)
Entity Relationship Diagram (ERD) menggambarkan hubungan antar tabel dalam database TheLook E-Commerce. Relasi dibangun menggunakan Primary Key dan Foreign Key untuk menjaga integritas data serta mendukung proses analisis pada dashboard Sales, Customer, Product, dan Shipping.

### Relationship Summary
| Parent Table        | Child Table     | Relationship |
| ------------------- | --------------- | ------------ |
| Distribution Center | Product         | One-to-Many  |
| Distribution Center | Inventory Items | One-to-Many  |
| Product             | Inventory Items | One-to-Many  |
| User                | Orders          | One-to-Many  |
| User                | Events          | One-to-Many  |
| Orders              | Order Items     | One-to-Many  |
| Product             | Order Items     | One-to-Many  |
| Inventory Items     | Order Items     | One-to-One*  |
| User                | Order Items     | One-to-Many  |

### Visual Entity Relationship Diagram (ERD) TheLook E-Commerce
<p align="center"> <img src="Database Schema/Database Schema TheLook Database.png" width="900"> </p>

> **Note:** Pada dataset TheLook, setiap order item merepresentasikan satu inventory item yang terjual, sehingga relasi antara Inventory Items dan Order Items bersifat satu-ke-satu berdasarkan data yang tersedia.


## 📊 Dashboard Overview
Project ini terdiri dari empat dashboard interaktif yang dirancang untuk memberikan gambaran menyeluruh mengenai performa bisnis TheLook E-Commerce. Setiap dashboard berfokus pada area bisnis yang berbeda sehingga stakeholder dapat memantau KPI utama, mengevaluasi performa, serta mendukung pengambilan keputusan berbasis data.

### 📈 Sales Analysis TheLook
<p align="center"> <img src="Dashboard/Sales Analysis TheLook.png" width="900"> </p>

Key Performance Indicators (KPI)
- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Total Profit

Visualizations
- Revenue Trend by Year & Month
- Top 10 Revenue by Brand
- Top 10 Revenue by Product
- Top 10 Revenue by Category

Filters
- Year
- Month
- Category
- Brand

### 👥 Customer Analysis Dashboard
<p align="center"> <img src="Dashboard/Customer Analysis TheLook.png" width="900"> </p>

Key Performance Indicators (KPI)
- Total Customer
- Average Customer Spending
- Repeat Customer

Visualizations
- Customer by Gender
- Customer by Age Group
- Customer by Traffic Source
- Customer Distribution by State
- Top 10 Customers by Spending

Filters
- Gender
- Traffic Source
- Country

### 📦 Product Analysis Dashboard
<p align="center"> <img src="Dashboard/Product Analysis TheLook.png" width="900"> </p>

Key Performance Indicators (KPI)
- Total Product
- Total Brand
- Total Category

Visualizations
- Top 10 Product
- Top 10 Brands
- Top 10 Category
- Revenue by Department
- Product Return Rate

Filters
- Department
- Brand
- Category

### 🚚 Shipping Analysis Dashboard
<p align="center"> <img src="Dashboard/Shipping Analysis TheLook.png" width="900"> </p>

Key Performance Indicators (KPI)
- Average Shipping Days
- Return Rate
- Returned Orders

Visualizations
- Shipping Days Trend
- Shipping Time by Distribution Center
- Return Rate by Category
- Return Rate by Brand
- Order Status Distribution

Filters
- Year
- Order Status
- Distribution Center

## 📊 Business Insights
### 📈 Sales Analysis TheLook
Dashboard Sales Analysis dirancang untuk mengevaluasi performa penjualan TheLook E-Commerce berdasarkan berbagai indikator utama, seperti Total Revenue, Total Orders, Average Order Value (AOV), dan Total Profit. Selain itu, dashboard ini membantu mengidentifikasi tren penjualan dari waktu ke waktu serta menganalisis kontribusi brand, kategori, dan produk terhadap revenue perusahaan. Insight yang dihasilkan dapat digunakan sebagai dasar dalam menyusun strategi penjualan, pengelolaan produk, serta pengambilan keputusan bisnis

| Key Performance Indicator (KPI) | Value        |
|---------------------------------|--------------| 
| Total Revenue                   | $579.868     |
| Total Orders                    | 6862 Unit    |
| Average Order Value (AOV)       | 84.50        |
| Total Profit                    | $ 300.295,94 |

Bagian visualisasi Revenue Year & Month, dapat dilihat pada gmabr dibawah ini menunjukkan pada tahun 2019 bulan Januari merupakan Revenue terendah yaitu $2.612,44, sedangkan pada tahun 2022 bulan Mei merupakan Revenue tertinggi yaitu $1.083.206,01

<img width="1368" height="768" alt="Revenue by Year   Month, Sales Analysis The Look" src="https://github.com/user-attachments/assets/e53fc4d6-427b-4bb6-92b2-13a27a0999b5" />


Selanjutnya, pada Visualisasi Top 10 Revenue by Brand terdapat Brand Calvin Klein dengan revenue terbesar, yaitu $251.280,65, dilanjutkan di urutan revenue terbesar kedua yaitu Brand Diesel dengan $197.385,50 , dan di urutan revenue terendah yaitu Brand Joe's Jeans dengan $102.971,70. 

<img width="1325" height="742" alt="image" src="https://github.com/user-attachments/assets/83b5c324-49c9-48f7-a3d9-c5f753375510" />

Pada Visualisasi Top 10 Revenue by Product, Product The North Face Apex Bionic Soft Shell Jacket - Men's merupakan Revenue tertinggi hingga $18.963,00 lalu diurutan kedua terdapat product Jordan Durasheen Short Mens dengan Revenue $13.545,00. Product Adidas Women's adiFit Slim Pant merupakan product urutan ke-10 dengan Revenue $7.644,00

<img width="1503" height="748" alt="image" src="https://github.com/user-attachments/assets/cbc16ba8-e90d-49c5-97f8-5eea59db9632" />

Berikutnya, Visualisasi Top 10 Revenue by Category, pada Category Outerwear & Coa merupakan Revenue tertinggi yaitu $1.300.914,26, lalu dilanjutkan urutan ke-2 terdapat category jeans dengan $1.247.804,99, dan urutan ke-10 terdapat product Dresses dengan Revenue $461.990,43.

<img width="1556" height="737" alt="image" src="https://github.com/user-attachments/assets/a4992acc-4c79-4fa2-b0da-5a79b3136b5d" />

### 👥 Customer Analysis Dashboard
Dashboard Customer Analysis digunakan untuk memahami karakteristik pelanggan berdasarkan gender, kelompok usia, lokasi geografis, dan traffic source. Selain itu, dashboard ini menampilkan informasi mengenai rata-rata pengeluaran pelanggan (Average Customer Spending) serta jumlah Repeat Customer untuk membantu mengevaluasi perilaku pelanggan dan efektivitas strategi pemasaran. Analisis ini mendukung perusahaan dalam meningkatkan retensi pelanggan serta mengoptimalkan aktivitas akuisisi pelanggan baru.

Visualisasi Customer by Gender yang menggunakan Donut Chart, memvisualisasikan customer berdasarkan jenis kelamin (Gender). Gender M merupakan jenis kelamin pria 50,04% dengan total 39.975 orang, dan Gender F merupakan jenis kelamin wanita 49,96% dengan total 39.918 orang.

<img width="1542" height="742" alt="image" src="https://github.com/user-attachments/assets/637d1955-3e5f-4ed4-bf6b-05f7a09db3cb" />

Visualisasi Customer by Age Group merupakan pengelompokan customer berdasarkan rentang usia. Dalam visualisasi bar chart terdapat 6 rentang usia, yaitu <20, 20-29, 30-39, 40-49, 50-59, dan 60+. Customer [ada TheLook e-commerce di dominasi oleh customer dengan rentang usia 60+ yang mencapai 2.667 orang, lalu dilanjut rentang usia 20-29 yang mencapai 2.467 orang, dan rentang usia <20 merupakan total customer terendah dengan 1.950 orang.

<img width="1528" height="753" alt="image" src="https://github.com/user-attachments/assets/7e4c1531-f0ab-4f1a-a0ba-63ad3bd5e43a" />

Selanjutnya, visualisasi Customer by Traffic Source merupakan aktivitas pencarian produk yang dilakukan oleh customer, seperti melalui media sosial Facebook atau melalui search engine dan lain-lain. Aktivitas Search merupakan urutan pertama dengan total aktivitas 41.357, lalu dilanjutkan dengan Organic sebanyak 8.753, dan aktivitas terendah yaitu aktivitas Display yang hanya 2.344.

<img width="1362" height="725" alt="image" src="https://github.com/user-attachments/assets/f581e83b-f2c6-4ec7-96d3-9be723e2b88f" />

Visualisasi Customer Distribution by State menunjukkan bahwa pelanggan berasal dari berbagai negara yang tersebar di beberapa benua, seperti Amerika Utara, Amerika Selatan, Eropa, Asia, dan Australia. Sebaran pelanggan yang luas ini mengindikasikan bahwa TheLook E-Commerce memiliki jangkauan pasar global serta potensi untuk mengembangkan strategi pemasaran yang disesuaikan dengan karakteristik masing-masing wilayah.

<img width="1370" height="750" alt="image" src="https://github.com/user-attachments/assets/cfa8da68-187c-4f9f-a1cf-af4cc029bb8d" />

Berdasarkan visualisasi Top 10 Customer Spending, Michael Smith merupakan pelanggan dengan total pengeluaran tertinggi sebesar $6,2K, disusul oleh David Smith dengan $5,8K. Posisi kesepuluh ditempati oleh Michael Davis dengan total pengeluaran $3,4K. Temuan ini menunjukkan bahwa sebagian kecil pelanggan memberikan kontribusi revenue yang lebih besar dibandingkan pelanggan lainnya, sehingga strategi retensi dan program loyalitas dapat difokuskan pada kelompok pelanggan bernilai tinggi tersebut.

<img width="1482" height="742" alt="image" src="https://github.com/user-attachments/assets/4ad1a82e-e686-4cad-9fd2-83eedaea3bcf" />


### 📦 Product Analysis Dashboard
Dashboard Product Analysis bertujuan untuk mengevaluasi performa produk berdasarkan produk, brand, kategori, dan departemen yang memberikan kontribusi terbesar terhadap revenue perusahaan. Selain itu, dashboard ini juga menganalisis Product Return Rate sebagai indikator kualitas produk dan kepuasan pelanggan. Insight yang diperoleh dapat dimanfaatkan untuk mendukung pengelolaan katalog produk, strategi penjualan, serta optimalisasi persediaan.

<img width="1312" height="741" alt="image" src="https://github.com/user-attachments/assets/29b5d706-5d2b-4ebe-b5d1-c916fa6653c0" />

<img width="1302" height="743" alt="image" src="https://github.com/user-attachments/assets/11c1e54d-cfd7-46de-bc4b-6016ecb7ddd6" />

<img width="1371" height="746" alt="image" src="https://github.com/user-attachments/assets/68d1e721-6fec-405a-820c-06f942ec77ef" />

<img width="1202" height="757" alt="image" src="https://github.com/user-attachments/assets/73f9e948-be84-4e96-93af-697b653edb83" />

<img width="1372" height="747" alt="image" src="https://github.com/user-attachments/assets/3345933e-80d4-4d64-9ffd-2a1a7fb8729b" />


### 🚚 Shipping Analysis Dashboard
Dashboard Shipping Analysis digunakan untuk mengevaluasi performa proses pengiriman berdasarkan Average Shipping Days, Return Rate, dan Returned Orders. Selain itu, dashboard ini membantu menganalisis kinerja setiap Distribution Center, tingkat pengembalian produk berdasarkan brand dan kategori, serta distribusi status pesanan selama periode analisis. Hasil analisis dapat menjadi dasar dalam meningkatkan efisiensi operasional, mengurangi tingkat pengembalian produk, dan meningkatkan kualitas layanan kepada pelanggan.

<img width="1390" height="768" alt="Shipping Days Trend" src="https://github.com/user-attachments/assets/a31d3d2e-269c-4da4-b3ce-d54d5c2a2b96" />

<img width="1368" height="742" alt="image" src="https://github.com/user-attachments/assets/3aa813c8-6f93-4fba-bff4-44078b895719" />

<img width="1363" height="742" alt="image" src="https://github.com/user-attachments/assets/d0c35f9d-abe9-41fe-a109-e4a97baad767" />

<img width="1366" height="740" alt="image" src="https://github.com/user-attachments/assets/18416bd0-44b3-4f07-80c6-fb7af8a80050" />

<img width="1456" height="737" alt="image" src="https://github.com/user-attachments/assets/37f86803-9ce1-46ed-a520-0ef0352005f1" />


## 💡 Business Recommendations
## 👤 Author
