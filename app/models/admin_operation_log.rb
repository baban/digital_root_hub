class AdminOperationLog < ActiveRecord::Base
  attr_accessible :admin_user_id, :operation
end
