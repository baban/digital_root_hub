class Author < ActiveRecord::Base
  attr_accessible :name, :name_kana
  attr_accessible :name, :name_kana, as: :admin
  has_many :sites
end
