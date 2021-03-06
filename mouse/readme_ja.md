# ライブラリ本体
## 名称  
`mouse.rb` 

## 概要  
`windows.h`のマウス(カーソル)にかかわる機能をRubyでもほぼ同じように実行できるようにした拡張ライブラリです。  
**32bitでの利用を想定しています**。そのため**64bitの環境では動作しません**。  

## 利用方法  
`require "(mouse.rbの相対or絶対パス)/mouse"`  or  `require "./mouse"`  

or  

(ソースコードが`mouse.rb`と同じディレクトリにある場合)`require_relative "mouse"`  

## 注意  
必ず`mouse.so`と同じディレクトリに配置してください。  

# サンプルソース
## 名称  
`sample.rb` (サンプルソース)

## 概要  
`time`(秒単位)の間だけマウスカーソルの動きを記録、そののち軌跡をたどります。

## 利用方法  
`time`の値をいじって実行。  
マウスを自由に動かして動きをお楽しみください。

## 注意
遊びで作ったプログラムです。**実用性は皆無です**。  

## 作者  
丸尾孝光  
    Twitter:[@schumit_t](https://twitter.com/schumit_t)  
    GitHub:[@TakamitsuMaruo](https://github.com/TakamitsuMaruo)  
    Qiita:[@Schumitt](https://qiita.com/Schmitt)  

ライセンスに則ってご自由にご利用ください。
バグ報告などは上記のどれかのアカウントへお願いします。(Twitterが最も気づきやすいです。)
