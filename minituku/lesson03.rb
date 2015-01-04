# coding: cp932
person = [
    [ "静岡 太郎",   "34歳", "静岡県" ],
    [ "名古屋 次郎", "25歳", "愛知県" ],
    [ "大津 三郎",   "19歳", "滋賀県" ]
]

def search (tbl,str)
    tbl.each do |d|
        if d.index(str) then return d end
    end
    return nil
end

p search(person,"静岡 太郎")
p search(person,"山田 太郎")
