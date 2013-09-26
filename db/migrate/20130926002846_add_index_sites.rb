class AddIndexSites < ActiveRecord::Migration
  def up
    add_index    :sites, :author_id
  end

  def down
    remove_index :sites, :author_id
  end
end
