# 不等号の場合
def liquid?(temperature)
	0 <= temperature && temperature < 100
end
# 範囲オブジェクトの場合
def liquid?(temperature)
	(0...100).include?(temperature)
end

 puts liquid?(-1)  #false
 puts liquid?(99)  #true
 puts liquid?(100)  #false


def charge(age)
	case age
	when 0..5
		0
	when 6..12
		300
	when 13..18
		600
	else
		1000
	end
end
puts charge(3)
puts charge(16)
puts charge(26)

puts (1..7).to_a
puts [*1..4]

# 配列にしなくてもできる
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
puts sum