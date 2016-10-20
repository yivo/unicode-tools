# encoding: utf-8
# frozen_string_literal: true

# Override ActiveSupport's String#squish
begin
  require 'active_support/core_ext/string'
rescue LoadError
end

require 'unicode-tools/whitespace'
require 'unicode-tools/string_ext/base'
require 'unicode-tools/string_ext/trim'
require 'unicode-tools/string_ext/squish'
require 'unicode-tools/bidi'

class String
  include UnicodeTools::StringExt::Base
  include UnicodeTools::StringExt::Trim
  include UnicodeTools::StringExt::Squish
end
