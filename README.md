# CD510 - 伍壹零唱片行

[![Java](https://img.shields.io/badge/Java-JSP-ED8B00)](https://www.oracle.com/java/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1)](https://www.mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-5-7952B3)](https://getbootstrap.com/)

一個以販售專輯為主題的電商購物網站，具備會員系統、商品瀏覽、購物車、訂單記錄與後台管理功能。

## 團隊成員

| 角色 | 成員 |
|------|------|
| **前端設計** | 張睿哲、黃品翰 |
| **後端開發** | 侯文家、吳彥霖 |

## 技術堆疊

| 類別 | 技術 |
|------|------|
| **前端** | HTML, CSS, JavaScript, Bootstrap |
| **後端** | JSP (Java Server Pages) |
| **資料庫** | MySQL 8.0 |
| **伺服器** | Apache Tomcat 10.0 |

## 專案目標

建立學生對於前端與後端的分工概念並實踐，同時讓專案人員熟悉上述核心技術。

## 核心功能

### 登入、註冊、登出

1. 顧客可通過導覽列查看目前的登入狀況，若尚未登入則引導至登入介面，已登入則建立 session，顧客按下登出後移除 session。
2. 顧客可在網站上註冊帳號與密碼，並填寫個人資料。
3. 註冊時若帳號重複，會彈出視窗提示並讓顧客重新輸入帳號。
4. 登入時若帳號錯誤，會彈出視窗提示並要求重新登入。
5. 登入時若密碼錯誤，會彈出視窗提示並要求顧客重新輸入密碼。
6. 已建立防止 SQL Injection 的功能，確保資料庫安全。

### 商品頁面展示

1. 所有商品資料已儲存至資料庫，並由 `product.jsp` 模板展示。
2. 顧客可通過選擇相應的選購按鈕進入商品頁面，並查看商品詳情。
3. 商品頁面有評論區功能，顧客可留下評論並送出，評論會即時顯示在該商品頁面。

### 購物車

1. 只有會員可進入該頁面，未登入的顧客將看到提示視窗並被引導至登入介面。
2. 會員可選擇商品並指定數量，這些商品將顯示於購物車頁面。
3. 會員可在購物車頁面移除商品，調整選購內容。
4. 即使重新登入，只要未結帳或未移除商品，會員仍可在購物車中查看先前選購的商品。

### 庫存管理

1. 顧客結帳後，資料庫內的專輯數量會根據顧客的購買數量自動減少，實現庫存管理功能。

### 搜尋

1. 顧客可通過搜尋欄輸入關鍵字找到目標商品，便捷的商品搜尋功能提升了使用體驗。

### 會員資料修改

1. 只有會員可進入該頁面，未登入的顧客會被引導至登入介面。
2. 會員可修改帳號以外的個人資料（如地址、電話等），保持資料的更新和準確性。

### 訂單記錄

1. 只有會員可進入該頁面，未登入的顧客會被引導至登入介面。
2. 會員可查看自己過去的訂單記錄，包括購買時間、商品名稱、數量等詳細資料。

### 後台管理

1. 只有管理員可進入該頁面，非管理員會看到提示視窗並無法進入。
2. 管理員可使用管理員帳號與密碼登入後台介面，並透過後台功能：
   - 新增商品
   - 刪除商品
   - 瀏覽訂單記錄
   - 回饋表單資訊
3. 後台提供便捷的商品與訂單管理功能，幫助管理員維護網站運營。

## 技術架構

- **前端**：使用 HTML, CSS, JavaScript 和 Bootstrap 進行網頁設計，確保響應式設計和良好的使用者體驗。
- **後端**：使用 JSP 技術來實現動態頁面渲染，與 MySQL 資料庫進行資料交互，並使用 Tomcat 10.0 作為應用伺服器來部署和執行網站。
- **資料庫**：使用 MySQL 來儲存商品資料、顧客資訊、訂單記錄等，並確保數據一致性與安全性。

## 可加強部分

對於資料庫管理較不熟悉，未來將加強資料庫正規化之觀念。

## 專案結構

```
CD510/
├── config.jsp                  # 資料庫連線設定
│
├── pages/                      # 前台頁面
│   ├── index.jsp               # 首頁
│   ├── chinese.jsp             # 華語專輯頁
│   ├── korea.jsp               # 韓語專輯頁
│   ├── japan.jsp               # 日語專輯頁
│   ├── english.jsp             # 英語專輯頁
│   ├── product.jsp             # 商品詳情頁
│   ├── search.jsp              # 搜尋功能
│   └── aboutus.jsp             # 關於我們
│
├── auth/                       # 會員認證
│   ├── login.jsp               # 登入頁面
│   ├── signup.jsp              # 註冊頁面
│   ├── logout.jsp              # 登出
│   ├── check.jsp               # 登入驗證
│   ├── issignin.jsp            # 登入狀態檢查
│   ├── setup.jsp               # 會員設定
│   ├── updatemember.jsp        # 更新會員資料
│   └── addvip.jsp              # 註冊處理
│
├── cart/                       # 購物車與訂單
│   ├── car.jsp                 # 購物車頁面
│   ├── addtocar.jsp            # 加入購物車
│   ├── shopcar_drop.jsp        # 移除購物車商品
│   ├── buy.jsp                 # 結帳處理
│   └── order.jsp               # 訂單記錄
│
├── admin/                      # 後台管理
│   ├── back_manage.jsp         # 管理主頁
│   ├── back_new.jsp            # 新增商品頁
│   ├── back_reset.jsp          # 修改商品頁
│   ├── back_delete.jsp         # 刪除商品頁
│   ├── addproduct.jsp          # 新增商品處理
│   ├── alterproduct.jsp        # 修改商品處理
│   ├── deleteproduct.jsp       # 刪除商品處理
│   └── resetproduct.jsp        # 重設商品處理
│
├── misc/                       # 其他功能
│   ├── add.jsp                 # 評論功能
│   ├── add2.jsp                # 評論功能（二）
│   ├── response.jsp            # 回饋表單
│   └── return.jsp              # 返回處理
│
├── assets/
│   ├── css/                    # 樣式表
│   ├── js/                     # JavaScript
│   └── images/                 # 商品圖片與素材
│
├── database/
│   ├── album.sql               # 專輯資料庫結構與資料
│   └── store.sql               # 商店資料庫結構與資料
│
├── .gitignore
└── README.md
```

## 快速開始

### 系統需求

| 項目 | 需求 |
|------|------|
| **JDK** | 8+ |
| **MySQL** | 8.0 |
| **Tomcat** | 10.0 |

### 安裝步驟

1. 匯入資料庫

```bash
mysql -u root -p < database/album.sql
mysql -u root -p < database/store.sql
```

2. 修改 `config.jsp` 中的資料庫連線設定（帳號、密碼）

3. 將專案部署至 Tomcat 的 `webapps/` 目錄

4. 啟動 Tomcat，瀏覽 `http://localhost:8080/CD510/`
