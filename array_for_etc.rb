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

# def liquid?(temperature)
#   (0...100).include?(temperature)
# end
# pp liquid?(-1) #=> false
# pp liquid?(0) #=> true
# pp liquid?(99) #=> true
# pp liquid?(100) #=> false

# caseと組み合わせても使える
# def charge(age)
#   case age
#   when 0..5
#     0
#   when 6..12
#     300
#   when 13..18
#     600
#   else
#     1000
#   end
# end

# a = (1..5).to_a
# a = [*1..5] # これでも同じ
# pp a #=> [1, 2, 3, 4, 5]

# a = (1..5).to_a
# pp a[1..3] #=> [2, 3, 4]
# pp a.values_at(0, 2, 4) #=> [1, 3, 5]
# pp a[2, 3] #=> [3, 4, 5]
# pp a[-1] #=> 5
# pp a[-2, 2] #=> [4, 5]
# pp a.last #=> 5
# pp a.last(2) #=> [4, 5]
# pp a.first #=> 1
# pp a.first(2) #=> [1, 2]

# a[-5] = 10
# pp a #=> [10, 2, 3, 4, 5]
# これはエラーになる
# a[-6] = 0 # index -6 too small for array; minimum: -5 (IndexError)

# a = (1..3).to_a
# b = (3..5).to_a
# require 'set'
# a = Set[1, 2, 3]
# b = Set[3, 4, 5]
# pp a | b #=> [1, 2, 3, 4, 5]
# pp a - b #=> [1, 2]
# pp a & b #=> [3]

# a,*b = (1..5).to_a
# pp a #=> 1
# pp b #=> [2, 3, 4, 5]

# a = []
# b = [2, 3]
# a.push(1)
# pp a #=> [1]
# a.push(*b)
# pp a #=> [1, 2, 3]

a = Array.new(5, 'Hello')
pp a #=> [1, 1, 1, 1, 1]
a[1] = 'World'
pp a
