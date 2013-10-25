class AddColumnDeletedAtToAuthors < ActiveRecord::Migration
  def up
    add_column    :authors, :deleted_at, :datetime, null: true
  end
  def down
    remove_column :authors, :deleted_at
  end
end
