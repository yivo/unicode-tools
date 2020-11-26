# encoding: utf-8
# frozen_string_literal: true

module UnicodeTools
  BIDI_OVERRIDE_CHARACTERS_REGEXP = /\u00E2\u0080[\u008E\u008F\u00AA-\u00AE]/.freeze

  class << self
    def has_bidi_override?(string)
      !!(string =~ BIDI_OVERRIDE_CHARACTERS_REGEXP)
    end

    def strip_bidi_override_characters(string)
      string.gsub(BIDI_OVERRIDE_CHARACTERS_REGEXP, '')
    end

    def strip_bidi_override_characters!(string)
      string.gsub!(BIDI_OVERRIDE_CHARACTERS_REGEXP, '')
    end
  end
end
