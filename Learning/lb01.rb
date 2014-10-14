class Sobaya
    def initialize(n)
        @seat = Array.new(n).fill(0)
    end
    def chkSeat(a,b)
        a.times {|i|
            n = (b-1+i) % @seat.length
            if @seat[n] != 0 then
                return false
            end
        }
        return true
    end
    def setSeat(a,b)
        a.times {|i|
            n = (b-1+i) % @seat.length
            @seat[n] = 1
        }
    end
    def getSeat()
        return @seat.count {|n| n == 1}
    end
end

s = gets.chomp.split(" ")
n = Sobaya.new(s[0].to_i)
m = s[1].to_i
m.times{
    s = gets.chomp.split(" ")
    a = s[0].to_i
    b = s[1].to_i
    if n.chkSeat(a,b) then
        n.setSeat(a,b)
    end
}
puts n.getSeat
