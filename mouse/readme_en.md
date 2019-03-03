# RUBY LIBRARY
## Name  
`mouse.rb` (A Ruby expansion library)  
[日本語版(Japanese ver.)](https://github.com/TakamitsuMaruo/mouse/blob/259364bc57e2ad75cbfbb8ea6f65d28ccfade536/mouse/readme_ja.md)の方がより詳細
## Overview  
A Ruby expansion library which adds function about cursor from C header,`windows.h` to Ruby.    

## Usage  
`require "(PATH of mouse.rb)/mouse"`  or  `require "./mouse"`  

or  

(If your source is in same directory with this library)`require_relative "mouse"`  

## Note   
I compiled with GCC which works on 32bit. So **this library works on only 32bit environment**.  
This library includes `windows.h` so **it works only on Windows**.  
Please put `mouse.rb` and `mouse.so` in same directory.

# SAMPLE SOURCE
## Name  
`sample.rb`  

## Overview  
This program records your route of cursor for `time`(variable) seconds,then starts to follow the route.  

## Usage   
`$ ruby sample.rb`  

## Note  
**There's No Practicality**.

## Author  
丸尾孝光(Takamitsu Maruo)  
    Twitter:[@schumit_t](https://twitter.com/schumit_t)  
    GitHub:[@TakamitsuMaruo](https://github.com/TakamitsuMaruo)  
    Qiita:[@Schumitt](https://qiita.com/Schmitt)  

**These codes are available as open source under the terms of the MIT License**.
Bug reports and Pull Requests are welcome on Twitter,GitHub and Qiita.
