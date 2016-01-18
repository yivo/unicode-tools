module UnicodeTools
  # http://unicode.org/charts/uca/
  WHITESPACE_CHARS = %w( \u0009-\u000D \u0085 \u2028 \u2029​​
                         \u0020 \u3000 \u1680 \u2000-\u200A
                         \u205F \u00A0 \u202F \u180E )

  WHITESPACE_REGEX             = /[#{WHITESPACE_CHARS.join('')}]+/
  LEADING_WHITESPACE_REGEX     = /\A#{WHITESPACE_REGEX.source}+/
  TRAILING_WHITESPACE_REGEX    = /#{WHITESPACE_REGEX.source}+\z/
  SURROUNDING_WHITESPACE_REGEX = /(\A#{WHITESPACE_REGEX.source})|(#{WHITESPACE_REGEX.source}\z)/

  class << self
    def has_whitespace?(string)
      !!(string =~ WHITESPACE_REGEX)
    end

    #
    # string = "\f\n\r\t\v​\u00A0\u1680​\u180e\u2000​\u2001\u2002​\u2003\u2004​\u2005\u2006​\u2007\u2008​\u2009\u200a​\u2028\u2029​\u2028\u2029​\u202f\u205f​\u3000"
    # string.trim => ""
    #
    def trim(string)
      string.gsub(SURROUNDING_WHITESPACE_REGEX, '')
    end

    def trim!(string)
      string.gsub!(SURROUNDING_WHITESPACE_REGEX, '')
    end

    def replace_whitespace(string, replacement = nil, &block)
      string.gsub(WHITESPACE_REGEX, replacement, &block)
    end

    def replace_whitespace!(string, replacement = nil, &block)
      string.gsub!(WHITESPACE_REGEX, replacement, &block)
    end
  end
end