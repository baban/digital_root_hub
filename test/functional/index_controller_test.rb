require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  describe "aaa" do
    setup do
      p :before
    end

    test "the truth" do
      assert true
    end

    after do
      p :after
    end
  end
  test "the truth" do
    assert true
  end
end
