# -*- coding: utf-8 -*-
class Site < ActiveRecord::Base
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, :status, :memo
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, :status, :memo, as: :admin
  validates :media_id, presence: true

  scope :visibles, ->{  }

  def self.media_ids
    Media.all.map{ |o| [o.name,o.id] }
  end

  def self.statuses
    %W"公開中 閉鎖 閉鎖疑"
  end
  
  def media
    Media.find_by_id(self.media_id)
  end
end
