# Daily Stack
 小学生（中学年程度）〜中学生を対象としたSNSサービス。
 * 日々学習したことのアウトプット投稿機能
 * フォロー機能、いいね機能、お気に入り機能、コメント機能 etc  
   
 首都・地方関係なく、全国の同級生の多様な価値観や考え方にふれ、  
 新しい「発見」や「チャレンジ」のきっかけの場を作りたかった。

 制作者の８年間の岩手県庁勤務経験から、
 地方の「閉鎖的なコミュニティ」や「首都部との情報格差」に課題を感じ
 このアプリの作成に至った。

# DEMO
 ![dailystackDEMO](https://user-images.githubusercontent.com/63894532/83947485-2af97e80-a852-11ea-9f3f-a9b7b06e8dff.gif)
 
# Features
 制作にあたり、利用者が楽しくサービスを利用できるよう以下の点を意識した。  

 ### 直感的な操作 
  * 利用者がストレス無く利用できるよう、直感的な操作ができるよう心がけた。  
 ### プロフィール要素の実装
  * 制作者が中学生の頃、「前略プロフィール」なるものが大ブレイクしたため、  
    要素の一部（プロフィール機能）を取り入れてみた。  
 ### いいね、お気に入り要素の実装 
  * 「いいね」をした、しないでトラブルが発生しないよう（既読無視のような…）、  
    いいね機能とは別に「お気に入り（ブックマーク）機能」を実装した。  
    なお、お気に入り機能について、された人数は把握できるが、個人の特定は不可な仕様としている。  
 ### 個人情報への配慮  
  * 出会い系サイトのような利用を回避するため、  
    DM等１対１でのコミュニケーション機能を実装していない。  
  * また、本人が特定できる写真や名前を投稿しないよう、サービス内で喚起している。

 ### 今後実装したいこと(より利用に楽しんでいただけるように…)
  * 投稿についてタグ検索のようなものを実装してみたい。
  * 掲示板のような場を設けて、同じ趣味や勉強をしている人たちが意見交換し合える場を作りたい。
  * デザインの勉強をして、もっとカッコいいビューに仕上げたい。

# DataBase
  <img width="909" alt="ER" src="https://user-images.githubusercontent.com/63894532/83958761-7e021e80-a8b0-11ea-94df-b4661d5d48a7.png">
 
# Requirement
 * ruby 2.5.8
 * Rails 5.0.7.2
 * mysql2 0.5.3
 
# Application
[DaylyStackへのリンク](https://dailystack.herokuapp.com/)
##### ログイン情報
- メールアドレス… a@a
- パスワード… aaaaaaaa( a が８コ)
 
# Author 
 * 佐々木希望（男）
 * s.no.19930712@gmail.com

  大変お忙しい中、拙いREADMEを読んでいただきましたこと感謝申し上げます。

 
