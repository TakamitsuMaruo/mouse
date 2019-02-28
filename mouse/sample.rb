require_relative "mouse"
start = Time.now
mode = 0
route = []
time = 5
loop do
  case mode
  when 0
    route << [getCursorPosX,getCursorPosY]
    mode += 1 if Time.now - start >= time
  when 1
    for i in 0...route.length
      setCursorPos(route[i][0],route[i][1])
    end
    exit if i == route.length - 1
  end
end

