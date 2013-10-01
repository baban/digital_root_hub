class Author < ActiveRecord::Base
  attr_accessible :name, :name_kana, :publiced, :memo
  attr_accessible :name, :name_kana, :publiced, :memo, as: :admin
  has_many :sites

  scope :visibles, -> {where( publiced: true ) }
end
