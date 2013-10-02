class Author < ActiveRecord::Base
  attr_accessible :name, :name_kana, :publiced, :memo
  attr_accessible :name, :name_kana, :publiced, :memo, as: :admin
  has_many :sites
  has_many :admin_operation_logs, as: :parent

  scope :visibles, -> {where( publiced: true ) }
end
