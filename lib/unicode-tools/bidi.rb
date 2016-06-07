# frozen_string_literal: true
module UnicodeTools
  BIDI_OVERRIDE_CHARS_REGEX = /\u00E2\u0080[\u008E\u008F\u00AA-\u00AE]/

  class << self
    def has_bidi_override?(string)
      !!(string =~ BIDI_OVERRIDE_CHARS_REGEX)
    end

    def strip_bidi_override_chars(string)
      string.gsub(BIDI_OVERRIDE_CHARS_REGEX, '')
    end

    def strip_bidi_override_chars!(string)
      string.gsub!(BIDI_OVERRIDE_CHARS_REGEX, '')
    end
  end
end
