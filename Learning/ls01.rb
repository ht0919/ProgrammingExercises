# _*_ coding: cp932 _*_
class Island
    def initialize()
        s = gets.chomp.split(" ")
        @col =  s[0].to_i
        @row =  s[1].to_i
        @board = Array.new(@row).map{Array.new(@col,0)}
    end
    def setBoard()
        @row.times {|i|
            s = gets.chomp.split(" ")
            @col.times {|j|
                @board[i][j] = s[j].to_i
            }
        }
    end
    def labeling()
        label = 2
        @row.times {|i|
            @col.times {|j|
                if @board[i][j] == 1 then
                    list = Array.new
                    # 上      左横
                    [[0,-1], [-1,0]].each {|x,y|
                        #next if !(0..(@row-1)).include?(i+y) ||
                        #    !(0..(@col-1)).include?(j+x)
                        next if (i+y)<0 || (j+x)<0
                        if @board[i+y][j+x] > 1 then
                            list << @board[i+y][j+x]
                        end
                    }
                    if list.length == 0 then
                        @board[i][j] = label
                        label += 1
                    else
                        @board[i][j] = list.min
                    end
                end
            }
        }
    end
    def cat_x()
        flg = false
        @row.times {|i|
            @col.times {|j|
                # 横方向の連結
                if @board[i][j] > 1 then
                    list = Array.new
                    k = j
                    while k < @col && @board[i][k] > 1 do
                        list << @board[i][k]
                        k += 1
                    end
                    k = j
                    min = list.min
                    while k < @col && @board[i][k] > 1 do
                        if @board[i][k] != min then
                            @board[i][k] = min
                            flg = true
                        end
                        k += 1
                    end
                    if k < @col then
                        j = k
                    else
                        j = @col
                    end
                end
            }
        }
        return flg
    end
    def cat_y()
        flg = false
        @col.times {|j|
            @row.times {|i|
                # 縦方向の連結
                if @board[i][j] > 1 then
                    list = Array.new
                    k = i
                    while k < @row && @board[k][j] > 1 do
                        list << @board[k][j]
                        k += 1
                    end
                    k = i
                    min = list.min
                    while k < @row && @board[k][j] > 1 do
                        if @board[k][j] != min then
                            @board[k][j] = min
                            flg = true
                        end
                        k += 1
                    end
                    if k < @row then
                        i = k
                    else
                        i = @row
                    end
                end
            }
        }
        return flg
    end
    def catBoard()
        while true do
            flg_x = cat_x()
            flg_y = cat_y()
            if flg_x == false && flg_y == false then
                break
            end
        end
    end
    def getBoard()
        hash = Hash.new()
        @row.times {|i|
            @col.times {|j|
                if @board[i][j] != 0 then
                    if !hash.key?(@board[i][j]) then
                        hash[@board[i][j]] = 1
                    else
                        hash[@board[i][j]] += 1
                    end
                end
            }
        }
        puts hash.length
    end
end

b = Island.new()
b.setBoard()
b.labeling()
b.catBoard()
b.getBoard()
