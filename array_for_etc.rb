# frozen_string_literal: true

# a = [1, 'apple', 3.14, 4, 'banana']
# pp a
# pp a.size #=> 5
# pp a[0] #=> 1

# b = [1, 2, 3]
# pp b #=> [1, 2, 3]
# b[5] = 6
# pp b #=> [1, 2, 3, nil, nil, 6]

# c = [1, 2, 3]
# c << 4
# pp c #=> [1, 2, 3, 4]
# c.delete_at(1)
# pp c #=> [1, 3, 4]

# a, b = [1, 2]
# pp a, b #=> 1, 2

# numbers = [1, 2, 3, 4, 5]
# sum = 0
# numbers.each do |n|
#   sum += n
# end
# pp sum #=> 15

# d = [1, 2, 3, 1, 2, 3]
# d.delete(2)
# pp d #=> [1, 3, 1, 3]

# e = [1, 2, 3, 1, 2, 3]
# e.delete_if do |n|
#   n.odd?
# end
# pp e #=> [2, 2]

# f = [1, 2, 3, 1, 2, 3]
# sum = 0
# f.each { |n| sum += n }
# pp sum #=> 12

# g = [1, 2, 3, 4, 5]
# h = g.map { |n| n * 10 }
# pp h #=> [10, 20, 30, 40, 50]

# i = [1, 2, 3, 4, 5, 6]
# j = i.select { |n| n.odd? }
# j = i.select(&:odd?) # これでも同じ
# pp j #=> [1, 3, 5]

# k = i.reject { |n| n.odd? }
# pp k #=> [2, 4, 6]

# l = i.find { |n| n.odd? }
# pp l #=> 1

# m = i.inject(0) { |result, n| result + n }
# pp m #=> 21

# range = 1..5
# pp range.include?(5) #=> true
# pp range.include?(6) #=> false

# range2 = 1...5
# pp range2.include?(5) #=> false
# pp range2.include?(4) #=> true
# pp range2.include?(4.9) #=> true

def liquid?(temperature)
  (0...100).include?(temperature)
end
pp liquid?(-1) #=> false
pp liquid?(0) #=> true
pp liquid?(99) #=> true
pp liquid?(100) #=> false
