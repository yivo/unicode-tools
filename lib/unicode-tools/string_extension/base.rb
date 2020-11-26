# encoding: utf-8
# frozen_string_literal: true

module UnicodeTools
  module StringExtension
    module Base
      def has_whitespace?
        !!(self =~ WHITESPACE_REGEXP)
      end

      def replace_whitespace(replacement = nil, &block)
        gsub(WHITESPACE_REGEXP, replacement, &block)
      end

      def replace_whitespace!(replacement = nil, &block)
        gsub!(WHITESPACE_REGEXP, replacement, &block)
      end
    end
  end
end
