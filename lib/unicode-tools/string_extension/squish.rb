# encoding: utf-8
# frozen_string_literal: true

module UnicodeTools
  module StringExtension
    module Squish

      # Removes leading, trailing whitespace and
      # collapses remaining whitespace into one group each.
      #
      # string = " Hello\f\n\r\t\v​\u00A0\u1680​\u180e\u2000​
      #           \u2001\u2002​\u2003\u2004​\u2005\u2006
      #           ​\u2007\u2008​\u2009\u200a​\u2028\u2029​
      #           \u2028\u2029​\u202f\u205f​\u3000 World! "
      # string.squish => "Hello World!"
      def squish
        dup.squish!
      end

      def squish!
        return self if empty?
        gsub!(SURROUNDING_WHITESPACE_REGEXP, '')
        gsub!(WHITESPACE_REGEXP, ' ')
        self
      end
    end
  end
end
