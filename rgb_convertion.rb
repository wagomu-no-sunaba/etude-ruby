# frozen_string_literal: true

def to_hex(red, green, blue)
  hex = '#'
  [red, green, blue].each do |n|
    hex += n.to_s(16).rjust(2, '0')
  end
  hex
end

