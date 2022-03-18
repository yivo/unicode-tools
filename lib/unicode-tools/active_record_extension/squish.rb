# encoding: utf-8
# frozen_string_literal: true

module UnicodeTools
  module ActiveRecordExtension
    module Squish
      def squish(*attributes)
        extension = Module.new

        attributes.each do |attribute|
          extension.class_eval <<-RUBY, __FILE__, __LINE__ + 1
            def #{attribute}=(value)
              super(String === value ? value.squish.presence : value)
            end
          RUBY
        end

        include extension

        nil
      end
    end
  end
end
