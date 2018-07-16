require "word_wrap_limiter/version"

module WordWrapLimiter
  def self.wrap(string, column_length)
    return string if string.length <= column_length
    break_point = string[0...column_length].rindex(' ') || column_length
    if has_space?(string, column_length)
      string[0...break_point] + "\n" + wrap(string[break_point + 1..-1], column_length)
    else
      string[0...break_point] + "\n" + wrap(string[break_point..-1], column_length)
    end
  end

  private

  def self.has_space?(string, column_length)
    string[0...column_length].index(' ') != nil || string[column_length] == " "
  end
end
