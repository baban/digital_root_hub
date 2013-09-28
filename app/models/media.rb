class Media < ActiveRecord::Base
  attr_accessible :name, :icon_url
  attr_accessible :name, :icon_url, as: :admin
  @@rows = {}
  def self.find_by_id(id)
    @@rows[id.to_i] ||= super(id)
  end
end
