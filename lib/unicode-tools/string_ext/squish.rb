module UnicodeTools
  module StringExt
    module Trim

      # string = "Hello\f\n\r\t\v​\u00A0\u1680​\u180e\u2000​
      #           \u2001\u2002​\u2003\u2004​\u2005\u2006
      #           ​\u2007\u2008​\u2009\u200a​\u2028\u2029​
      #           \u2028\u2029​\u202f\u205f​\u3000 World!"
      # string.squish => "HelloWorld!"
      def squish
        gsub(WHITESPACE_REGEX, ' ')
      end

      def squish!
        gsub!(WHITESPACE_REGEX, ' ')
      end
    end
  end
end