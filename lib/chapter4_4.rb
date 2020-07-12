numbers= [1,2,3,4,5,6]

# mapメソッドは各要素に対してブロックを評価した結果を新しい配列にして返す
new_numbers = numbers.map { |n| n * 10}
puts new_numbers


# selectメソッドは戻り値が真の要素を集めた配列を返す
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

# rejectメソッドは偽の要素を返す
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiples_of_three


# findメソッドは真になった最初の要素だけを返す
even_number = numbers.find { |n| n.even? }
puts even_number

# injectメソッドはたたみ演算を行うメソッド
sum = numbers.inject(0) { |result, n| result + n }
puts sum

day = ['Mon','Tue','Wed','Thu','Fri','Sat'].inject('Sun') { |result,n| result + n }
puts day


# ＆とシンボルで簡潔に書き換えられる
script = ['ruby','java','perl'].map { |n| n.upcase }
puts script

script = ['ruby','java','perl'].map(&:upcase)
puts script

numbers_2 = [1,2,3,4,5,6].select(&:odd?)
puts numbers_2