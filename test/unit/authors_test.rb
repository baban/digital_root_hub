# -*- coding: utf-8 -*-
require 'test_helper'

class AuthorsTest < ActiveSupport::TestCase
  describe ".category_ids" do
    test "サイズが想定通り" do
      assert_equal Author.category_ids.size, 4
    end

    test "中身は名前とIDのペア" do
      assert_equal Author.category_ids.first, 2
    end

    test "ペアの最初の値はString" do
      assert_kind_of String, Author.category_ids.first.first
    end

    test "ペアの最後の値はInt" do
      assert_kind_of Integer, Author.category_ids.first.last
    end
  end
end
