# -*- coding: cp932 -*-
# ���̓f�[�^�̌������
tmp = gets.chomp.split(/ /)
num1 = tmp[0].to_i
num2 = tmp[1].to_i
# 1���Ԗ��̉w�̗��p�Ґ������
users = Array.new(num1)
num1.times { |i|
    users[i] = gets.chomp.to_i
}
# �w�莞�ԑт̗��p�Ґ����v�Z
num2.times {
    tmp = gets.chomp.split(/ /)
    s = tmp[0].to_i - 1
    d = tmp[1].to_i - 1
    puts users[s..d].inject(:+)
}
