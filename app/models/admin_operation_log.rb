class AdminOperationLog < ActiveRecord::Base
  attr_accessible :admin_user_id, :operation

  def self.operations
    self.select("DISTINCT operation").order(:operation).pluck(:operation)
  end

  def self.parent_types
    self.select("DISTINCT parent_type").order(:parent_type).pluck(:parent_type)
  end

  def parent
    Struct.new(:to_label).new(self.parent_id)
  end
end
