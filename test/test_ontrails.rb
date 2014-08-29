require 'test/unit'
require 'ontrails'

class OntrailsTest < Test::Unit::TestCase
  def test_english_hello
    assert_equal "hello world", Ontrails.hi("english")
  end

  def test_any_hello
    assert_equal "hello world", Ontrails.hi("ruby")
  end

  def test_spanish_hello
    assert_equal "hola mundo", Ontrails.hi("spanish")
  end

end
