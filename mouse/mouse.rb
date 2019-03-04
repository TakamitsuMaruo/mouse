require_relative "mouse.so"
module Mouse_
  module_function
  M_L_DOWN = 2 #マウス左ボタンが押されるとき
  M_L_RELEASE = 4 #マウス左ボタンが離されるとき
  M_R_DOWN = 8 #マウス右ボタンが押されるとき
  M_R_RELEASE = 16 #マウス右ボタンが離されるとき

  def is_cursor_moving?(arg=0.001)
    #マウスカーソルが移動しているか調べるメソッドです.
    #引数は移動しているか調べる間隔で,指定がなければ0.001秒ごとに調べています.
    before = [getCursorPosX,getCursorPosY]
    sleep arg
    if(((getCursorPosX-before[0]).abs) > 0)||(((getCursorPosY-before[1]).abs) > 0)
      return true
    else
      return false
    end
  end

  def getCursorPosX
    #マウスカーソルのX座標を取得するメソッドです.
    Mouse.new.getCursorXPos
  end

  def getCursorPosY
    #マウスカーソルのY座標を取得するメソッドです.
    Mouse.new.getCursorYPos
  end

  def setCursorPos(x_pos,y_pos)
    #マウスカーソルの座標を変更するメソッドです.
    #第一引数がX座標,第二引数がY座標です.
    Mouse.new.setCursorPos(x_pos,y_pos)
  end

  def sendMouseEvent(key_mouse)
    #マウスの左右ボタンの仮想キーを出力するメソッドです.
    #仮想キーコードは定数として定義してあります
    Mouse.new.mouseKeyEvent(key_mouse)
  end

  def getKeyState(key)
    #指定されたキーの状態を取得するメソッドです.
    #戻り値は,押されていないときに0,押されているときはそれ以外です.
    Mouse.new.getKeyState(key)
  end
end
include Mouse_
