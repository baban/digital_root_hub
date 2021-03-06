# -*- coding: utf-8 -*-
class Site < ActiveRecord::Base
  acts_as_paranoid
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, :status, :memo
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, :status, :memo, as: :admin
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, :status, :memo, as: :director
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, :status, :memo, as: :editor

  has_many :admin_operation_logs, as: :parent

  validates :author_id, presence: true
  validates :media_id,  presence: true
  validates :title,     presence: true

  scope :visibles, ->( now = Time.now){ scoped.where( " publiced_at IS NULL OR publiced_at < ? ", now ).where( " closed_at IS NULL OR ? < closed_at ", now ) }
  scope :categorize, ->( status_id ) { where( status: status_id ) }

  def self.media_ids
    Media.all.map { |o| [o.name,o.id] }
  end

  def self.statuses
    %W"公開中 閉鎖 閉鎖疑".map.with_index.to_a
  end
  
  def media
    Media.find_by_id(self.media_id)
  end
end
