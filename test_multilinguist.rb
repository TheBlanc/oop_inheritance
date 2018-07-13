require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'


class TestMultilinguist < MiniTest::Test

  def test_language_in
    kevin = Multilinguist.new
    assert_equal('en', kevin.language_in('canada'))
    assert_equal('es', kevin.language_in('mexico'))
    assert_equal('pt', kevin.language_in('portugal'))
    assert_equal('zh', kevin.language_in('china'))
    assert_equal('hi', kevin.language_in('india'))
  end



end
