# -*- coding: utf-8 -*-
require 'test_helper'

class MediaTest < ActiveSupport::TestCase
  fixtures :all

  test "メディアの名前が取得できる" do
    assert_equal Media.first.name, "サイト"
  end
end
