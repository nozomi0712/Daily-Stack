# Daily Stack
 小学生（中学年程度）〜中学生を対象としたSNSサービス。
 * 日々学習したことのアウトプット投稿機能
 * フォロー機能、いいね機能、コメント機能 etc  
   
 上記の機能を通じ、地理的条件（首都・地方）関係なく、  
 全国の同級生の多様な価値観や考え方にふれ、  
 新しい「発見」を得るきっかけの場を作りたかった。
 
# DEMO
 "hoge"の魅力が直感的に伝えわるデモ動画や図解を載せる
 
# Features
 制作にあたり、利用者が楽しくサービスを利用できるよう以下の点を意識した。  

 ## 直感的な操作 
  * 利用者がストレス無く利用できるよう、直感的な操作ができるよう心がけた。  
 ## プロフィール要素の実装
  * 制作者が中学生の頃、「前略プロフィール」なるものが大ブレイクしたため、  
    要素の一部を取り入れてみた。  
 ## いいね、お気に入り要素の実装 
  * 「いいね」をした、しないでトラブルが発生しないよう、  
    別途お気に入り（ブックマーク）機能を実装した。  
    なお、「お気に入り」された人数は把握できるが、個人の特定は不可な仕様としている。  
 ## 個人情報への配慮  
  * 出会い系サイトのような利用を回避するため、  
    DM等１対１でのコミュニケーション機能を実装していない。  
  * また、本人が特定できる写真や名前を投稿しないよう、サービス内で喚起している。
 
# Requirement
 * ruby 2.5.1
 * Rails 5.0.7.2
 * mysql2 0.5.3
 * devise 4.7.1
 * haml-rails 1.0.0
 * font-awesome-sass 5.4.1
 * carrierwave 2.1.0
 * mini_magick 4.10.1
 
# Installation
```
$ git clone （仮）https://github.com/Noppy/uplogger.git
```
 
# Usage
```
（仮）サイトのURL→デプロイ後に記載
```
 
# Author 
 * 佐々木希望（男）
 * s.no.19930712@gmail.com

  大変お忙しい中、拙いREADMEを読んでいただきましたこと感謝申し上げます。

 
