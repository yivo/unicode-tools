module UnicodeTools
  module StringExt
    module Base
      def has_whitespace?
        !!(self =~ WHITESPACE_REGEX)
      end

      def replace_whitespace(replacement = nil, &block)
        gsub(WHITESPACE_REGEX, replacement, &block)
      end

      def replace_whitespace!(replacement = nil, &block)
        gsub!(WHITESPACE_REGEX, replacement, &block)
      end
    end
  end
end