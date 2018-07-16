# frozen_String_literal: true

require 'word_wrap_limiter/version'

module WordWrapLimiter
  def self.wrap(string, width)
    return string if string.length <= width
    break_point = string[0...width].rindex(' ') || width
    if space?(string, width)
      "#{string[0...break_point]}\n#{wrap(string[break_point + 1..-1], width)}"
    else
      "#{string[0...break_point]}\n#{wrap(string[break_point..-1], width)}"
    end
  end

  def self.space?(string, width)
    !string[0...width].index(' ').nil? || string[width] == ' '
  end
end
