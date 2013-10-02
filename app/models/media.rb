class Media < ActiveRecord::Base
  attr_accessible :name, :icon_url
  attr_accessible :name, :icon_url, as: :admin
  has_many :admin_operation_logs, as: :parent
  @@rows = {}
  def self.find_by_id(id)
    @@rows[id.to_i] ||= super(id)
  end
end
