# encoding: utf-8
# frozen_string_literal: true

module UnicodeTools
  # http://unicode.org/charts/uca/
  WHITESPACE_CHARS = %w( \u0009-\u000D \u0085 \u2028 \u2029​​
                         \u0020 \u3000 \u1680 \u2000-\u200A
                         \u205F \u00A0 \u202F \u180E ).freeze

  WHITESPACE_REGEX             = /[#{WHITESPACE_CHARS.join('')}]+/.freeze
  LEADING_WHITESPACE_REGEX     = /\A#{WHITESPACE_REGEX.source}+/.freeze
  TRAILING_WHITESPACE_REGEX    = /#{WHITESPACE_REGEX.source}+\z/.freeze
  SURROUNDING_WHITESPACE_REGEX = /(\A#{WHITESPACE_REGEX.source})|(#{WHITESPACE_REGEX.source}\z)/.freeze

  class << self
    def has_whitespace?(string)
      string.has_whitespace?
    end

    def trim(string)
      string.trim
    end

    def trim!(string)
      string.trim!
    end

    def squish(string)
      string.squish
    end

    def squish!(string)
      string.squish!
    end

    def replace_whitespace(string, replacement = nil, &block)
      string.replace_whitespace(replacement, &block)
    end

    def replace_whitespace!(string, replacement = nil, &block)
      string.replace_whitespace!(replacement, &block)
    end
  end
end
