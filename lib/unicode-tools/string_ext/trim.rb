# frozen_string_literal: true
module UnicodeTools
  module StringExt
    module Squish

      # string = "\f\n\r\t\v​\u00A0\u1680​\u180e\u2000​
      #           \u2001\u2002​\u2003\u2004​\u2005\u2006​
      #           \u2007\u2008​\u2009\u200a​\u2028\u2029
      #           ​\u2028\u2029​\u202f\u205f​\u3000"
      # string.trim => ""
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
end
