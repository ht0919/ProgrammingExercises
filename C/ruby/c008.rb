# -*- coding: cp932 -*-
s = gets.chomp.split(" ")
t1 = s[0]
t2 = s[1]
//�^�O�ň͂܂ꂽ�ŒZ��v�̕�����𒊏o
str = gets.chomp.scan(/#{t1}(.*?)#{t2}/)
str.each { |v|
    if v[0].empty? || v[0].nil? then
        puts "<blank>"
    else
        puts v
    end
}
