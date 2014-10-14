def search(color,row,col,dr,dc)
    r = row; c = col
    flag = false
    begin
        r += dr; c += dc
        if $board[r][c] != " " && $board[r][c] != color then flag = true end
        if $board[r][c] == color && flag == true then return true end
    end while ($board[r][c] != " ") && (r>0 && r<9) && (c>0 && c<9)
    return false
end
def reverse(color,row,col,dr,dc)
    r = row; c = col
    begin
        r += dr; c += dc
        if $board[r][c] == color then break end
        if $board[r][c] != " " && $board[r][c] != color then $board[r][c] = color end
    end while ($board[r][c] != " ") && (r>0 && r<9) && (c>0 && c<9)
end
def set (color,row,col)
    $board[row][col] = color
    $stbl.length.times { |i|
        if search(color,row,col,$stbl[i][1],$stbl[i][0]) == true then
            reverse(color,row,col,$stbl[i][1],$stbl[i][0])
        end
    }
end
def count(color)
    n = 0
    $board.length.times {|i|
        $board[i].length.times {|j|
            if $board[i][j] == color then n+=1 end
        }
    }
    return n
end
$board = Array.new(10) {Array.new(10){" "}}
$board[4][4] = "W"
$board[4][5] = "B"
$board[5][4] = "B"
$board[5][5] = "W"
$stbl = [[0,-1],[1,-1],[1,0],[1,1],[0,1],[-1,1],[-1,0],[-1,-1]]

lines = gets.to_i
lines.times {
    s = gets.chomp.split(/ /)
    set(s[0],s[2].to_i,s[1].to_i)
}
b = count("B")
w = count("W")
printf("%02d-%02d ",b,w)
if    b > w then puts "The black won!"
elsif b < w then puts "The white won!"
else             puts "Draw!" end
