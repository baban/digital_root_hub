class CreateAdminOperationLogs < ActiveRecord::Migration
  def change
    create_table :admin_operation_logs do |t|
      t.string  :parent_type,   null: false
      t.integer :parent_id,     null: false
      t.integer :admin_user_id, null: false
      t.string  :operation,     null: true
      t.timestamps
    end
  end
end
