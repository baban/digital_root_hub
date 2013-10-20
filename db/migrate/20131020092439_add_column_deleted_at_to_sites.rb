class AddColumnDeletedAtToSites < ActiveRecord::Migration
  def up
    add_column    :sites, :deleted_at, :datetime, null: true
  end
  def down
    remove_column :sites, :deleted_at
  end
end
