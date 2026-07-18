# 📊TheLook E-Commerce Business Analytics Dashboard
## 📌 Latar Belakang
Perusahaan e-commerce menghasilkan ribuan hingga jutaan transaksi yang mencakup berbagai aktivitas bisnis, seperti penjualan, perilaku pelanggan, performa produk, hingga proses pengiriman. Data tersebut memiliki potensi besar untuk menghasilkan insight yang dapat mendukung pengambilan keputusan strategis. Namun, tanpa proses analisis yang terstruktur, perusahaan akan kesulitan memantau performa bisnis secara menyeluruh dan mengidentifikasi area yang perlu ditingkatkan.

Project ini bertujuan membangun solusi Business Analytics end-to-end menggunakan MySQL sebagai database management system dan Power BI sebagai tools visualisasi data. Dataset TheLook E-Commerce digunakan untuk merancang relational database, melakukan analisis menggunakan SQL, serta mengembangkan dashboard interaktif yang mencakup empat area utama bisnis, yaitu Sales, Customer, Product, dan Shipping.

Dashboard yang dihasilkan dirancang untuk membantu stakeholder memonitor Key Performance Indicators (KPI), memahami tren bisnis, mengevaluasi perilaku pelanggan, mengidentifikasi performa produk, serta menilai efisiensi proses pengiriman sehingga dapat mendukung pengambilan keputusan berbasis data.

Catatan: Dataset yang digunakan merupakan dataset publik TheLook E-Commerce untuk tujuan pembelajaran dan pengembangan portfolio. Repository ini berfokus pada proses perancangan database, analisis SQL, pengembangan dashboard Power BI, serta penyusunan insight dan rekomendasi bisnis.

## 🎯 Tujuan Analisis
Project ini bertujuan menganalisis performa bisnis TheLook E-Commerce secara menyeluruh melalui empat area utama, yaitu Sales, Customer, Product, dan Shipping. Analisis dilakukan menggunakan SQL dan Power BI untuk menghasilkan dashboard interaktif yang dapat membantu stakeholder memantau KPI utama, mengidentifikasi peluang peningkatan performa bisnis, serta mendukung pengambilan keputusan berbasis data.

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
- Bagaimana kontribusi setiap department terhadap revenue?
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
│   └── TheLook Dashboard.pbix
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

<p align="center"> <img src="Database Schema/Database Schema TheLook Database.png" width="900"> </p>

> **Note:** Pada dataset TheLook, setiap order item merepresentasikan satu inventory item yang terjual, sehingga relasi antara Inventory Items dan Order Items bersifat satu-ke-satu berdasarkan data yang tersedia.


## 📈 Dashboard Overview
Project ini terdiri dari empat dashboard interaktif yang dirancang untuk memberikan gambaran menyeluruh mengenai performa bisnis TheLook E-Commerce. Setiap dashboard berfokus pada area bisnis yang berbeda sehingga stakeholder dapat memantau KPI utama, mengevaluasi performa, serta mendukung pengambilan keputusan berbasis data.

### Sales Analysis TheLook
<p align="center"> <img src="Dashboard/Sales Dashboard.png" width="900"> </p>

Key Performance Indicators (KPI)

Total Revenue
Total Orders
Total Profit
Average Order Value (AOV)

Visualizations

Revenue Trend
Revenue by Category
Revenue by Brand
Top 10 Products by Revenue
Revenue by Department

Filters

Year
Month
Category
Brand
Department
## 📊 Key Insights
## 💡 Business Recommendations
## 👤 Author
