# coding: cp932
person = [
    [ "�É� ���Y",   "34��", "�É���" ],
    [ "���É� ���Y", "25��", "���m��" ],
    [ "��� �O�Y",   "19��", "���ꌧ" ]
]

def search (tbl,str)
    tbl.each do |d|
        if d.index(str) then return d end
    end
    return nil
end

p search(person,"�É� ���Y")
p search(person,"�R�c ���Y")
