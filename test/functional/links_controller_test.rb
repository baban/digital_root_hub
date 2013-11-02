require 'test_helper'

class LinksControllerTest < MiniTest::Unit::TestCase
  fixtures :all

  describe "aaa" do
    setup do
      p :before
    end

    test "the truth" do
      assert false
    end

    after do
      p :after
    end
  end
  test "the truth" do
    assert true
  end
end
