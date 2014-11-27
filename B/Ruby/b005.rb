# -*- coding: cp932 -*-
# 入力データの個数を入力
tmp = gets.chomp.split(/ /)
num1 = tmp[0].to_i
num2 = tmp[1].to_i
# 1時間毎の駅の利用者数を入力
users = Array.new(num1)
num1.times { |i|
    users[i] = gets.chomp.to_i
}
# 指定時間帯の利用者数を計算
num2.times {
    tmp = gets.chomp.split(/ /)
    s = tmp[0].to_i - 1
    d = tmp[1].to_i - 1
    puts users[s..d].inject(:+)
}
