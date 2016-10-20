# encoding: utf-8
# frozen_string_literal: true

require 'unicode-tools'
require 'test/unit'

class UnicodeToolsTest < Test::Unit::TestCase
  def test_trim
    s = ["\f\n\r\t\v​\u00A0\u1680​\u180e\u2000​\u2001",
         "\u2002​\u2003\u2004​\u2005\u2006​\u2007\u2008​",
         "\u2009\u200a​\u2028\u2029​\u2028\u2029​\u202f\u205f​\u3000"].join('')
    assert_equal(s.trim, '')
    assert_equal(UnicodeTools.trim(s), '')
  end

  def test_squish
    s = ["Hello\f\n\r\t\v​\u00A0\u1680​\u180e\u2000​\u2001",
         "\u2002​\u2003\u2004​\u2005\u2006​\u2007\u2008​",
         "\u2009\u200a​\u2028\u2029​\u2028\u2029​\u202f\u205f​\u3000 world!"].join('')
    assert_equal(s.squish, 'Hello world!')
    assert_equal(UnicodeTools.squish(s), 'Hello world!')
  end
end
