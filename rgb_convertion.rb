# frozen_string_literal: true

def to_hex(red, green, blue)
  # ['B', 'C', 'D'].sum('A') #=> 'ABCD'
  [red, green, blue].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]

  ints = []
  [r, g, b].each do |s|
    ints << s.hex
  end
  ints
end
