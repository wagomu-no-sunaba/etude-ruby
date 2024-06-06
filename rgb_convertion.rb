# frozen_string_literal: true

def to_hex(red, green, blue)
  '#' +
    red.to_s(16).rjust(2, '0') +
    green.to_s(16).rjust(2, '0') +
    blue.to_s(16).rjust(2, '0')
end

