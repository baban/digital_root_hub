class Author < ActiveRecord::Base
  attr_accessible :name, :name_kana
  has_many :sites
end
