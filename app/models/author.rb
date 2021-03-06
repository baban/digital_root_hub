# -*- coding: utf-8 -*-
class Author < ActiveRecord::Base
  acts_as_paranoid
  attr_accessible :name, :name_kana, :publiced, :memo
  attr_accessible :name, :name_kana, :publiced, :memo, as: :admin
  attr_accessible :name, :name_kana, :publiced, :memo, as: :director
  attr_accessible :name, :name_kana, :publiced, :memo, as: :editor
  
  has_many :sites
  has_many :admin_operation_logs, as: :parent

  validates :name,     presence: true

  scope :visibles, -> { where( publiced: true ) }
  # 作者名(A-Z)で検索する
  scope :alphabets, ->{ where( " name REGEXP ? ", "[0-9a-zA-Z].*" ) }
  # 作者名(あ-ん)で検索する
  scope :kana, ->{ where( " name REGEXP ? ", "[^0-9a-zA-Z].*" ) }
  # 制作団体
  scope :etc_category, ->{ where( category_id: 3..4 ) }

  def self.search( prms )
    rows = self.visibles.includes(:sites)
    rows = case prms[:author_mode].to_i
           when 1; rows.alphabets
           when 2; rows.kana
           when 3; rows.etc_category
           else;   rows
           end
    rows
  end

  def self.category_ids
    %W"静止画 動画 団体 情報系".map.with_index(1).to_a
  end

  def self.author_modes
    ["すべて","A-Z","あ-ん","情報系・団体・その他"].map.with_index.to_a
  end
end
