class Site < ActiveRecord::Base
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at
  attr_accessible :author_id, :href, :title, :media_id, :publiced_at, :closed_at, as: :admin
  validates :media_id, presence: true

  def self.media_ids
    Media.all.map{ |o| [o.name,o.id] }
  end
end
