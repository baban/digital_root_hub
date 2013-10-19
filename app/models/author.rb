# -*- coding: utf-8 -*-
class Author < ActiveRecord::Base
  attr_accessible :name, :name_kana, :publiced, :memo
  attr_accessible :name, :name_kana, :publiced, :memo, as: :admin
  has_many :sites
  has_many :admin_operation_logs, as: :parent

  scope :visibles, -> { where( publiced: true ) }
  # 作者名(A-Z)で検索する
  scope :alphabets, ->( name ){ where( " name like ? ", "%#{name}%" ) }
  # 作者名(あ-ん)で検索する
  scope :kana, ->( name ){ where( " name like ? ", "%#{name}%" ) }

  def self.search( prms )
    rows = self.visibles.includes(:sites)
    rows = case prms[:mode].to_i
           when 1; rows.alphabets
           when 2; rows.kana
           else;   rows
           end
    rows
  end

end
