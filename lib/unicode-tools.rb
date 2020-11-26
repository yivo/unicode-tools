# encoding: utf-8
# frozen_string_literal: true

# Override ActiveSupport's String#squish.
begin
  require 'active_support/core_ext/string'
rescue LoadError
  nil
end

require 'unicode-tools/whitespace'
require 'unicode-tools/string_extension/base'
require 'unicode-tools/string_extension/trim'
require 'unicode-tools/string_extension/squish'
require 'unicode-tools/active_record_extension/squish'
require 'unicode-tools/bidi'

class String
  include UnicodeTools::StringExtension::Base
  include UnicodeTools::StringExtension::Trim
  include UnicodeTools::StringExtension::Squish
end

begin
  require 'active_model'
  require 'active_support/lazy_load_hooks'

  ActiveModel.extend UnicodeTools::ActiveRecordExtension::Squish
  ActiveSupport.on_load(:active_record) { ActiveRecord::Base.extend UnicodeTools::ActiveRecordExtension::Squish }
rescue LoadError
  nil
end
