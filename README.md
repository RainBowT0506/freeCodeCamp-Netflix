# Introduction & Demo
## Github：[RainBowT0506 - freeCodeCamp-Netflix](https://github.com/RainBowT0506/freeCodeCamp-Netflix)
## Demo：
### Home 
![CleanShot 2024-09-18 at 16.33.33](https://hackmd.io/_uploads/r1qDlfupA.png)
### Upcoming
![CleanShot 2024-09-18 at 16.34.44](https://hackmd.io/_uploads/Sym-WfupR.png)

### Search
![CleanShot 2024-09-18 at 16.36.29](https://hackmd.io/_uploads/rJOM-MdTA.png)
![CleanShot 2024-09-18 at 16.37.10](https://hackmd.io/_uploads/rJsUbG_pR.png)

### Download
![CleanShot 2024-09-18 at 16.33.53](https://hackmd.io/_uploads/ry6OeG_p0.png)
![CleanShot 2024-09-18 at 16.34.03](https://hackmd.io/_uploads/HkIYxMO6C.png)
![CleanShot 2024-09-18 at 16.34.19](https://hackmd.io/_uploads/ByDqlM_6A.png)

### Preview Movie on Youtube
![CleanShot 2024-09-18 at 16.38.24](https://hackmd.io/_uploads/HJN9bfupA.png)


## Youtube：[freeCodeCamp.org - iOS Development Course - Use Swift 5 and UIKit to Build a Netflix Clone](https://www.youtube.com/watch?v=KCgYDCKqato)

# Creating new Xcode Project
## 建立 Xcode 專案
![CleanShot 2024-08-09 at 16.58.21](https://hackmd.io/_uploads/BkXU5IX50.png)

- 建立一個新的 Xcode 專案，選擇 "App" 模板。
- 專案名稱設為 "Netflix"。
- 使用 Storyboard 和 Swift 作為技術選項。
- 選擇下載並安裝到合適的資料夾。

## 移除 Storyboard

- 將 `Main.storyboard` 移到垃圾桶。
- 在 `Info.plist` 檔案中刪除 `Storyboard Name` 的項目。
    ![CleanShot 2024-08-09 at 17.01.44](https://hackmd.io/_uploads/SJY-iUm9R.png)
- 使用 Shift + Command + F 搜尋 "Main"，刪除 `UIKit` 中有關 Main Storyboard 的參考。
    ![CleanShot 2024-08-09 at 17.13.42](https://hackmd.io/_uploads/rk3ApUm50.png)
    ![CleanShot 2024-08-09 at 18.33.37](https://hackmd.io/_uploads/By6txdX5R.png)
- 確保所有與 Storyboard 相關的內容都已經移除。

## 配置 SceneDelegate 檔案

- 打開 `SceneDelegate.swift` 檔案，配置不使用 Storyboard 的場景。
- 將 `window` 變數重新命名為 `windowScene`。
- 初始化新的 `UIWindow`，使用 `windowScene.coordinateSpace.bounds` 作為框架。
- 設定 `window.windowScene` 為 `windowScene`。
- 將 `rootViewController` 設為 `ViewController` 的新實例。
- 最後，使用 `window.makeKeyAndVisible()` 來顯示視窗。

## 開始構建應用程式

- 準備開始構建 Netflix 應用程式。
- 主畫面上有一個 Tab Bar，可以在各個頁籤之間導航。
- 首先從這些頁籤開始構建。
# Creating MainTabBarViewController
## 更改 Tab Bar View Controller 的名稱

- 將 `MainTabBarViewController` 改名為 `MainTabBarViewController`，確保每個 View Controller 的名稱能夠清楚描述其功能。
- 將 `MainTabBarViewController` 繼承自 `UITabBarController`。
- 設定 `MainTabBarViewController` 作為應用程式的起始點。

## 檢查應用程式運行狀況

- 將 `MainTabBarViewController` 的背景顏色設為 `systemYellow`。
- 選擇模擬器為 iPhone 13 Pro Max，並使用 Command + R 編譯和運行應用程式。
- 確認背景顏色變更成功，並且 Tab Bar 正常顯示。
![CleanShot 2024-09-08 at 15.59.39](https://hackmd.io/_uploads/r1VKY05nA.png)

## 創建 Controllers 資料夾與檔案

- 創建一個名為 "Controllers" 的資料夾。
- 創建新的 `Cocoa Touch Class` 檔案，類別為 `UIViewController`。
  - 為每個 View Controller 設定不同的背景顏色（`HomeViewController` 為紅色、`UpcomingViewController` 為綠色、`SearchViewController` 為粉紅色、`DownloadsViewController` 為藍色）。
- 為每個 View Controller 分別命名，依序為 Home、Upcoming、Search、Downloads。

## 設置 Tab Bar Controller 與 Navigation Controllers

- 創建四個 `UINavigationController`，並將各自的 root view controller 設為 `HomeViewController`、`UpcomingViewController`、`SearchViewController` 和 `DownloadsViewController`。
- 為 Tab Bar Controller 設置 `viewControllers`，將這四個導航控制器加入其中。
- 確認 Tab Bar 正常顯示，並可以在不同的標籤頁之間切換。

## 為 Tab Bar 添加圖示與標題

- 使用 SF Symbols 為每個 Tab 添加對應的圖示：
  - `HomeViewController` 使用 `house` 圖示。
  - `UpcomingViewController` 使用 `play.circle` 圖示。
  - `SearchViewController` 使用 `magnifyingglass` 圖示。
  - `DownloadsViewController` 使用 `arrow.down.to.line` 圖示。
- 為每個 Tab Bar 設定標題：
  - `HomeViewController` 的標題為 "Home"。
  - `UpcomingViewController` 的標題為 "Coming Soon"。
  - `SearchViewController` 的標題為 "Top Searches"。
  - `DownloadsViewController` 的標題為 "Downloads"。

## 調整界面背景與配色

- 將每個 View Controller 的背景顏色改為 `systemBackground`，以避免過於亮眼的顏色。
- 將 Tab Bar 的 `tintColor` 設定為 `label`，以適應深色和淺色模式。
- 測試應用程式在深色與淺色模式下的顯示效果，確認功能正常。

## 簡介下一步計劃
![CleanShot 2024-09-08 at 17.29.35](https://hackmd.io/_uploads/S1O9RJj3C.png)

- 下一步將在 `HomeViewController` 中開始設置 Table View。
- Table View 的每個 cell 都會包含一個可水平滾動的 Collection View，用於展示電影列表。
- 確保 Table View 和 Collection View 的加載效率，僅在滾動到列表末尾時加載新的內容。
# Setting HomeViewController TableView
## 初始化 UITableView 並註冊 Cell

- 初始化 UITableView
- 使用 `anonymous closure pattern` 初始化表格
- 註冊普通的 UITableViewCell
  - `UITableViewCell.self` 用於註冊
  - 可重用的識別符號設為 `"cell"`
- 回傳表格，並將表格加入 view
- 設置表格的 frame 為 `view.bounds`，使其佈滿整個螢幕
- 確認畫面配置後，執行 `Command + R` 測試應用

## 設定 DataSource 和 Delegate

- 為 UITableView 設定 DataSource 和 Delegate 協定
  - 使用 extension 實現協定 `UITableViewDelegate` 和 `UITableViewDataSource`
  - 實作 `numberOfRowsInSection`，設置每個 section 有 20 列
  - 實作 `cellForRowAt`，使用 `tableView.dequeueReusableCell` 來取得可重用的 Cell

## 設置基本測試內容

- 在 `cellForRowAt` 方法中為 cell 的 `textLabel.text` 設置為 `"Hello World"` 作為測試
- 執行 `Command + R` 測試，確認表格已顯示

## 設置表頭與 Cell 高度

- 設定每個 Cell 的高度為 200 點
- 設置每個 section 表頭的高度為 40 點
- 測試時確認 section 表頭與 Cell 正確顯示
- 設置 Cell 的背景顏色為紅色，區分每個 Cell

## 創建自訂 Cell

- 創建新檔案，類別為 `UITableViewCell`
- 命名為 `CollectionViewTableViewCell`，因為此 Cell 內將會包含 CollectionView
- 設置靜態識別符號 `identifier`
- 註冊該自訂 Cell 至 TableView
- 使用 `guard let` 確保 dequeued Cell 為自訂 Cell 型別，若不是則返回普通的 UITableViewCell

## 分組樣式與 Headers
![CleanShot 2024-09-09 at 11.04.27](https://hackmd.io/_uploads/SJYTSkn2A.png)

- 設定表格樣式為 `grouped`，類似於 iOS 設定 App 的樣式
- 測試時確認表頭與 Cell 高度顯示正確
- 設定 `numberOfSections` 方法，返回 20 個 sections，每個 section 只包含一列
- 再次測試，確認分組效果正常顯示

## 準備實現 Netflix 風格設計

- 每個 Cell 將包含 CollectionView，後續將用於放置標籤、電影標題及海報
- 進一步優化表格設計
# Setting home TableViewCell and it’s CollectionView
## 建立 UICollectionView
- 使用匿名閉包模式來定義 `UICollectionView`
- 初始化 UICollectionView 時，使用 `UICollectionViewFlowLayout`
- 設定 `layout.scrollDirection` 為 `horizontal`
- 註冊 UICollectionView 的 cell：`UICollectionViewCell`

## UICollectionView 設定
- 設定 UICollectionView 的 delegate 和 data source 都為 `self`
- 實作兩個必要方法：`cellForItemAt` 和 `numberOfItemsInSection`
- 在 `cellForItemAt` 方法中設定 cell 背景顏色為綠色
- 解決 UI 問題，透過設置 frame 使得 UICollectionView 充滿整個 content view

## 修正 Layout 問題
- 設置每個 item 的大小：`layout.itemSize`
- 設定 item 的寬度為 144，並設定高度為 200
- 確認水平滾動功能正常啟用

## 添加 Table View Header
- 在 `HomeViewController` 中，使用 `tableHeaderView` 為 Table View 添加 header
- 設定 header 的 frame，並將寬度設為視圖寬度，高度為 450

## 後續計劃
- 在下一個影片中，修改每個 section 的 header
- 計劃新增四個 section：近期電影、最高評分電影等
- 準備實作 hero 視圖
# Creating Table’s HeaderView
## 建立 Hero Header UIView
- 新建一個 `UIView` 類別並命名為 `HeroHeaderUIView`
- 初始化此 UIView 並設置 frame
- 匯入必要的初始函式來避免錯誤

## 添加 UIImageView
- 使用匿名閉包模式創建 `UIImageView`
- 設定 `contentMode` 為 `aspectFill`
- 使用 `clipsToBounds = true` 來避免圖片溢出
- 將 `UIImageView` 加入視圖並設置 frame 為 `bounds`

## 加載圖片
- 從資源文件夾中加載一張圖片並命名為 `heroImage`
- 使用 `UIImage(named:)` 方法將圖片加入到 `UIImageView`

## 添加漸層效果
- 創建 `addGradient()` 函式以添加漸層效果
- 使用 `CAGradientLayer` 並設定兩個顏色：
  - 第一個顏色為透明 (`UIColor.clear.cgColor`)
  - 第二個顏色為系統背景 (`UIColor.systemBackground.cgColor`)
- 設置 `CAGradientLayer` 的 frame 並將其添加到 UIView 的 `layer`

## 添加 Play 按鈕
- 使用匿名閉包模式創建 `UIButton`
- 設定標題為 `Play` 並設置邊框顏色為系統背景顏色
- 使用 Auto Layout constraints 設定按鈕位置：
  - `leadingAnchor` 設定為 25 點距離左邊
  - `bottomAnchor` 設定為負 20 點以將按鈕向上移動
  - 設定按鈕的寬度為 90 點

## 添加 Download 按鈕
- 重複 Play 按鈕的設定步驟，創建 `Download` 按鈕
- 使用 `trailingAnchor` 設定為 90 點距離右邊
- 設定相同的寬度和底部約束

## 優化按鈕外觀
![CleanShot 2024-09-09 at 15.18.44](https://hackmd.io/_uploads/r1oo-XhhR.png)

- 設定按鈕的邊框角半徑 (`cornerRadius = 5`)
- 調整按鈕之間的間距，並確保兩個按鈕的布局符合需求

# Customizing the navigation bar
## 設定 Netflix Logo 作為 Navigation Bar 左側按鈕
- 在 `configureNavbar` 函式中，使用從 Google 搜尋並下載的 Netflix 標誌
- 新增到專案的 Assets 資料夾，並命名為 `netflixLogo`
- 在 Home View Controller 中，使用 `UIImage(named:)` 加載圖片
- 將圖片設定為 `leftBarButtonItem`，使用 `UIImage` 初始化 `UIBarButtonItem`
- 設定圖片的渲染模式為 `.alwaysOriginal`，使圖片保持原始樣貌

## 添加右側按鈕
- 使用 `rightBarButtonItems` 來添加多個按鈕
- 創建兩個 `UIBarButtonItem`，分別使用 `systemImage` 初始化：
  - 第一個按鈕為 `person` 圖標，用於顯示個人資料
  - 第二個按鈕為 `play.rectangle` 圖標
- 使用 SF Symbols 搜尋系統圖示名稱，並從中選取所需圖示

## 設定 Navigation Bar 樣式
- 設定 Navigation Bar 的 `tintColor` 為白色，改變按鈕顏色
- 解決 Navigation Bar 隱藏內容的問題：當滾動時，實作一個算法讓 Navigation Bar 上下移動
- 使用 TableView 的 `scrollViewDidScroll` 方法來控制 Navigation Bar 的隱藏和顯示：
  - 計算 `defaultOffset`，根據安全區域的頂部插入值來取得偏移量
  - 計算 `offset`，根據 `scrollView.contentOffset.y` 加上 `defaultOffset`
  - 使用 `transform` 來設定 Navigation Bar 的 Y 軸位移
  - 確保在向上滾動時 Navigation Bar 消失，在向下滾動時 Navigation Bar 固定在頂部
# Setting Tableview sections titles
![CleanShot 2024-09-09 at 21.01.36](https://hackmd.io/_uploads/H1G6Zun3A.png)

## 設定 Header Section 的標題
- 宣告一個字串陣列 `sectionTitles` 來儲存每個 section 的標題：
  - `"Trending Movies"`
  - `"Popular"`
  - `"Trending TV"`
  - `"Upcoming Movies"`
  - `"Top Rated"`
- 使用 `sectionTitles.count` 來動態設定 TableView 的 section 數量

## 顯示 Section 標題
- 在 `titleForHeaderInSection` 方法中，使用 `sectionTitles[section]` 來設定每個 section 的標題
- 構建與執行，確認 section 標題正確顯示

## 修改 Header 標題的字型和顏色
- 使用 `willDisplayHeaderView` 方法來修改每個 section 的 Header 樣式
- 修改字體：
  - 使用 `UIFont.systemFont(ofSize: 18, weight: .semibold)` 設定字體為半粗體
  - 設定 `header.textLabel?.textColor` 為白色
- 設定 Header 的 frame：
  - 將 `textLabel.frame.origin.x` 設為 `20` 點來增加左側間距
  - 設定高度為整個 header 的高度 `header.bounds.height`

## 調整標題字母大小寫
- 將文字轉為小寫：`header.textLabel?.text?.lowercased()`
- 計畫在後續影片中使用 Swift extensions 來簡化程式碼並實現首字母大寫的功能


# Sending URL Requests and Parsing JSON response
## 註冊 TMDB API 並取得 API 金鑰
- 註冊 The Movie Database (TMDB) 帳號
- 進入設定並獲取 API 金鑰
- 儲存 API 金鑰於專案的 `Constants` 結構中

## 建立 APICaller 類別
- 創建 APICaller 類別，並使用單例模式 `shared`
- 在 `Constants` 結構內定義 API 金鑰和 base URL
- 使用 `URLSession` 進行網絡請求

## 定義 API 調用函式
- `getTrendingMovies` 函式用於調用 TMDB API 取得趨勢電影數據
- 構建 URL 並處理網路請求的錯誤與數據
- 解析 JSON 回應，使用 `completion` 回傳結果或錯誤

## 設計電影數據模型
- 建立 `Movie` 和 `TrendingMoviesResponse` 結構來對應 API 的回應資料
- 模型需要符合 `Codable` 協定以支援 JSON 序列化
- `TrendingMoviesResponse` 包含一個電影陣列，`Movie` 結構對應每部電影的屬性

## 在主視圖控制器中調用 API
- 在 `HomeViewController` 中呼叫 `APICaller.shared.getTrendingMovies`
- 使用 `completion handler` 處理 API 回應的結果
- 根據回應結果進行數據顯示或錯誤處理
# Using Extensions
## 使用 Extensions 擴展功能
- 在資源資料夾中創建一個新的 Swift 檔案，命名為 `extensions`。
- 擴展 `String` 資料型別，新增一個名為 `capitalizeFirstLetter` 的函式。
- 函式將返回一個字串，將字串的第一個字母大寫，其他字母轉為小寫。
- 使用 `self.prefix` 取得第一個字母並將其大寫，然後用 `self.lowercase.dropFirst` 處理剩下的字母。
- 將此功能應用在 `HomeViewController` 中，用來將每個 section 的標題首字母大寫。
- 通過 extensions 的方式來避免重複程式碼，並且保持 `HomeViewController` 的簡潔。
# Consuming API To Fetch Data for each Section
## 呼叫 API 獲取不同區段的資料
- API 原本抓取所有類型的 trending 資料，修改為只抓取電影的 trending 資料。
- 新增抓取 TV 節目 trending 資料的 API 方法，命名為 `getTrendingTVs`。
- 新增 API 方法內，定義 URL，使用 base URL 組合 `/trending/tv/day`，並附帶 API 金鑰。
- 使用 `URLSession.shared.dataTask` 來發送請求，並在收到回應後將資料轉為 JSON 物件，打印結果。
- 建立 `TV` 資料模型，將 API 回傳的資料轉換為模型物件。

## 新增即將上映的電影 API
- 開啟 TMDB 的 API 文件，找到即將上映電影的 API。
- 新增 `getUpcomingMovies` 方法，定義 URL，組合 `/movie/upcoming`。
- 與其他 API 呼叫相同，使用 `URLSession.shared.dataTask` 發送請求，並將結果轉換為模型物件。

## 新增熱門電影與高評價電影的 API
- 為熱門電影新增 `getPopularMovies` 方法，與其他 API 類似，調整 URL 為 `/movie/popular`。
- 為高評價電影新增 `getTopRatedMovies` 方法，調整 URL 為 `/movie/top_rated`。
- 所有的 API 方法都重複使用了相同的模型結構，因為資料結構一致。

## 整理與測試
- 將不同的 API 呼叫結果顯示在對應的 UI 元素中。
- 使用 `resume` 啟動 URL 請求，確保資料正確傳回。
- 進行 API 測試，確認每個區段的資料正確顯示。
# Refactoring Models 
- 刪除 TV 模型，並將 Movie 模型重命名為 `TrendingTitleResponse`，來保存標題的陣列
- 更新 API 呼叫處的所有 `movie` 為 `title`，並將 `TV` 相關的更改為 `title`
- 在 API 錯誤處理中使用自定義的 `APIError`，並將錯誤傳遞給 HomeViewController 處理

# Creating Custom CollectionViewCell
## 建立自訂的 CollectionViewCell
- 在 Views 資料夾中新增一個 Cocoa Touch 類別，命名為 `TitleCollectionViewCell`
- 設定靜態選取標識符並初始化 cell
- 建立 `posterImageView`，使用匿名閉包初始化 UI 元件
- 設定 `posterImageView` 的 `contentMode` 為 `scaleAspectFill`
- 在 `layoutSubviews` 中將 `posterImageView` 的框架設定為 `contentView.bounds`
- 引入第三方庫 Swift SDWebImage 來快取下載的圖片，並使用 Swift Package Manager 安裝庫
- 在 `configure` 方法中使用 `sd_setImage` 方法載入圖片，並處理 URL 的可選值

## 使用 SDWebImage 快取圖片
- 從 GitHub 上添加 SDWebImage 的 Swift Package，並在 Xcode 中加入專案
    ![CleanShot 2024-09-11 at 10.12.46](https://hackmd.io/_uploads/BJcf6_C3A.png)
- 確認加入 SDWebImage 和 SDWebImageMapKit 目標到專案
    ![CleanShot 2024-09-11 at 10.20.28](https://hackmd.io/_uploads/BkQtAu0n0.png) 
- 在 `TitleCollectionViewCell` 中匯入 SDWebImage 並建立 `configure` 方法來更新每個 cell 的海報圖片
- `configure` 方法接收一個 URL 字串，並使用 `sd_setImage` 方法來載入圖片
# Passing data to the CollectionView 
## 傳遞資料給 CollectionView
- 在 `HomeViewController` 中，針對每個 section 定義 API 呼叫
- 移除 `fetchAPIData` 方法，改為讓每個 section 單獨處理 API 呼叫
- 使用 `completionHandler` 來傳遞 API 回傳的資料
- 定義一個 `sections` 的 enum 來對應不同的 section
- 根據 section 切換，分別進行 API 呼叫並回傳資料給 CollectionView
- 新增 `configure` 方法來處理 titles 資料
- 確保在非同步操作後，重新載入 CollectionView 的資料

## CollectionViewCell 的資料更新
- 新增 `titles` 變數來保存 API 回傳的資料
- 在每個 section 中，呼叫 API 後將回傳的 `titles` 資料更新至 CollectionView
- 根據 `indexPath` 的 `row` 設定每個 cell 的圖片
- 確保在主執行緒中更新 UI，使用 `DispatchQueue.main.async`
# Viewing poster images inside CollectionViewCell
![CleanShot 2024-09-11 at 13.26.38](https://hackmd.io/_uploads/H17IqjChR.png)

## 取得圖片 URL
- 進入 Movie Database API 的開發者頁面，找到圖片的 URL 格式
- 使用 API 回傳的 `poster_path` 字段來動態生成圖片 URL
- 確認圖片路徑格式：`https://image.tmdb.org/t/p/w500/<poster_path>`

## 在 CollectionViewCell 設定圖片
- 在 `TitleCollectionViewCell` 中，建立新 URL
- 將 API 回傳的 `poster_path` 字串插入到圖片 URL 中
- 確保圖片 URL 建立正確，避免 URL 錯誤

## 使用 SDWebImage 載入圖片
- 引入 SDWebImage 庫來非同步載入圖片
- 透過 `sd_setImage` 方法將圖片載入至 `posterImageView`
- 確保每個 Cell 都能正確顯示對應的圖片

## 測試與運行
- 確認專案能成功建置並執行
- 驗證每個 section（如 Trending Movies 和 Trending TVs）的資料是否正確顯示
- 驗證不同的電影或電視劇是否顯示對應的海報

## 檢查結果
- 確認每個 Cell 根據 API 回傳的 `poster_path` 正確顯示海報
- 各個 section 的內容，如《蜘蛛人》、《紙房子》、和《獵魔士》等，能夠正確載入
# Creating Upcoming TableView inside Upcoming Tab
## 設定 UpcomingViewController
- 設定標題為 "Upcoming" 並啟用大標題模式
- 建立 `upcomingTable` (UITableView)，並使用匿名閉包方式初始化
- 註冊 UITableViewCell 並設定識別符號為 "cell"
- 將 `upcomingTable` 添加到視圖並設置 `delegate` 和 `dataSource` 為 `self`
- 實作 UITableView 的 `delegate` 和 `dataSource`，暫時返回固定的 10 行數據

## 設定 TableView 的 Frame
- 在 `viewDidLayoutSubviews` 中，將 `upcomingTable.frame` 設置為 `view.bounds`
- 測試執行，確認 TableView 成功顯示並具備滾動功能

## 建立 API 呼叫來抓取即將上映電影
- 建立 `fetchUpcoming` 方法，調用 `getUpcomingMovies` API
- 使用 `DispatchQueue.main.async` 在主線程中更新 UI 並重新載入 TableView 資料
- 在 `cellForRowAt` 中動態填充 API 回傳的電影名稱

## 設定 TableViewCell
- 回傳行數為 `titles.count`
- 根據 `indexPath.row` 取得對應的電影名稱，設置為每個 cell 的標籤文字

## 測試 API 呼叫
- 確認 API 呼叫成功並回傳電影名稱至 TableView
- 如果資料是空的，則返回 "Unknown" 預設值

# Creating custom TableViewCell from the upcoming table
## 建立自訂 TableViewCell
- 新增一個 Cocoa Touch 類別，命名為 `TitleTableViewCell`
- 建立 UI 元素：`titlePosterImageView` (UIImageView)、`titleLabel` (UILabel) 和 `playButton` (UIButton)
- 使用 Auto Layout 設置圖片、標題和播放按鈕的位置與大小
- 在 `applyConstraints` 方法中定義視圖的約束條件

## 設定自訂 TableViewCell 的內容
- 在 `configure(with model:)` 方法中設置圖片 URL 和標題名稱
- 使用 SDWebImage 載入電影海報圖片
- 將模型中的電影名稱設置為標籤的文字

# Creating TitleViewModel
![CleanShot 2024-09-11 at 19.30.21](https://hackmd.io/_uploads/S1wDkZ1TC.png)

## 創建 `TitleViewModel`

- 創建 Swift 檔案 `TitleViewModel`
- 定義結構體 `TitleViewModel`
  - 變數 `titleName` 為 `String`
  - 變數 `posterUrl` 為 `String`

## 設定約束條件

- 複製 `titleLabel` 並命名一致
- 設定 `titleLabel` 約束條件
  - `titleLabel.leadingAnchor` 對齊 `posterImageView.trailingAnchor`，間距 20 點
  - `titleLabel.centerYAnchor` 對齊 `contentView.centerYAnchor`
- 啟用 `titleLabel` 的約束條件

## 註冊並配置 TableView Cell

- 在 `UpcomingViewController` 中，註冊 `TitleTableViewCell`
  - 使用 `tableView.dequeueReusableCell` 並返回自定義 cell
  - 使用 `guard` 確保成功取得 cell
- 配置 cell
  - 透過 `configure` 方法傳入 `TitleViewModel`
  - 從 `titles` 陣列中取得資料，設定 `titleName` 與 `posterUrl`

## 修正 Poster URL

- 檢查 Poster URL，並處理未解包情況
- 設定預設值為 `"Unknown Title Name"`

## 調整 Table Row 高度

- 設定行高度為 90 點，並嘗試多種高度設定
  - 例如 140 點，持續調整以達到最佳效果

## 增加播放按鈕

- 設定系統圖示按鈕 `play.circle`
- 設定按鈕的約束條件
  - `trailingAnchor` 設定為 `contentView.trailingAnchor`，間距 -20 點
  - `centerYAnchor` 對齊 `contentView.centerYAnchor`
- 啟用按鈕的約束條件

## 調整按鈕樣式與大小

- 設定按鈕圖示顏色為白色
- 調整圖示大小
  - 使用 `UIImage.symbolConfiguration` 並將點大小設為 40 點

## 修正圖像剪裁與間距

- 設定 `posterImageView.clipsToBounds = true` 防止圖像溢出
- 調整 poster 間距，將上下間距減少至 10 點
# Creating Top Search TableView inside TopSearch tab
## 搜尋功能設定
- 將 `upcoming tab` 的功能複製到 `search tab`
- 修改名稱為 `search`，測試運作是否正常

## 建立 Table View
- 設置 `discover table`，允許使用者在搜尋前探索熱門或推薦內容
- 使用相同的 `table view cell` 來重複利用

## 設定 Discover Table Layout
- 設置 `table` 的 `layout`，使用 `view.bounds` 作為框架
- 設定 `delegate` 和 `dataSource` 為當前控制器，以實作資料處理

## Table View DataSource 與 Delegate 設定
- 回傳預設的 10 筆資料
- 使用 `dq cell` 來取得重用的 cell
- 暫時回傳 cell，尚未加上實際資料

## 設定 Discover API
- 透過 `Movie Database API` 搜尋 discover 功能，設定相關查詢參數（地區、語言等）
- 生成 API 呼叫函式 `getDiscoverMovies`

## API 呼叫函式
- 設置 URL 並替換 API 金鑰
- 使用相同的基礎 URL，設置必要參數
- 確保 API 金鑰從常數中取得

## 搜尋 View Controller 的資料處理
- 設定 `titles` 變數來儲存回傳的電影資料
- 實作 `fetchDiscoverMovies` 函式，並處理 API 回傳的結果
  - 成功時更新 `titles` 並重新載入 table view
  - 失敗時列印錯誤

## 更新 Table View 資料
- 使用 `titles.count` 設定 Table View 的行數
- 配置 cell 並傳遞對應的 `title view model`
- 檢查並回傳電影標題，若無則回傳 "Unknown name"
- 傳遞海報圖片的路徑

## 高度設定
- 設定 cell 高度為 140，避免遇到相同錯誤
- 測試不同控制器的運作是否正常
# Creating SearchResultsViewController to display search results
![CleanShot 2024-09-13 at 14.21.08](https://hackmd.io/_uploads/HklgqIWT0.png)

## 新增 Search Results View Controller
- 創建一個新的 `Cocoa Touch Class` 檔案，命名為 `SearchResultsViewController`
- 刪除預設內容，設定背景顏色為系統綠色以確保功能運作

## 文件與群組整理
- 創建新的群組 `core`，將 `HomeViewController`、`UpcomingViewController`、`SearchViewController`、`MainTabBar` 及 `DownloadsViewController` 移入該群組
- 創建新的群組 `general`，並將新創建的 `SearchResultsViewController` 移入該群組

## 搜尋控制器設定
- 在 `SearchViewController` 中新增 `UISearchController` 實例
- 設定 `searchResultsController` 為 `SearchResultsViewController` 的新實例
- 設定搜尋框的佔位符文字為 "Search for a movie or a TV show"
- 設定搜尋框樣式為 `minimal`，背景透明

## 顯示搜尋控制器
- 在 `viewDidLoad` 中將搜尋控制器設置到 `navigationItem.searchController`
- 測試結果，確保搜尋框顯示正常，且能顯示搜尋結果

## 設定 Navigation Controller 樣式
![CleanShot 2024-09-13 at 14.24.14](https://hackmd.io/_uploads/Skx25LbTR.png)

- 設定 `navigationController` 的 `navBar` 背景顏色為白色，確保應用程式中顏色一致

## 搜尋結果視圖控制器設置
- 初始化 `UICollectionView`，設置其佈局為 `UICollectionViewFlowLayout`
- 設定 `itemSize` 為 `CGSize(width: 100, height: 200)`
- 註冊 `TitleCollectionViewCell` 以重用

## 設定 Collection View
- 初始化 `UICollectionView` 並設置其背景色
- 設定 `delegate` 和 `dataSource` 為當前控制器
- 實作 `UICollectionViewDataSource` 方法：
  - `numberOfItemsInSection` 返回 10
  - `cellForItemAt` 方法中設置 cell 的背景色和重用

## 自適應布局
![CleanShot 2024-09-13 at 14.37.17](https://hackmd.io/_uploads/B1Eh6IbaA.png)
- 設置 collection view cell 的寬度為螢幕寬度的三分之一，並留出邊距
- 設定最小間距為 0，保證 cell 顯示合理

## 測試
- 測試不同設備（如 iPhone 13 和 13 Pro）的顯示效果，確認 layout 在不同螢幕尺寸下顯示一致
# Querying database for individual movie
![CleanShot 2024-09-13 at 15.05.20](https://hackmd.io/_uploads/rks_VDZaR.png)

## 新增 API 呼叫函式
- 在 `API Caller` 中新增 `searchWithQuery` 函式，接受 `query` 字串參數
- 設定 URL 來處理搜尋請求，使用基礎 URL 和 API 金鑰
- 格式化搜尋查詢以避免 URL 錯誤

## 設定 Search View Controller
- 在 `SearchViewController` 中設置 `UISearchController` 的 `searchResultsController` 為 `SearchResultsViewController` 的實例
- 設定 `searchBar` 的佔位符為 "Search for a movie or a TV show"
- 設定 `searchBar` 樣式為 `minimal`

## 配置 Search Results 更新
- 實作 `updateSearchResults` 方法，從搜尋框取得查詢字串
- 確保查詢字串不為空且長度大於或等於 3，避免不必要的伺服器請求
- 設定 `resultsController` 為 `SearchResultsViewController`，並更新其資料

## 呼叫 API 取得搜尋結果
- 使用 `apiCaller.shared.search` 函式發送搜尋請求
- 根據回傳結果更新 `SearchResultsViewController` 的資料
- 在主線程中重新載入 `collectionView` 以顯示結果
- 處理錯誤並顯示錯誤描述

## 更新 Search Results View Controller
- 在 `SearchResultsViewController` 中設定 `collectionView` 的 `dataSource` 和 `delegate`
- 實作 `collectionView` 方法以顯示搜尋結果
- 設定 cell 的資料為搜尋結果中的標題，處理海報路徑的顯示

## 測試搜尋功能
- 測試搜尋功能是否正常運作，確認搜尋結果正確顯示
# Using YouTube API
## Google 開發者控制台設置 YouTube API
![CleanShot 2024-09-13 at 17.22.46](https://hackmd.io/_uploads/rJqONK-6R.png)

- 搜尋 Google Developer Console 並點擊第一個連結
- 建立新專案，例如命名為 "Netflix Clone"
- 進入專案後，點擊 "Create Credentials" 並選擇 "API Key"
- 複製生成的 API Key
- 啟用 YouTube Data API，在 "Enable APIs and Services" 中找到並啟用
- 回到 "Credentials" 頁面，複製 API Key

## 在 Xcode 中設置 API 呼叫
- 在 `APICaller` 中新增 `youtubeAPIKey` 並儲存 API Key
- 設定靜態變數 `youtubeBaseURL` 來儲存 YouTube API 基本 URL

## 搜尋 YouTube API 文件
- 搜尋 "YouTube API"，打開第一個鏈接
- 點擊 "Search for content" 查看 YouTube 搜尋 API 文件
- 使用 Google API 的 HTTP 請求範例，生成一個查詢字串（例：`Harry Potter`）
- 空白字元將被編碼為 `%20`

## 建立 YouTube 搜尋函式
- 在 `APICaller` 中新增 `getMovieWithQuery` 函式，處理 API 請求
- 使用 `query.addingPercentEncoding` 來處理查詢字串的空白字元
- 設定 API 請求 URL，並將 API Key 加入其中
- 使用 URLSession 進行 API 請求，暫時以 `JSONSerialization` 查看回應資料

## 測試 API 請求
- 在 `HomeViewController` 中呼叫 `getMovieWithQuery`，測試搜尋字串 "Harry Potter"
- 如果回應錯誤（如 `Permission Denied`），檢查是否有遺漏 API Key
- 修正後，應能成功接收來自 YouTube API 的資料
# Parsing YouTube API Response
## YouTube Search Response Model

- 創建 `youtube search response` 檔案，命名為 `YouTubeSearchResponse`
- 定義 `YouTubeSearchResponse` 結構，符合 `Codable` 協議
  - 包含 `items` 屬性，為 `videoElement` 陣列
- 定義 `videoElement` 結構，符合 `Codable` 協議
  - 包含 `id` 屬性
- 定義 `idVideoElement` 結構，符合 `Codable` 協議
  - 包含 `kind` 和 `id` 屬性

## API Caller 修改

- 更新 `getMovie` 函數，返回單一 `videoElement`
- 使用 `JSONDecoder` 解碼 `YouTubeSearchResponse`
- 設置完成處理器回傳 `videoElement`，若錯誤則回傳 `failure`

## 測試和調試

- 測試解碼結果，確認是否能正確解析並獲取 `id`
- 若成功，則在 `API Caller` 中返回最佳匹配的 `videoElement`
- 處理失敗情況，傳遞錯誤

## 主畫面控制器調整

- 刪除默認的 `Harry Potter` 搜尋
- 調整 `TitleTableViewController`，確保在不同區段渲染正確標題
# Handling selections of cells (Tapping on cells)
## 集合視圖選擇處理

- 在 `collection view cell` 中實作選擇函數
- 使用 `collectionView.deselectItem` 取消選擇，並設置動畫為 `true`
- 取得所選標題的名稱
- 若標題名稱為空則返回
- 使用 `API Caller.shared.getMovie` 查詢標題，並附加 "trailer" 進行 YouTube 搜尋

## API 呼叫結果處理

- 成功時：
  - 取得 `videoElement`
  - 打印 `id`
- 失敗時：
  - 打印錯誤信息

## 測試

- 選擇標題，如 “No Time to Die” 進行測試
- 確認 YouTube 伺服器回應結果
- 使用取得的 `video id` 在 YouTube 上查找對應的預告片
# Creating TitlePreviewViewController
![CleanShot 2024-09-17 at 01.26.35](https://hackmd.io/_uploads/BJSw9JIT0.png)

## 建立新控制器

- 建立新檔案，命名為 `TitlePreviewViewController`
- 匯入 `WebKit` 模組
- 初始化一個 `WKWebView` 來顯示影片

## 介面元件

- 初始化標題標籤 `UILabel`，字型設為系統字體，字重為粗體，大小 22
- 初始化概述標籤 `UILabel`，字型設為系統字體，字重為常規，大小 18，並設置可多行顯示
- 初始化下載按鈕 `UIButton`，背景設為紅色，標題為 "Download"，文字顏色設為白色

## 加入視圖並設定約束

- 將 `webView`、`titleLabel`、`overviewLabel` 和 `downloadButton` 加入視圖
- 設置 `webView`、`titleLabel`、`overviewLabel` 和 `downloadButton` 的 Auto Layout 約束

## 測試與調整

- 測試 `TitlePreviewViewController` 是否顯示正確，包含 WebView、標題和概述
- 調整 WebView 的高度，設定為 250
- 調整下載按鈕的位置，置於視圖的中央，並設定與 `overviewLabel` 的間距為 15 點
- 將背景色設為 `systemBackground`

## 美化下載按鈕

- 設置按鈕的寬度為 140，高度為 80
- 加入圓角效果，`cornerRadius` 設為 15

## 設置 `TitlePreviewViewModel`

- 建立新檔案 `TitlePreviewViewModel`
- `TitlePreviewViewModel` 包含：
  - 標題：`String`
  - YouTube 影片元素：`VideoElement`
  - 標題概述：`String`

## 配置控制器

- 建立 `configure` 函數，用來接收 `TitlePreviewViewModel`
- 設定 `titleLabel.text` 為 `model.title`
- 設定 `overviewLabel.text` 為 `model.titleOverview`
- 使用 `model.youtubeVideo.id.videoId` 組成 YouTube 嵌入網址，並加載至 `WebView`

## 設置 `CollectionViewTableViewCellDelegate` 協議

- 建立協議 `CollectionViewTableViewCellDelegate`
- 協議方法：`collectionViewTableViewCellDidTapCell(cell:model:)`
  - 參數：`cell`（被點擊的 cell）
  - 參數：`model`（`TitlePreviewViewModel`）

## 在 Cell 中實現 Delegate

- 宣告弱引用的 delegate 變數
- 在 `didSelectItemAt` 中調用 delegate 方法
  - 傳遞 `TitlePreviewViewModel`
  - 使用 `weak self` 防止循環引用

## 設置 HomeViewController 為 Delegate

- `HomeViewController` 擴展為符合 `CollectionViewTableViewCellDelegate`
- 實現 `collectionViewTableViewCellDidTapCell` 方法
  - 創建 `TitlePreviewViewController`
  - 傳入 `viewModel`
  - 使用 `navigationController.pushViewController` 進行畫面跳轉

## 指定 Delegate

- 在 `tableView(_:cellForRowAt:)` 中將 `cell.delegate` 設為 `self`

## 處理異步更新與錯誤

- 使用 `DispatchQueue.main.async` 確保 UI 操作在主線程執行
- 異步操作中使用 `weak self` 避免內存洩漏

## 修正 UI 約束

- 修正 `overviewLabel` 的 `trailingAnchor` 約束
- 調整 WebView 高度至 300

# Refactoring TableViewHeader Hero title
![CleanShot 2024-09-17 at 02.02.42](https://hackmd.io/_uploads/HJ4bQxI6C.png)

## 修改 Header View 顯示隨機電影

- 定義一個新的變數 `randomTrendingMovie`，類型為可選的 `Title`
- 將 `HeroHeaderView` 的範圍從 `viewDidLoad` 移到類別級別
- 新增方法 `configureHeroHeaderView()` 用於配置 Header View
  - 使用 `APICaller.shared.getTrendingMovies()` 來獲取趨勢電影
  - 在成功時隨機選取一部電影，並設定給 `randomTrendingMovie`
  - 失敗時打印錯誤訊息

## 配置 HeroHeaderView

- 在 `HeroHeaderView` 中新增公開方法 `configure(with model:)`
  - 設定 `heroImageView` 的圖片
  - 使用 `sd_setImage` 設定 URL
  - URL 來源於電影的 `posterPath`

## 修正缺失的調用

- 在適當的位置調用 `configureHeroHeaderView()`，確保電影資訊更新到 Header View
- 確保選取的隨機電影是從 `titles.randomElement()` 中選擇

## 測試隨機電影顯示

- 每次打開應用程式時，隨機顯示一部趨勢電影在 Header View
- 測試通過重啟應用來確認隨機效果
# Handling Tapping across all ViewControllers
## 處理所有 ViewControllers 的點擊事件

- 在即將到來的視圖控制器中實作 `tableView:didSelectRowAtIndexPath:` 方法。
- 參考 `tableView` 使用 `deselectRow(at:animated:)` 方法取消選擇。
- 獲取點擊的標題，使用 `apiCaller.shared.getMovie()` 獲取數據。
- 配置 `TitlePreviewViewController`，傳入標題名稱、YouTube 視頻和概述。
- 使用 `navigationController.pushViewController(_:animated:)` 推送視圖控制器。
- 修正 `DispatchQueue.main.async` 用於主線程操作。

## 搜索結果視圖控制器中的點擊事件處理
![CleanShot 2024-09-17 at 02.17.26](https://hackmd.io/_uploads/HyZIIxIpA.png)

- 在 `SearchResultsViewController` 中創建協議 `SearchResultsViewControllerDelegate`。
- 定義協議方法 `searchResultsViewController(_:didTapItem:)`。
- 在 `collectionView:didSelectItemAt:` 方法中，使用代理方法傳遞點擊的項目。
- 使用 `apiCaller.shared.getMovie()` 獲取視頻元素，並通知代理方法。

## 在搜尋視圖控制器中實作代理
![CleanShot 2024-09-17 at 02.33.28](https://hackmd.io/_uploads/B1t4qlLpC.png)

- 在 `SearchViewController` 中設置 `SearchResultsViewController` 的代理為 `self`。
- 實作 `SearchResultsViewControllerDelegate` 協議，處理點擊事件。
- 在 `searchResultsViewController(_:didTapItem:)` 方法中配置 `TitlePreviewViewController` 並推送視圖控制器。

## 實作下載功能
![CleanShot 2024-09-17 at 02.50.25](https://hackmd.io/_uploads/r1oBAlUpR.png)

- 在 `CollectionView` 的 `contextMenuConfigurationForItemAt:` 方法中定義下載動作。
- 使用 `UIContextMenuConfiguration` 定義上下文菜單配置。
- 創建 `UIAction` 來處理下載動作。
- 返回 `UIContextMenuConfiguration` 並添加 `UIAction`。

## 下載功能的清理和測試

- 創建 `private func downloadTitle(at:)` 方法處理下載邏輯。
- 在下載動作處理方法中調用 `downloadTitle(at:)`，並傳遞選中的 `indexPath`。
- 確保控制台輸出正在下載的標題。
# Core Data (Best Practices)
## 如何將 Core Data 新增至已存在的專案

- 在 Xcode 專案中，若初始未選擇使用 Core Data，可手動添加。
- 從另一個含 Core Data 的專案複製相關程式碼，貼到當前專案中。
- 確保在 `AppDelegate` 中匯入 `CoreData`，並添加 `persistentContainer` 及 `saveContext`。

## 建立 Data Model
![CleanShot 2024-09-18 at 15.11.12](https://hackmd.io/_uploads/SktmaedT0.png)

- 在 Xcode 中右鍵選擇新增檔案，找到 Core Data 模組，選擇 Data Model。
- 為 Data Model 命名並與程式碼中的名稱一致（大小寫敏感）。
- 在 Data Model 中新增實體（Entity），並為其添加屬性及對應的資料型別。

## Persistent Container 與 Context Manager 的介紹

- `persistentContainer`：用來儲存資料的容器，即資料庫本身。
- `context manager`：管理數據的插入與保存，負責將數據提交至資料庫。

## 配置 Core Data 實體屬性

- 在 Data Model 中添加屬性，例：`original_name`、`id` 等。
- 使用對應資料型別，整數選擇 `Integer64`，浮點數選擇 `Double`。
- 確保模型屬性能夠被專案中的其他部分正確讀取。

## 建立 Data Persistence Manager

- 為了符合 SOLID 原則，應將 Core Data 的操作集中在一個管理類別中。
- 建立 `DataPersistenceManager` 類別，並實作靜態共享實例（`shared`），用以下載資料和與 Core Data 進行互動。
- 避免直接在 `UICollectionViewCell` 中與 Core Data 進行資料操作。

## 實作下載與儲存資料的邏輯

- 在 `DataPersistenceManager` 中實作 `downloadTitleWithModel` 方法，接收傳入的資料模型，並準備將其存入資料庫。
- 使用 `guard let` 取得 `AppDelegate` 和 `context`，以便與 Core Data 互動。
- 使用 `context.save()` 將資料儲存至 Core Data，並以 `do-catch` 來處理可能的錯誤。

## 建立資料庫錯誤處理

- 建立自訂錯誤類型 `DatabaseError`，處理資料儲存失敗等情況。
- 在操作結束時，根據結果回傳成功或失敗訊息，並使用閉包處理完成後的動作。
## 實作下載功能至 Collection View Cell

- 在 `CollectionTableViewCell` 中，使用 `DataPersistenceManager.shared.downloadTitle` 方法來下載電影。
- 將 `titles[indexPath.row]` 傳入，設定下載成功或失敗的情況。
- 成功時，打印「下載至資料庫」訊息；失敗時，打印錯誤訊息。

## 下載的資料反映至下載頁面

- 在 `DownloadsViewController` 實作顯示下載的資料。
- 從 `UpcomingViewController` 複製並修改 TableView 設定。
- 修改變數名稱，如 `upcomingTable` 改為 `downloadTable`，並實作 `UITableViewDelegate` 和 `UITableViewDataSource`。

## 設置本地存儲的資料表

- 新增 `titles` 變數，存儲從資料庫獲取的 `TitleItem`。
- 使用 `DataPersistenceManager` 提供的方法，從資料庫中獲取資料，並更新 `titles` 陣列。
- 刷新 TableView 顯示下載的內容。

## 實作從資料庫獲取資料功能

- 在 `DataPersistenceManager` 中新增方法 `fetchTitlesFromDatabase`。
- 使用 `NSFetchRequest` 從 Core Data 獲取 `TitleItem` 資料。
- 使用 `do-catch` 處理資料庫存取錯誤，將成功結果傳回控制器。

## 更新下載頁面的 UI
![CleanShot 2024-09-18 at 15.50.33](https://hackmd.io/_uploads/SkiILWOT0.png)

- 呼叫 `fetchLocalStorageForDownloads` 方法，獲取並顯示下載的資料。
- 將資料獲取後分配至 `titles`，並刷新 TableView。
- 設置 DispatchQueue 主執行緒，確保 UI 操作在主線程上執行。

## 修正 UI 錯誤

- 確保在 `viewDidLoad` 中加入 `view.addSubview(downloadTable)`，將 TableView 添加至頁面。
- 下載後關閉應用程式並重新打開，應正確顯示下載的內容。

## 實作刪除功能
![CleanShot 2024-09-18 at 16.28.42](https://hackmd.io/_uploads/H1WvJzd6C.png)

- 在 `DataPersistenceManager` 中新增方法 `deleteTitleWithModel`。
- 使用 `context.delete()` 方法從資料庫中刪除指定的 `TitleItem`。
- 處理刪除失敗情況，返回錯誤訊息。

## 實作 TableView 刪除行為

- 在 `DownloadsViewController` 中實作 `commitEditingStyle`，處理刪除行為。
- 刪除資料時，從 `titles` 陣列移除項目，並刷新 TableView。
- 確保刪除動作後，同步資料庫的更新。
# Using Notification Center to update ViewControllers
## 使用通知中心

- 在下載完成後，透過 `NotificationCenter` 發送通知。
- 使用 `NotificationCenter.default.post` 方法，並設置通知名稱為 "downloaded"。
- 通知發送後，其他監聽此通知的元件會接收到通知，並進行相應的處理。

## 設置觀察者

- 在下載視圖控制器中，使用 `NotificationCenter.default.addObserver` 來添加觀察者。
- 設置觀察者的通知名稱為 "downloaded"，並指定要觸發的方法，例如 `fetchLocalStorage`。
- 觀察者的對象和排隊參數設置為 `nil`。

## 測試功能

- 測試下載功能是否正常運作，檢查下載內容是否即時顯示在下載標籤中。
- 確認點擊下載的項目是否能正確導航至預覽控制器。


# 服務
* [The Movie Database (TMDB)](https://www.themoviedb.org/)
* [Google Cloud Platform (GCP)](https://cloud.google.com)
* [Youtube Data API](https://developers.google.com/youtube/v3?hl=zh-tw)

# 錯誤
## Storyboard
```
Could not find a storyboard named 'Main' in bundle NSBundle
```
在 General 沒有 Info.plist Values 所以我
![影片](https://hackmd.io/_uploads/rk3ApUm50.png)

而是在 Build Settings 的 info.plist values
![CleanShot 2024-08-09 at 18.31.05](https://hackmd.io/_uploads/Bk1ZlOXqC.png)
![CleanShot 2024-08-09 at 18.33.37](https://hackmd.io/_uploads/By6txdX5R.png)

## Cannot find 'HeroHeaderUIView' in scope

重新 Create Folder References
![CleanShot 2024-09-09 at 13.51.06](https://hackmd.io/_uploads/SyTJaW2hC.png)

## NSPOSIXErrorDomain Code=100 "Protocol error"
常見原因和解決方法：
* URL 格式錯誤
* 授權標頭錯誤
* API 金鑰使用錯誤
* 錯誤日誌記錄
* 檢查連接
```
func getMovie(with query: String ) {
    guard let url = URL(string: "\(Constants.BASE_URL)q=\(query)") else { return }
}
```
BASE_URL 改成 BASE_URL_YOUTUBE

# 第三方庫
[SDWebImage](https://github.com/SDWebImage/SDWebImage)


# 快捷鍵
command + r : 在 Xcode 中用來編譯並運行專案的快捷鍵。
command + shift + a : 切換 dark/light mode。
command + ctrl + cursor : 
command + alt + [/] : 移動範圍的 code
command + ctrl + e : rename

# Terminology
- **Xcode Project**: Apple 開發者用於創建 iOS、macOS 應用程式的專案。
- **Storyboard**: 用於視覺化設計應用程式介面的工具，包含視圖控制器及其轉場。
- **Scene Delegate**: 負責管理應用程式中多場景的生命週期和配置。
- **UIWindow**: iOS 應用程式中用來呈現視圖層次結構的窗口。
- **Root View Controller**: 應用程式或場景中的主要視圖控制器，通常是視圖層次結構的根節點。
- **MainTabBarViewController**: 主選項卡控制器，用於切換應用程式中不同的功能模塊。
- **Cocoa Touch Class**: 專為 iOS 和 tvOS 設計的框架，包含用於構建 UI 和處理事件的類別。
- **Navigation Controller**: 負責管理視圖控制器堆疊，提供視圖之間的推送和彈出導航。
- **SF Symbols**: Apple 提供的符號庫，讓開發者在應用程式中使用各種標準圖標。
- **Tab Bar Item**: 選項卡項目，通常位於應用程式底部，用於切換不同的視圖控制器。
- **System Background**: iOS 的系統預設背景顏色，會根據系統的深色或淺色模式自動調整。
- **Dark Mode/Light Mode**: iOS 系統的兩種顯示模式，分別為深色模式和淺色模式。
- **Table View**: 顯示資料列表的視圖控制器，通常為垂直捲動的列表。
- **Collection View**: 一種更靈活的資料展示視圖控制器，支援多種佈局方式，通常用於水平或網格展示資料。
- **UI Tab Bar Controller**: 一種特殊的視圖控制器，用於管理應用程式底部的選項卡視圖和對應的視圖控制器。
- **Make Key and Visible**: 方法用於將 `UIWindow` 設為應用程式的主要視窗並顯示其內容。
- **Initialize with Frame**: 使用特定的幾何框架初始化視圖或窗口。
- **Coordinate Space**: 定義應用程式中的視圖或元素如何在坐標系中定位。
- **Main Storyboard**: 預設的主視圖設計文件，通常包含應用程式的初始視圖控制器及其關聯的視圖。
- **View Background Color**: 設定視圖的背景顏色。
- **Cocoa Touch Framework**: iOS 平台上用於開發應用程式的基本框架，包括 UI 元素、事件處理等功能。
- **Tab Bar Item Image**: 設定選項卡項目的圖標圖片，通常用於標識不同的選項卡。
- **Scene Configuration**: 定義應用程式中的場景設置，包含場景的各種屬性，如角色和配置名稱。
- **Window Application Session Role**: 指定場景在應用程式中的角色，常見角色包括 UI 窗口場景或外部顯示器場景。
- **Configuration Name**: 為場景配置指定的名稱，通常用於在程式中區分不同的場景配置。
- **Delegate Class Name**: 與場景關聯的代理類別名稱，負責處理場景的生命週期事件。
- **Storyboard Name**: 指定與場景關聯的 Storyboard 名稱，用於加載應用程式的初始視圖控制器和 UI 設計。
- **MainTabBarViewController**: 主要選項卡控制器，包含應用程式的各個功能模塊，通常位於底部。
- **UITabBarController**: 用來管理多個視圖控制器的控制器，通過選項卡切換不同的模塊。
- **UIViewController**: iOS 應用程式中的視圖控制器，負責管理應用程式中的單一視圖。
- **UINavigationController**: 負責管理視圖控制器堆疊的控制器，支援視圖間的推送和彈出操作。
- **Cocoa Touch Class**: 用於 iOS 和 tvOS 開發的類別，包含視圖控制器、UI 元素等。
- **SF Symbols**: Apple 提供的符號庫，用於應用程式中使用各種標準圖標。
- **Tab Bar Item**: 選項卡項目，用於切換不同的視圖控制器，通常包含圖標和標題。
- **System Background**: iOS 系統的預設背景顏色，會根據深色模式和淺色模式自動調整。
- **Dark Mode/Light Mode**: iOS 的顯示模式，分別為深色模式和淺色模式。
- **Table View**: 顯示資料列表的視圖控制器，通常以垂直方向捲動的方式顯示。
- **Collection View**: 用於顯示多個項目集合的視圖控制器，支援水平或網格佈局。
- **Window Scene**: 用於管理應用程式中窗口的場景，包括其生命周期和顯示內容。
- **makeKeyAndVisible**: 將窗口設置為應用程式的主要窗口並顯示內容的方法。
- **setViewControllers**: 設置選項卡控制器的視圖控制器集合，指定應用程式的主視圖。
- **view.backgroundColor**: 設定視圖背景顏色的屬性。
- **command+r**: 在 Xcode 中用來編譯並運行專案的快捷鍵。
- **simulator**: iOS 開發工具中的模擬器，用於測試應用程式在不同設備上的運行效果。
- **UITableView**: 用來顯示滾動清單的UI元件。
- **UITableViewCell**: 表格中單個顯示資料的單元格。
- **Anonymous Closure Pattern**: Swift 中的一種語法，用於快速建立閉包。
- **Reusable Identifier**: 讓UITableView可以重複使用相同的Cell來節省記憶體和提升效能。
- **Bounds**: 一個View的邊界，用來決定它的大小和位置。
- **DataSource Protocol**: UITableView 需要的協定，負責提供資料給表格。
- **Delegate Protocol**: 負責處理 UITableView 的互動行為，例如選擇某一列等操作。
- **Extension**: 用來擴展現有類別或協定功能的語法，不改變原始碼結構。
- **IndexPath**: 用來標識UITableView的行和段，表示特定位置的資料。
- **ViewDidLayoutSubviews**: 視圖控制器中的方法，用來調整子視圖的布局。
- **Command+R**: 在Xcode中用來編譯和運行應用程式的快捷鍵。
- **Dequeue Reusable Cell**: 用來取出已經被重用池回收的UITableViewCell。
- **Text Label**: UITableViewCell內建的標籤，用來顯示文字，可能會被棄用。
- **Height for Row**: 設定每個UITableViewCell的高度。
- **BackgroundColor**: 用來設定視圖背景顏色的屬性。
- **Section Header**: UITableView中每個段的標題。
- **CollectionView**: 用來顯示多列或多段資料的UI元件，通常用於網格狀布局。
- **Model-View-ViewModel (MVVM)**: 一種設計模式，用來將資料處理邏輯與UI分離。
- **Cocoa Touch Class**: Xcode中用來建立UI元件的類別選項。
- **Static Identifier**: 用於定義不會變化的靜態變量，通常用來註冊和取出重用元件。
- **Init**: 初始化方法，用來設定類別的初始狀態。
- **Guard**: Swift 中用來安全解包可選型的語法。
- **Else**: Guard語句失敗時執行的區塊。
- **Grouped Style**: UITableView 的一種樣式，將內容分成多個段落，常見於設置應用。
- **Number of Sections**: 用來設定 UITableView 有多少段。
- **Number of Rows in Section**: 用來設定每個段中有多少行的數據。
- **UICollectionView**: 用來顯示多段多行資料的滾動視圖，類似於UITableView，但可以支持更多靈活的布局。
- **Anonymous Closure Pattern**: Swift中的一種語法，用於簡化初始化過程，例如初始化UICollectionView。
- **UICollectionViewFlowLayout**: 用來決定UICollectionView內部佈局的類別，常見的佈局方式為瀑布流（flow layout）。
- **Scroll Direction**: UICollectionView的滾動方向，可以設定為水平（horizontal）或垂直（vertical）。
- **Layout Item Size**: 決定每個UICollectionView單元格的大小。
- **Delegate Protocol**: 負責處理UI元件的行為，像是滾動和選擇操作。
- **DataSource Protocol**: 負責提供資料給UICollectionView的協定。
- **ContentView**: UITableViewCell和UICollectionViewCell的基礎視圖，用來承載子視圖。
- **CGrect**: 用於指定視圖的框架，包括x座標、y座標、寬度和高度。
- **System Background Color**: 系統預設的背景顏色，通常根據當前系統的深色或淺色模式變化。
- **Number of Items in Section**: 決定UICollectionView中每個section包含的item數量。
- **Dequeue Reusable Cell**: 從重用池中取出可以重用的單元格，節省記憶體資源。
- **Collection View Cell**: UICollectionView內單個顯示資料的單元格。
- **UICollectionViewCell**: 用來顯示UICollectionView內的資料項。
- **Super Layout Subviews**: 呼叫父類別的佈局方法，讓系統自動佈局子視圖。
- **Table Header View**: UITableView中用來顯示整個表格頭部的視圖。
- **UIView**: 用來承載UI元件的基礎視圖。
- **ViewDidLoad**: UIViewController中的方法，當視圖載入到記憶體時會被調用。
- **Frame**: 用來指定視圖在其父視圖中的位置和大小。
- **Hero View**: 典型的首頁大圖區域，常用來顯示突出內容或焦點內容。
- **Horizontal Scrolling**: UICollectionView中一種滾動方向，允許內容水平滾動。
- **Xcode Command+R**: 在Xcode中用來編譯並運行應用程式的快捷鍵。
- **Section Header**: 用來分段顯示UICollectionView或UITableView的標題。
- **Top Rated Movies**: 一種分類，用來顯示最高評分的電影。
- **Recent Movies**: 一種分類，用來顯示最近上架的電影。
- **UIView**: 用來顯示和承載UI元件的基礎視圖。
- **UIImageView**: 用來顯示圖片的視圖元件。
- **UIButton**: 用來顯示按鈕的UI元件，可以接收使用者的點擊事件。
- **Anonymous Closure Pattern**: Swift中的初始化方式，讓元件的配置邏輯集中在初始化過程中，提升代碼的簡潔性。
- **Frame**: 視圖的大小和位置，由`CGRect`表示，包括x座標、y座標、寬度和高度。
- **Content Mode**: 用來控制圖片的顯示方式，例如`aspect fill`來保持圖片比例並填滿容器。
- **Clips to Bounds**: 設定是否要將視圖的內容限制在其邊界內，避免內容超出邊界顯示。
- **Assets Folder**: 用來存儲應用程式中的圖片、圖標等資源。
- **UIImage**: 表示圖片的類別，用來在`UIImageView`中顯示圖像。
- **CAGradientLayer**: 用來繪製漸變效果的類別，常用於背景或視圖的漸變顯示。
- **CGColor**: Core Graphics中的顏色表示，用於UI元件的顏色設置。
- **Gradient Effect**: 一種漸變效果，將兩種顏色平滑過渡。
- **System Background Color**: 系統背景顏色，會根據當前的系統模式（淺色或深色模式）自動調整。
- **Button Set Title**: 設置按鈕顯示文字的方法，常用於設置按鈕的標籤。
- **Border Width**: 設置按鈕邊框寬度的屬性，用來給按鈕增加可視的邊框效果。
- **Autoresizing Masks into Constraints**: 設置是否自動將`AutoresizingMask`轉換為`AutoLayout`的約束條件。
- **NSLayoutConstraint**: 用來設置UI元件的AutoLayout約束，使元件在不同設備上適應不同屏幕尺寸。
- **Leading Anchor**: 自動布局中的一個錨點，用來設置元件的左側邊界（對於RTL語言則是右側邊界）。
- **Bottom Anchor**: 設置元件的底部錨點，用來調整元件在垂直方向上的位置。
- **Activate Constraints**: 啟用AutoLayout約束，使UI元件按設置的約束進行佈局。
- **Trailing Anchor**: 自動布局中的一個錨點，用來設置元件的右側邊界（對於RTL語言則是左側邊界）。
- **Corner Radius**: 設置按鈕或視圖的圓角半徑，使其邊角呈現圓滑效果。
- **Trial and Error Method**: 使用反覆嘗試和調整來確定最佳的UI設計或佈局。
- **Command+R**: 在Xcode中編譯並運行應用程式的快捷鍵。
- **Hero Header View**: 自定義的視圖，位於應用程式的首頁上，通常用來顯示重點內容，如電影海報或焦點推薦。
- **Play Button**: 用來播放影片或音頻的按鈕，通常放在Hero Header View中作為主要交互元素之一。
- **Download Button**: 用來下載影片或音頻的按鈕，通常用於讓使用者將內容儲存到本地裝置。
- **Configure Navbar**: 設置導航欄的功能，通常用於添加標誌或按鈕。
- **UIImage**: 表示圖片的類別，用來在`UIImageView`或其他UI元件中顯示圖片。
- **Navigation Item**: 用於設定導航欄中的左右按鈕或標題。
- **UIBarButtonItem**: 導航欄中的按鈕項目，可以添加圖片或文字。
- **Render Mode**: 設置圖片的渲染模式，例如`always original`，使圖片不受系統影響，保持原樣顯示。
- **Left Bar Button Item**: 導航欄左側的按鈕，通常用來顯示返回按鈕或品牌標誌。
- **Right Bar Button Items**: 導航欄右側的多個按鈕，可以添加多個功能按鈕或圖標。
- **SF Symbols**: Apple 提供的一組系統預設圖標，開發者可以從中選擇並使用。
- **Person Icon**: SF Symbols中的圖標之一，通常用來表示用戶或個人。
- **Play Icon**: SF Symbols中的圖標之一，表示播放按鈕。
- **Tint Color**: 設置導航欄或按鈕的顏色，改變整體顏色風格。
- **Safe Area Insets**: 設置視圖在安全區域內的邊距，避免內容超過安全區域（如瀏海或底部區域）。
- **Scroll View**: UITableView繼承自UIScrollView，擁有滾動視圖的所有屬性和方法。
- **Content Offset**: 用來指示滾動視圖的當前偏移量，特別是在垂直方向上的偏移。
- **Transform**: 用來改變UI元件的幾何形狀、位置或比例，例如將導航欄隱藏或顯示。
- **Algorithm**: 一段代碼邏輯，用來實現自動隱藏或顯示導航欄的效果。
- **Pull to Refresh**: 常見的互動效果，當用戶向下拉動界面時觸發動作。
- **Navigation Bar Push**: 當滾動到頁面頂部時，導航欄會被推動隱藏的效果。
- **Minimum**: 設置一個最小值，確保導航欄不會移動超過某個界限。
- **Negative Offset**: 當滾動視圖往上移動時，應用負偏移來移動導航欄的位置。
- **View Controller**: 一個控制整個視圖邏輯的類別，通常用來管理視圖的行為和顯示內容。
- **Section Titles Array**: 用來存放每個區段的標題文字，類型為字串的陣列。
- **Number of Sections**: UITableView的委派方法，用來決定表格有多少個區段，這裡使用`sectionTitles.count`來動態決定。
- **Title for Header in Section**: UITableView的方法，用來為每個區段設置標題，根據區段索引返回相應的文字。
- **Font Customization**: 通過設置`header.textLabel.font`來自定義標題的字體樣式，例如使用`systemFont`和`semiBold`來調整字體大小和粗體效果。
- **Frame Customization**: 用來調整標題文字的位置和尺寸，通過設置`header.textLabel.frame`的`CGRect`來控制X、Y座標和寬高。
- **Will Display Header View**: UITableView的委派方法，用來在即將顯示表頭時進行自定義設置，例如改變字體和顏色。
- **Guard Statement**: Swift中的防護語句，用來確保在進一步操作前滿足條件，否則提前返回。
- **UITableHeaderFooterView**: UITableView用來表示表頭或表尾的視圖類別，允許自定義標題樣式。
- **TextLabel**: UITableViewHeaderFooterView中的標籤，用來顯示區段標題的文字。
- **Text Color**: 用來設置標題文字的顏色，這裡將顏色設為白色以便更易識別。
- **Lowercase Transformation**: 用來將文字轉換為小寫，這裡通過`header.textLabel?.text?.lowercased()`來處理標題的顯示樣式。
- **Dynamic Section Headers**: 根據陣列內容動態設置表格的區段標題，方便更新和管理。
- **Capitalizing First Letter**: 通過擴展方法（Extensions），可以將每個標題的第一個字母轉換為大寫，增加可讀性。
- **Scroll Effect**: 通過滾動時隱藏或顯示導航欄，改善使用者體驗，這在Netflix應用中常見。
- **SF Symbols**: 系統提供的圖標庫，用來方便快捷地在應用程式中插入標準圖示。
- **SemiBold Font**: 一種字體樣式，介於普通和粗體之間，用來加強字體的可讀性。
- **Navigation Bar Customization**: 設置導航欄的外觀和按鈕，這裡包括添加Netflix標誌和調整字體顏色。
- **Dynamic Sections**: 根據內容動態設置表格的區段，無需手動指定區段數量，提升靈活性。
- **UITableView Section Headers**: 自定義區段標題的外觀，提升UI的可讀性和美觀度。
- **TMDb (The Movie Database)**: 用來獲取電影、電視劇和演員資料的網站和API，常用於開發電影相關應用。
- **API Key**: 用來驗證開發者身份的密鑰，通過這個密鑰請求API服務。
- **Shared Instance**: 設置為全局的共享實例，方便在整個應用程式中使用這個類別的方法。
- **Constants Struct**: 用來存放API Key和Base URL等常量，方便在不同地方使用。
- **Base URL**: API的基本URL，常用於拼接具體的API端點。
- **Trending Movies API**: TMDb提供的API，用來獲取當前熱門的電影、電視劇或演員資料。
- **Completion Handler**: Swift中的閉包，用來在網絡請求完成時處理結果，這裡使用逃逸閉包來返回請求結果。
- **Guard Statement**: 用來確保在進一步操作前滿足條件，否則提前返回，這裡用來確保URL的有效性。
- **URLSession**: 用來發起網絡請求的類別，這裡用於發送API請求並接收響應數據。
- **Data Task**: URLSession中的任務，用來進行HTTP請求，這裡是GET請求。
- **JSONSerialization**: 用來將數據解析為JSON格式的類別，這裡將API返回的數據轉換為JSON對象。
- **Do-Catch Block**: Swift中的錯誤處理機制，用來捕獲可能發生的錯誤，這裡用於處理JSON解析過程中的錯誤。
- **Model Structs**: 用來定義從API獲取的數據結構，這裡包括`TrendingMoviesResponse`和`Movie`結構體。
- **Codable Protocol**: Swift中的協議，用來將數據編碼或解碼，這裡用來自動將JSON數據解析為模型對象。
- **JSONDecoder**: 用來將JSON數據解析為Swift對象的類別，這裡用來解析API返回的電影數據。
- **Error Handling**: 處理API請求失敗時的錯誤，這裡通過自定義的`APIError`列舉來處理錯誤。
- **Enum for Errors**: 用來定義可能發生的錯誤類型，這裡定義了`Failed to Get Data`錯誤。
- **Result Type**: Swift的結果類型，用來表示成功或失敗的情況，這裡用於網絡請求結果的處理。
- **Switch Statement**: 用來處理不同結果的語句，這裡用來根據API請求的成功或失敗進行不同的處理。
- **API Caller Class**: 用來管理所有API請求的類別，負責發送請求並解析返回的數據。
- **Movie Model**: 代表電影資料的結構體，包括ID、媒體類型、原名、海報路徑、投票數、投票平均值等屬性。
- **TrendingMoviesResponse**: 代表從API獲取的熱門電影列表，包含一個電影對象的陣列。
- **Alamofire Alternative**: 在這個範例中，我們手動實現了網絡請求，而沒有使用常見的第三方庫如Alamofire。
- **Task Resume**: 發起URLSession的任務，這是必須的，否則任務會保持暫停狀態。
- **Extensions**: Swift 中用來擴展現有類別或結構的功能，而不需要修改原始碼。
- **Capitalize First Letter**: 自定義字串方法，用來將字串的第一個字母轉為大寫，其他部分則轉為小寫。
- **Prefix**: Swift 中的字串方法，用來取得字串的前幾個字元。
- **Lowercase**: Swift 中的字串方法，用來將字串轉換為小寫。
- **Drop First**: Swift 中的字串方法，用來刪除字串的第一個字元。
- **Home View Controller**: 用來管理首頁顯示內容的控制器，負責處理資料顯示邏輯。
- **Section Titles Array**: 一個用來儲存表格區段標題的陣列，方便管理不同區段的顯示內容。
- **UICollectionView**: 用來顯示多個資料項的UI元件，類似於 UITableView，但支持更靈活的佈局。
- **API Caller**: 管理 API 請求的類別，負責發送請求並接收資料。
- **Trending Movies**: 透過 API 獲取的當前熱門電影列表。
- **Trending TVs**: 透過 API 獲取的當前熱門電視劇列表。
- **Base URL**: API 的基本 URL，用來拼接具體的請求端點。
- **URLSession**: 用來發送 HTTP 請求的 Swift 類別，負責網路請求處理。
- **Guard Statement**: Swift 中的保護語句，用來檢查條件是否成立，否則提早返回。
- **Data Task**: URLSession 中的任務，用來執行 API 請求並接收資料。
- **Completion Handler**: Swift 中的閉包，用來處理非同步操作完成時的結果，這裡用來返回 API 請求的結果。
- **Escaping Closure**: 用來表示在函數返回後仍會執行的閉包，通常用於非同步任務中。
- **Media Type**: API 回應中的一個屬性，用來表示資料的類型，可能是電影、電視劇等。
- **JSONSerialization**: Swift 中用來將 JSON 資料轉換為 Swift 資料結構的類別。
- **Do-Catch Block**: Swift 中的錯誤處理語法，用來捕獲可能發生的錯誤。
- **Model Struct**: Swift 中用來表示 API 回應資料結構的結構體，方便資料解析。
- **Codable Protocol**: Swift 中的協議，用來將資料自動編碼或解碼，這裡用來解析 JSON 資料。
- **JSONDecoder**: Swift 中用來將 JSON 資料轉換為 Swift 模型物件的類別。
- **Result Type**: Swift 中的結果類型，用來表示操作成功或失敗，這裡用來處理 API 請求的結果。
- **API Key**: 用來驗證開發者身份的密鑰，透過這個密鑰請求 API 資料。
- **Upcoming Movies**: API 提供的功能，用來獲取即將上映的電影資料。
- **Popular Movies**: API 提供的功能，用來獲取當前流行的電影資料。
- **Top Rated Movies**: API 提供的功能，用來獲取高評分的電影資料。
- **Task Resume**: URLSession 中的方法，用來啟動數據任務，否則任務保持暫停狀態。
- **Error Handling**: 處理 API 請求失敗時的錯誤，這裡透過 `do-catch` 來捕捉錯誤。
- **TV Model**: 用來表示電視劇資料結構的模型，類似於電影模型。
- **JSONDecoder Decode**: 將 API 返回的 JSON 資料解析為 Swift 的模型物件。
- **HTTP GET**: 一種 HTTP 請求方法，用來從伺服器獲取資料。
- **Model**：資料模型，用來定義資料的結構與型別，便於程式操作。
- **Trending Title Response**：熱門標題回應，包含熱門電影或電視節目標題的回應資料。
- **CollectionViewCell**：集合視圖的單元格，負責顯示集合視圖中的每一個項目。
- **UIImageView**：UI 元件，用來顯示圖片。
- **ContentMode**：內容模式，定義如何顯示圖片，例如「scaleAspectFill」會縮放圖片以填滿顯示區域。
- **LayoutSubviews**：佈局子視圖，負責在視圖發生變化時重新佈局子視圖。
- **API Caller**：API 呼叫者，負責向外部 API 發送請求並處理回應。
- **Completion Handler**：完成處理程序，用來在非同步操作完成後執行特定邏輯。
- **Enum**：列舉型別，用來定義一組有名稱的整數常數。
- **API Error**：API 錯誤，表示在與 API 通訊過程中發生的錯誤。
- **SDWebImage**：第三方圖片加載和快取庫，負責從網路上加載圖片並進行快取處理。
- **Swift Package Manager**：Swift 套件管理器，用來管理與集成第三方 Swift 庫。
- **DispatchQueue.main.async**：主執行緒的非同步佇列，用來確保 UI 更新在主執行緒上進行。
- **Reuse Identifier**：重用標識符，識別每一個可重用的集合視圖或表格視圖單元格。
- **Configure Method**：配置方法，用來設置單元格的內容，例如圖像或標題。
- **Guard Let**：Swift 語法，用來檢查可選值是否為空，若為空則執行特定操作。
- **Poster Path**：海報路徑，表示電影或電視節目的海報圖片 URL。
- **CollectionView**：集合視圖，顯示一組資料的 UI 組件，支援水平或垂直滾動。
- **Async Function**：非同步函數，用來執行耗時操作並在完成後更新 UI。
- **ReloadData**：重新加載數據，用來重新載入集合視圖或表格視圖的內容。
- **Result Case**：結果案例，用來處理 API 回應中的成功或失敗情況。
- **Section**：段落，集合視圖或表格視圖中的一個部分，通常包含多個單元格。
- **Switch Case**：選擇分支，根據不同的條件執行不同的邏輯。
- **Default Case**：預設案例，當 switch 分支中的條件都不符合時執行的預設邏輯。
- **Xcode**：蘋果公司提供的開發環境，用來開發 iOS、macOS、tvOS 及 watchOS 應用程式。
- **Cocoa Touch Class**：iOS 專案中用來建立 UI 元件或控制器的基礎類別。
- **CollectionViewCell**：集合視圖的單元格，用來展示一個資料單元。
- **Identifier**：識別符，通常用來唯一標識某個視圖元件或資料對象。
- **Frame**：視圖的邊界框架，用來定義視圖的位置及大小。
- **Initializer**：初始化方法，用來建立物件的初始狀態。
- **ImageView**：用來顯示圖片的 UI 元件。
- **Anonymous Closure**：匿名閉包，用來創建沒有名稱的函數或方法。
- **ContentMode**：定義圖片在視圖中的顯示方式，例如縮放、填充等。
- **LayoutSubviews**：佈局子視圖的方法，用來更新視圖的佈局。
- **Bounds**：邊界，用來定義視圖的尺寸。
- **Third-Party Library**：第三方函式庫，由外部開發者提供，用來擴充專案功能。
- **SDWebImage**：用來從網路上載入圖片並快取的第三方庫。
- **Swift Package Manager**：用來管理 Swift 程式庫的套件管理工具。
- **Completion Handler**：完成處理程序，通常用於非同步操作完成後的回調。
- **DQ (Dequeue)**：將集合視圖的單元格從重用佇列中取出以供使用。
- **Configure**：配置方法，用來設置單元格的內容。
- **Optional**：可選型別，表示變數可能有值也可能為 nil。
- **Guard**：Swift 的條件語句，用來在不符合條件時退出當前邏輯。
- **DispatchQueue**：GCD（Grand Central Dispatch）的佇列，用來執行佇列中的任務。
- **Async**：非同步，表示任務不會阻塞當前執行緒，會在完成後通知執行結果。
- Hardcoded Value：硬編碼值，在程式中直接寫死的數據，通常需要替換為動態數據。
- **UpcomingViewController**：負責即將上映頁面的視圖控制器，處理資料與顯示邏輯。
- **UITableView**：表格視圖，iOS 的 UI 元件，用來顯示一列列的資料。
- **Navigation Bar Prefers Large Titles**：導航列顯示大標題的屬性，用來在視圖中顯示大的標題字體。
- **Delegate**：代理模式，用來將某些行為或邏輯委託給其他對象處理。
- **DataSource**：資料源，用來提供表格視圖或集合視圖需要顯示的資料。
- **Extension**：Swift 的擴展功能，用來向現有的類別、結構體或協議添加新功能。
- **Cell for Row**：用來返回每一行的單元格，根據索引設置資料。
- **didLayoutSubviews**：在視圖佈局完成後調用，用來設定子視圖的大小和位置。
- **View.Bounds**：表示視圖的邊界，包含大小和位置。
- **DispatchQueue.main.async**：將任務放入主佇列，確保在主執行緒上更新 UI。
- **reloadData**：重新載入表格視圖的資料，用來刷新顯示內容。
- **SDWebImage**：第三方庫，用來非同步加載圖片並快取圖片資源。
- **Apply Constraints**：應用佈局約束，用來固定視圖元素的位置和大小。
- **Auto Layout**：自動佈局，負責動態計算視圖的大小和位置。
- **TranslatesAutoresizingMaskIntoConstraints**：是否將視圖的自動調整大小屬性轉換為 Auto Layout 約束。
- **UIImageView**：顯示圖片的 UI 元件。
- **UILabel**：顯示文字的 UI 元件。
- **UIButton**：按鈕 UI 元件，用來觸發用戶操作。
- **Constraints**：佈局約束，用來確定 UI 元件的大小和位置。
- **LeadingAnchor**：視圖的左側邊界錨點，用來設置與其他視圖的佈局約束。
- **TopAnchor**：視圖的上側邊界錨點，用來設置與其他視圖的佈局約束。
- **BottomAnchor**：視圖的下側邊界錨點，用來設置與其他視圖的佈局約束。
- **Width Constraint**：寬度約束，用來限制視圖的寬度大小。
- **Guard Let**：Swift 語法，用來安全地解包可選值並確保不為 nil。
- **Custom TableViewCell**：自訂的表格視圖單元格，用來顯示特定的內容和佈局，如圖片、標題和按鈕。
- **Cocoa Touch Class**：用來建立 iOS 應用中的 UI 元件或控制器的類別模板。
- **Static Let Identifier**：靜態常量，用來定義表格視圖單元格的唯一識別符號，通常用於重用單元格。
- **UI Image View**：iOS 的 UI 元件，用來顯示圖片。
- **Content Mode**：內容模式，用來定義圖片在 UI 元件中的縮放或顯示方式。
- **UILabel**：用來顯示文字的 UI 元件，例如影片標題。
- **UIButton**：按鈕元件，用來讓用戶觸發特定操作，例如播放影片。
- **Auto Layout**：自動佈局，負責根據約束動態計算 UI 元件的大小和位置。
- **translatesAutoresizingMaskIntoConstraints**：屬性用來指定是否將視圖的自動調整大小屬性轉換為 Auto Layout 約束。
- **Constraints**：佈局約束，用來確定 UI 元件在螢幕上的大小和位置。
- **NSLayoutConstraint.activate**：啟動佈局約束，使 Auto Layout 開始應用佈局規則。
- **SDWebImage**：第三方庫，用來加載網路圖片並快取圖像資源。
- **URL with String**：透過字串創建 URL，用來加載圖片。
- **Guard Let**：Swift 的條件語句，用來檢查可選值是否為 nil。
- **Configure Method**：配置方法，用來將資料設置到單元格中。
- **TitleViewModel**：視圖模型，用來封裝標題資料，包含影片名稱和海報 URL。
- **Leading Anchor**：視圖的左側邊界錨點，用來設定與其他視圖的佈局約束。
- **Trailing Anchor**：視圖的右側邊界錨點，用來設定與其他視圖的佈局約束。
- **CenterYAnchor**：視圖的垂直中心錨點，用來將視圖垂直居中。
- **TableView Dequeue**：重用表格視圖單元格，避免每次滾動時重新建立單元格。
- **Row Height**：表格行的高度，用來定義每個單元格的顯示大小。
- **Clip to Bounds**：將內容限制在視圖邊界內，防止圖片超出邊界顯示。
- **System Image**：使用內建的系統圖示，如播放按鈕 (play.circle)。
- **Symbol Configuration**：用來設定系統圖示的屬性，如大小和顏色。
- **TitleViewModel**：視圖模型，封裝影片的標題與海報 URL，用於簡化表格視圖單元格的配置。
- **Poster URL**：影片海報的網路路徑，用來從伺服器載入圖片顯示在單元格中。
- **Constraints**：佈局約束，用來控制視圖元素的位置與大小，如標題、海報與按鈕的佈局。
- **Leading Anchor**：視圖的左側錨點，設定與其他視圖的間距或對齊。
- **Trailing Anchor**：視圖的右側錨點，控制視圖的右側邊界與其他視圖的距離。
- **Center Y Anchor**：垂直中心錨點，將視圖的垂直位置設置在容器的垂直中心。
- **UITableViewCell**：表格視圖單元格，負責展示即將上映的影片或節目資訊。
- **Row Height**：表格行高，用來設定表格視圖中每一行的高度。
- **Play Button**：播放按鈕，通常用來觸發影片播放操作。
- **Tint Color**：按鈕或圖片的著色，用來統一 UI 元素的顏色風格。
- **Symbol Configuration**：符號配置，用來調整系統圖標的大小或樣式。
- **System Image**：系統內建圖標，如播放按鈕圖示 `play.circle`。
- **Clip to Bounds**：限制圖片在視圖邊界內顯示，防止圖片溢出單元格。
- **Text Label**：用來顯示影片標題的文字標籤。
- **UITableView Dequeue**：重用表格視圖單元格，減少記憶體消耗與性能開銷。
- **Build and Run**：編譯並執行應用，用來檢查代碼是否正常運行。
- **Default Value**：預設值，用來防止空值錯誤，常用於缺失數據的情況。
- **Auto Layout**：自動佈局系統，根據設置的約束動態調整 UI 元素的大小和位置。
- **Content Mode**：視圖中的圖片縮放模式，例如 `scaleAspectFit` 確保圖片在容器內保持比例。
- **Activate Constraints**：啟用 Auto Layout 約束，確保佈局規則生效。
- **Top search**: 搜尋功能的上層界面，用戶可以在這裡輸入查詢內容或發現熱門內容。
- **Table view**: 表格視圖，常用於顯示一組列表數據的視覺化元件。
- **Discover tab**: 探索頁籤，提供用戶在不輸入查詢時看到的推薦內容。
- **Title table view cell**: 表格視圖單元格，顯示標題內容。
- **Subview**: 子視圖，指視圖層次結構中的子節點。
- **Superview**: 父視圖，包含其他視圖的容器。
- **Delegate**: 委派，用於處理特定行為的對象。
- **Data source**: 資料源，提供表格視圖的數據。
- **UITableViewDelegate**: 表格視圖委派協議，定義表格視圖的交互行為。
- **UITableViewDataSource**: 表格視圖資料源協議，提供表格視圖所需的數據。
- **Guard statement**: 守護語句，用於提前退出不符合條件的代碼。
- **DequeueReusableCell**: 從重用池中提取一個可重用的表格單元格。
- **Identifier**: 標識符，用來標識表格單元格的唯一鍵。
- **IndexPath**: 索引路徑，標識表格視圖中單元格的位置。
- **API caller**: 調用 API 的實例，用於與後端服務通信。
- **Base URL**: 基本 URL，API 的主入口 URL。
- **DispatchQueue.main.async**: 主線程異步操作，確保 UI 更新在主線程執行。
- **Reload data**: 重新加載表格視圖數據。
- **Switch statement**: 分支語句，用於根據不同條件執行不同代碼。
- **Result type**: 結果類型，通常用於表示成功或失敗的回應。
- **TitleViewModel**: 用於封裝標題的模型，包含標題名稱和海報路徑等屬性。
- **Poster path**: 海報路徑，用來加載電影或電視劇的圖片。
- **Height for row**: 行高，用於設置表格視圖中每個單元格的高度。
- **Cocoa Touch Class**: 一種基於 Cocoa Touch 框架的自定義視圖控制器類別。
- **UI Search Controller**: 用於顯示和管理搜尋界面的控制器。
- **Placeholder**: 搜尋欄中的提示文本，幫助用戶了解可以輸入什麼內容。
- **Minimal Style**: 搜尋欄的最小化樣式，背景透明，搜索字段半透明。
- **Navigation Item**: 導航條項目，包含搜尋控制器等元素。
- **Collection View**: 集合視圖，用於顯示一系列自定義的視圖元素。
- **UICollectionViewFlowLayout**: 集合視圖的佈局類，支持水平和垂直滾動。
- **Item Size**: 集合視圖中每個項目的大小。
- **Cell Registration**: 註冊集合視圖單元格以便重用。
- **View Bounds**: 視圖的邊界，定義視圖的大小和位置。
- **Delegate**: 代理，用於處理集合視圖的交互。
- **Data Source**: 資料源，提供集合視圖所需的數據。
- **Guard Statement**: 用於確保條件成立的守護語句，否則提前退出。
- **Reusable Identifier**: 重用標識符，用於識別可重用的單元格。
- **System Background**: 系統預設的背景顏色。
- **Screen Size**: 屏幕尺寸，影響 UI 的顯示和佈局。
- **Minimum Interitem Spacing**: 集合視圖中項目之間的最小間距。
- **Frame**: 視圖的幾何框架，定義視圖的位置和大小。
- **Bounds**: 視圖的邊界，與 frame 相似但基於視圖自身的坐標系。
- **Search with Query**: 以字串查詢進行搜尋的 API 函數。
- **Percent Encoding**: 百分比編碼，用於處理 URL 查詢字串中的特殊字符。
- **URL Host Allowed**: 允許的 URL 主機，指定可以包含的字符集。
- **Update Search Results**: 更新搜尋結果的函數。
- **Trimming Characters**: 去除字串中的多餘空白字符。
- **Search Bar**: 搜尋欄，用於輸入查詢字串。
- **Search Results Controller**: 搜尋結果控制器，用於顯示搜尋結果。
- **Delegate**: 委派，用於處理搜尋控制器的結果更新。
- **API Caller**: 調用 API 的類別，發送請求並處理回應。
- **DispatchQueue.main.async**: 主線程異步操作，確保 UI 更新在主線程進行。
- **Switch Statement**: 分支語句，用於處理 API 請求的成功或失敗情況。
- **Titles Array**: 包含標題數據的數組，用於顯示搜尋結果。
- **Collection View**: 集合視圖，用於顯示搜尋結果的視覺化呈現。
- **Public Access**: 公開訪問，用於允許其他類別訪問屬性或方法。
- **Configure Cell**: 配置單元格，用於顯示特定數據。
- **Optional**: 可選型別，允許變數可能沒有值。
- **Localized Description**: 本地化描述，提供錯誤或狀態的詳細信息。
- **Google Developer Console**: 管理 Google API 和雲端服務的平臺。
- **API Key**: 用來識別使用者的密鑰，授權應用程式存取 Google API。
- **YouTube Data API**: YouTube 的資料 API，允許存取 YouTube 上的內容、影片資訊等。
- **Create Project**: 在 Google 開發者控制臺中建立專案，為 API 存取提供特定範圍。
- **Enable API**: 啟用 API 服務，使應用能存取特定 Google API。
- **Search Query**: 搜尋查詢字串，用來過濾 API 回應的內容。
- **Percent Encoding**: 百分比編碼，用來處理 URL 中的特殊字符，如空白被轉換成 %20。
- **API Caller**: 呼叫 API 的類別，用來發送 API 請求並處理回應。
- **Static Constant**: 靜態常數，通常用來儲存不變的資料，如 API URL 和 API 密鑰。
- **Completion Handler**: 完成處理器，用於非同步呼叫中處理成功或失敗的回應。
- **JSON Serialization**: JSON 序列化，將 JSON 資料轉換成 Swift 可用的物件。
- **URL Allowed Characters**: 允許在 URL 中使用的字符集。
- **Guard Statement**: 保護語句，用來驗證條件是否成立，若不成立則中斷流程。
- **DispatchQueue.main.async**: 異步操作，確保 UI 更新在主線程中執行。
- **Task**: 任務，用來進行非同步的 HTTP 請求。
- **Error Handling**: 錯誤處理，檢查 API 請求中的錯誤並做出對應處理。
- **HTTP GET Request**: HTTP GET 請求，用來從伺服器獲取資料。
- **Fragments Allowed**: JSON 解析選項，允許部分 JSON 結構。
- **URL Query String**: URL 中的查詢字串，通常包含搜尋字詞和 API 密鑰。
- **Print**: 在 Swift 中用來輸出訊息至控制台的函數，用於調試。
- **Key Parameter**: URL 中的關鍵參數，通常代表 API 密鑰。
- **Collection View Cell**: 集合視圖中的單元格，用來顯示資料項目。
- **Deselect Item**: 取消選擇，避免保留先前的選中狀態。
- **Index Path**: 位置標識，表示集合視圖或表格視圖中的項目位置。
- **Title Name**: 標題名稱，用於識別和顯示內容。
- **API Caller**: 負責發送 API 請求和處理回應的類別。
- **Trailer**: 預告片，用來顯示影片的預覽。
- **Video ID**: 影片識別碼，用於唯一標識 YouTube 影片。
- **Print**: 輸出資料至控制台，通常用於調試和檢查回應。
- **Success Case**: 成功情況，處理成功返回的資料。
- **Error Case**: 錯誤情況，處理 API 請求中的錯誤。
- **YouTube Video**: YouTube 上的影片，用於展示或播放影片內容。
- **WKWebView**: 用來嵌入網頁內容的視圖元件。
- **UILabel**: 用來顯示單行或多行文本的視圖元件。
- **UIButton**: 可互動的按鈕，用於執行特定操作。
- **Auto Layout**: 用於建立視圖元件的佈局約束，以確保在不同裝置上保持一致的顯示。
- **Autoresizing Mask**: 將視圖元件的大小與父視圖自動調整的屬性。
- **Top Anchor**: 視圖的頂部對齊約束。
- **Leading Anchor**: 視圖的左側對齊約束。
- **Trailing Anchor**: 視圖的右側對齊約束。
- **Height Anchor**: 設定視圖元件的高度。
- **NSLayoutConstraint**: 用於設定 Auto Layout 約束的類別。
- **System Font**: 系統預設字體，可調整字體大小和字重。
- **Bold Weight**: 粗體字重，增強文本的可見性。
- **Number of Lines**: 設定 UILabel 可顯示的行數，設為 0 表示不限制行數。
- **Text Color**: 控制 UILabel 或 UIButton 的文本顏色。
- **Set Title**: 為 UIButton 設定顯示的文字。
- **Set Background Color**: 設定視圖元件的背景顏色。
- **Corner Radius**: 設定視圖或按鈕的圓角效果。
- **Clips to Bounds**: 控制視圖的內容是否被邊界裁剪。
- **URLRequest**: 發起網路請求所需的類別，內含 URL 等參數。
- **Embed URL**: YouTube 的嵌入影片 URL，嵌入指定的影片。
- **View Model**: 用於將數據與視圖綁定的模型，分離邏輯與顯示。
- **Center X Anchor**: 將視圖在水平方向居中對齊的約束。
- **Text Alignment**: 設定文本的對齊方式，如居中、左對齊、右對齊。
- **View Controller**: 控制應用程序視圖邏輯的類別。
- **System Background**: 系統預設的背景顏色，會隨著主題變化調整。
- **Protocol**: 一種定義方法、屬性及其他需求的介面，供不同類別遵循。
- **AnyObject**: Swift 中用來代表任何類型的類別實例的通用型別。
- **Delegate**: 設計模式，用來在兩個物件間傳遞訊息或回調。
- **Weak Variable (weak var)**: 弱引用，避免強參考循環（retain cycle）導致記憶體洩漏。
- **didSelectItemAt**: Collection View 中選取某個項目時調用的回調方法。
- **IndexPath**: 表示在 Collection View 或 Table View 中的索引路徑。
- **Guard Let**: 用來安全地解開選項型別，當條件不符合時提前返回。
- **Self**: 引用當前類別或實例。
- **DispatchQueue.main.async**: 確保代碼在主線程上執行，通常用於更新 UI。
- **Optional Binding**: 解包選項型別的值時使用的技術，以確保代碼安全。
- **Strong Reference**: 強引用，用來保證物件的生命週期。
- **Navigation Controller**: 控制視圖之間的導航與切換。
- **Push ViewController**: 將新的視圖控制器推入導航堆疊，實現畫面轉換。
- **Async (非同步)**: 確保不阻塞主線程進行非同步操作。
- **Completion Handler**: 一個閉包，通常用來在某個操作結束後執行特定邏輯。
- **Row**: 表示 Collection View 或 Table View 中的行號。
- **DispatchQueue**: 用來管理佇列中的執行工作，主線程專門負責處理 UI 更新。
- **Main Thread**: App 的主線程，負責處理所有的 UI 操作。
- **Extension**: 用來擴展現有類別或協議的功能，不需修改原始碼。
- **Push Animation**: 在導航控制器中，當新視圖控制器進入時產生的動畫效果。
- **UITableViewCell**: 用於 Table View 的單元格，顯示單行數據。
- **UICollectionViewCell**: 用於 Collection View 的單元格，顯示數據項目。
- **Trailing Anchor**: 控制視圖右邊界的 Auto Layout 約束。
- **Delegate Pattern**: 常用設計模式，用來將任務委派給另一個物件執行。
- **Optional**: Swift 中表示變量可以有值或無值的型別，避免 null pointer exceptions。
- **Header View**: 顯示在視圖的頂部，用來展示標題或主要資訊的視圖。
- **Private Variable**: 只在定義它的範圍內可見的變量。
- **Optional**: 允許變量持有 `nil` 的型別，表示它可以沒有值。
- **Hero Header View**: 特殊的標題視圖，通常用於顯示主要的視覺元素或重點內容。
- **Configure**: 設定或初始化物件的狀態或內容。
- **API Call**: 向伺服器發送請求以取得數據的操作。
- **Get Request**: 向伺服器請求數據的 HTTP 請求方法。
- **Switch Case**: 用於根據不同情況執行不同代碼塊的控制結構。
- **Success Case**: 處理 API 請求成功時的情況。
- **Failure Case**: 處理 API 請求失敗時的情況。
- **Weak Reference**: 參考物件的方式，避免循環引用（retain cycles）導致記憶體洩漏。
- **Completion Handler**: 請求完成後執行的閉包或函數。
- **Configure With Model**: 使用模型對象來配置或初始化視圖的函數。
- **Poster URL**: 影像的網路地址，用來顯示在 UI 上。
- **SDWebImage**: 用於異步下載和快取圖像的庫。
- **Random Element**: 從集合中隨機選擇一個元素。
- **Optional Self**: 在閉包中引用 `self` 時避免強引用循環。
- **View Model**: 用來管理視圖數據和業務邏輯的對象。
- **Hero Image View**: 顯示主圖像或重要內容的視圖組件。
- **Hero Header View Configuration**: 設定或初始化主圖像視圖的過程。
- **Build and Run**: 編譯並執行應用程序的過程。
- **Table Deselect Row At**: 使選中的表格行在指定的索引路徑下取消選擇。
- **Guard Let**: 用來安全地解包選擇性變量的語法，如果解包失敗則退出函數。
- **API Caller**: 用來發送網路請求並接收回應的對象。
- **Title Preview View Model**: 用來展示電影標題的視圖模型。
- **Weak Self**: 防止在閉包中造成強引用循環的自我引用。
- **Title Name**: 電影標題的名稱。
- **Push View Controller**: 將新的視圖控制器推入導航堆疊中。
- **Dispatch Queue**: 用於處理異步任務的隊列，確保 UI 更新在主線程上執行。
- **Search Results View Controller Delegate**: 定義處理搜尋結果選擇的代理協議。
- **Search Results View Controller Did Tab Item**: 處理搜尋結果視圖控制器中的項目被點擊的代理方法。
- **UI Context Menu Configuration**: 定義上下文菜單的配置，用於展示和處理上下文菜單行為。
- **UI Action**: 上下文菜單中的一個操作。
- **Download Action**: 上下文菜單中的下載操作。
- **Context Menu**: 顯示可用操作的上下文菜單，通常通過長按觸發。
- **Core Data**: iOS 的持久化存儲框架，用於管理應用程序的數據模型和數據持久化。
- **Long Press Gesture**: 用戶長按屏幕以觸發特定操作或菜單的手勢。
- **Print Statement**: 用於在控制台輸出信息的調試語句。
- **Core Data**：蘋果提供的一個框架，用於管理本地資料的持久性存儲。
- **AppDelegate**：應用程式的主要入口點，負責應用啟動、關閉及其他全局操作。
- **Persistent Container**：Core Data的核心部分，負責管理資料模型與保存資料的操作。
- **Save Context**：將已變更的資料保存到Persistent Store中。
- **Entity**：Core Data中的資料模型相當於數據庫的表格。
- **Attribute**：資料模型中的屬性，對應數據庫表格中的欄位。
- **Managed Object Context**：管理資料對象的上下文，負責跟蹤資料變化及與Persistent Store進行溝通。
- **Data Model**：資料結構定義，包含Entity與其Attribute。
- **Title Item**：專案中的一個Entity，表示電影或節目的資料。
- **Completion Handler**：一個異步操作完成後執行的閉包。
- **Result**：Swift中的一個枚舉，用來表示操作成功或失敗。
- **Static**：宣告一個靜態屬性，表示該屬性屬於類別，而不是實例。
- **Guard**：一個條件判斷語句，用於提前退出函式或流程。
- **Do-Catch**：Swift中處理拋出異常的結構，Do段中可能會拋出錯誤，Catch段處理錯誤。
- **Localized Description**：錯誤物件的本地化描述，通常是簡化的錯誤訊息。
- **Escaping Closure**：允許閉包在函式結束後繼續執行的語法。
- **View Context**：Core Data的上下文，用來處理操作資料物件的行為。
- **NSManagedObject**：Core Data中的資料物件，表示Entity的實例。
- **Type Casting**：將一個變數轉換為另一個類型。
- **Model**：資料結構或類別，用來描述應用程式中的資料。
- **Case Sensitive**：大小寫敏感，表示字母大小寫會影響結果。
- **Context Manager**：負責管理資料存取上下文的物件，通常指Managed Object Context。
- **Enum**：枚舉，表示一組相關聯的值或狀態。
- **Double**：一個表示浮點數的資料型別，用於存儲小數點數字。
- **Core Data**: 一個用於蘋果平台的持久化框架，用於存儲和管理應用程序的數據模型。
- **Persistent Container**: Core Data 的容器，負責管理持久化數據的上下文和數據庫。
- **Save Context**: 保存 Core Data 中數據的上下文，以便將變更保存到持久化存儲。
- **Data Model**: 描述數據結構的模型，用於定義 Core Data 中的實體及其屬性。
- **Entity**: Core Data 中的一個數據模型對象，通常對應於應用程序中的一個實體或數據表。
- **Attributes**: 定義 Core Data 實體中字段或屬性的名稱和數據類型。
- **NSFetchRequest**: 用於從 Core Data 中檢索數據的請求對象。
- **Context Manager**: 管理 Core Data 上下文的對象，負責插入、刪除和檢索數據。
- **App Delegate**: 應用程序的代理對象，負責處理應用的生命週期事件，並初始化 Core Data。
- **Table View**: 用於顯示和管理行數據的視圖組件。
- **Delegate**: 用於處理 Table View 交互的對象，實現了 `UITableViewDelegate` 協議。
- **Data Source**: 提供 Table View 所需數據的對象，實現了 `UITableViewDataSource` 協議。
- **Completion Handler**: 用於在異步操作完成後執行的回調函數。
- **Result**: Swift 的一種泛型，用於表示操作成功或失敗的結果。
- **Void**: 一種表示沒有返回值的數據類型。
- **Enum**: 枚舉，定義一組具名的常量。
- **NSManagedObject**: Core Data 中的基本數據對象，所有數據模型對象都繼承自這個類。
- **Delete**: 刪除數據的操作，從 Core Data 中移除指定對象。
- **Fetch Request**: 用於檢索 Core Data 中的數據請求。
- **Do-Catch Block**: 用於處理可能拋出異常的代碼區塊。
- **Dispatch Queue**: 用於處理異步任務的調度隊列。
- **Main Thread**: 主線程，負責更新 UI 和處理用戶交互的線程。
- **Table View Cell**: Table View 中的一個單元格，用於顯示單行數據。
- **Index Path**: 表示 Table View 中行位置的對象。
- **Remove**: 從數組中刪除元素的操作。
- **Build**: 編譯應用程序的過程，生成可執行文件。
- **Run**: 執行編譯後的應用程序。
- **Synchronize**: 將數據保持一致的過程，通常指在不同的存儲或操作中。
- **Error Handling**: 處理錯誤的過程，以確保應用程序穩定運行。
- **Notification Center**: 在 Swift 中的一個類別，用於在應用程式內部發送和接收通知，不涉及設備上的通知中心。
- **NSNotificationName**: 用於標識發送的通知名稱，通常在 `NotificationCenter` 中用於識別通知類型。
- **postNotification**: 用於發送通知的方法，可以將通知發送給所有註冊了該通知的觀察者。
- **addObserver**: 用於註冊通知的觀察者，指定要監聽的通知名稱和處理方法。
- **fetchLocalStorage**: 用於從本地存儲中獲取數據的方法，通常在接收到通知後調用以更新顯示內容。
- **weak reference**: 在 Swift 中，避免強參考循環的參考類型，防止內存泄漏。
- **build and run**: 編譯和運行應用程式的過程，用於測試代碼更改是否生效。
- **didSelectRowAt**: `UITableView` 的方法，用於處理用戶選擇某一行時的操作。
- **view controller**: 控制顯示內容和處理用戶交互的類別。
- **preview controller**: 顯示內容詳細信息的視圖控制器，通常用於顯示選擇的項目的更多資訊。
- **observer pattern**: 設計模式之一，用於在對象狀態改變時通知所有註冊的觀察者。
