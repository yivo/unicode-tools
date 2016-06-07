# frozen_string_literal: true
require 'unicode-tools/whitespace'
require 'unicode-tools/string_ext/base'
require 'unicode-tools/string_ext/trim'
require 'unicode-tools/string_ext/squish'
require 'unicode-tools/bidi'

String.include(UnicodeTools::StringExt::Base)
String.include(UnicodeTools::StringExt::Trim)
String.include(UnicodeTools::StringExt::Squish)
