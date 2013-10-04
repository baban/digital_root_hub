class AdminOperationLog < ActiveRecord::Base
  attr_accessible :admin_user_id, :operation
  def parent
    Struct.new(:to_label).new(self.parent_id)
  end
end
