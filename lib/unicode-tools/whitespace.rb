module UnicodeTools
  # http://unicode.org/charts/uca/
  WHITESPACE_CHARS = %w( \u0009-\u000D \u0085 \u2028 \u2029
                         \u0020 \u3000 \u1680 \u2000-\u200A
                         \u205F \u00A0 \u202F \u180E )

  WHITESPACE_REGEX             = /[#{WHITESPACE_CHARS.join('')}]+/
  LEADING_WHITESPACE_REGEX     = /\A#{WHITESPACE_REGEX.source}+/
  TRAILING_WHITESPACE_REGEX    = /#{WHITESPACE_REGEX.source}+\z/
  SURROUNDING_WHITESPACE_REGEX = /(\A#{WHITESPACE_REGEX.source})|(#{WHITESPACE_REGEX.source}\z)/

  class << self
    def trim(string)
      string.gsub SURROUNDING_WHITESPACE_REGEX, ''
    end

    def trim!(string)
      string.gsub! SURROUNDING_WHITESPACE_REGEX, ''
    end

    def replace_whitespace!(string, replacement = nil, &block)
      string.gsub!(WHITESPACE_REGEX, replacement, &block)
    end
  end
end