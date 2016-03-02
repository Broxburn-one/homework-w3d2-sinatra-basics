require('minitest/autorun')
require_relative('../models/wordformatter')

class TestWordformatter < Minitest::Test
  def setup
    @wordformatter = Wordformatter.new()
  end

  def test_to_upcase
    assert_equal('E13 ZQF', @wordformatter.to_upcase('e13 zqf'))
  end

  def test_to_camelcase
    assert_equal('CodeClan', @wordformatter.to_camelcase('code clan'))
  end





end