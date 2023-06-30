# 110學年度第2學期[MI236D]網路程式設計 - 期末專案「CD510」
<h4>前端設計人員</h4>
張睿哲、吳品翰
<h4>後端編寫人員</h4>
侯文家、吳彥霖
<h4>核心技術</h4>
HTML、CSS、JS、Bootstrap、JSP、MySQL、Tomcat 10.0

# 專案歷程
<h4>目的</h4>
建立學生對於前端與後端的分工概念並實踐，同時讓專案人員熟悉上述核心技術。
<h4>目標</h4>
本專案以販售專輯為主題發想，完成電商購物網站。
<h4>可加強部分</h4>
對於資料庫管理較不熟悉，未來將加強正規化觀念。

# 網站後端功能
<h4>登入、註冊、登出</h4>
1. 顧客可通過導覽列顯示目前的登入狀況，若尚未登入則引導至登入介面，若是已經登入則建立session，當顧客按下登出鍵則移除session。<br>
2. 顧客可在該網站輸入個人資料，註冊自己的帳號與密碼。<br>
3. 註冊時，若為重複帳號會彈出視窗提醒此帳號重複，並讓顧客重新輸入新帳號。<br>
4. 登入時，輸入錯誤的帳號會會彈出視窗提醒此帳號為空，並讓顧客重新登入。<br>
5. 登入時，輸入錯誤的密碼會會彈出視窗提醒此密碼錯誤，並讓顧客重新登入。<br>
6. 已建立防止SQL Injestion之功能。
<h4>商品頁面展示</h4>
1. 所有商品資料已寫入資料庫，模板為product.jsp。<br>
2. 顧客可通過對應的選購按鈕進入對應的商品頁面，而網址呈現product.jsp。<br>
3. 內有評論區功能，當顧客留下評論後並送出，可在該商品頁面顯示。
<h4>購物車</h4>
1. 該頁面僅會員可進入，若是尚未登入，會彈出視窗提醒並引導至登入介面。<br>
2. 會員可選購商品以及其數量並顯示於此頁面。<br>
3. 會員可在此頁面移除商品。<br>
4. 即使重新登入，只要尚未結單或是移除商品，會員仍可看到選購商品於自己的購物車。
<h4>庫存</h4>
1. 當顧客按下輸入資料並完成結帳，資料庫內的專輯數量會根據顧客購買數量減少。
<h4>搜尋</h4>
1. 顧客可通過搜尋欄找到目標商品。
<h4>會員資料修改</h4>
1. 該頁面僅會員可進入，若是尚未登入，會彈出視窗提醒並引導至登入介面。<br>
2. 會員可修改除帳號外之個人資料。
<h4>訂單記錄</h4>
1. 該頁面僅會員可進入，若是尚未登入，會彈出視窗提醒並引導至登入介面。<br>
2. 會員可通過該介面了解自己在什麼時間點購買哪些商品。
<h4>後台</h4>
1. 該頁面僅管理員可進入，若是有人通過網址嘗試登入，會彈出視窗提醒使用者並非管理員。<br>
2. 能透過管理員帳號與密碼進入後台介面，並通過後台介面新增商品、刪除商品、瀏覽訂單記錄。
