class Site < ActiveRecord::Base
  attr_accessible :href, :title, :media_id, :publiced_at, :closed_at
end
