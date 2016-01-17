module UnicodeTools
  module Trim
    def trim
      gsub(SURROUNDING_WHITESPACE_REGEX, '')
    end

    def trim!
      gsub!(SURROUNDING_WHITESPACE_REGEX, '')
    end

    def ltrim
      gsub(LEADING_WHITESPACE_REGEX, '')
    end

    def ltrim!
      gsub!(LEADING_WHITESPACE_REGEX, '')
    end

    def rtrim
      gsub(TRAILING_WHITESPACE_REGEX, '')
    end

    def rtrim!
      gsub!(TRAILING_WHITESPACE_REGEX, '')
    end
  end
end