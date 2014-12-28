# -*- coding: utf-8 -*-
def search_x(n1,x)
# puts "search_x n1=#{n1},x=#{x}" #####
    stack = []
    i = n1
    begin
# puts "i=#{i}" #####
        # 見つかったら戻る
        if i==x || $line[i].index(x) != nil then
# puts "true" #####
            return true
        end
        # 残りデータ無しでスタックが空なら終了
        if $line[i].length == 0 && stack.length == 0 then
            break
        end

        # 残りデータ有りならスタックに格納
        if $line[i].length > 0 then
            top = 0
            $line[i].each { |n|
                if top == 0 then
                    top = n
                else
                    stack.push n
# print "push "
# p stack #####
                end
            }
            i = top
        else
            # スタック有りなら取り出し
            if stack.length>0 then
# print "pop "
# p stack #####
                i = stack.pop
            end
        end
    end while true
# puts "fales" #####
    return false
end

tmp = gets.chomp.split(/ /)
n = tmp[0].to_i
k = tmp[1].to_i
x = tmp[2].to_i

$line = Array.new(n+1) { Array.new() }
k.times {
    tmp = gets.chomp.split(/ /)
    a = tmp[0].to_i
    b = tmp[1].to_i
    $line[a] << b
}
# p $line #####

cnt = 0
$line[1].each { |e|
    if e == x || search_x(e,x) == true then
        cnt += 1
    end
}
puts cnt
