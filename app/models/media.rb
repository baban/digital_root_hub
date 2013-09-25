class Media < ActiveRecord::Base
  attr_accessible :name, :icon_url
  attr_accessible :name, :icon_url, as: :admin
end
