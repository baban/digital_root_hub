class AddColumnToSites < ActiveRecord::Migration
  def up
    add_column    :sites, :publiced, :boolean, null: false, default: true
    add_column    :sites, :status,   :integer, null: false, default: 0
    add_column    :sites, :memo,     :text,    null: true
  end
  def down
    remove_column :sites, :publiced
    remove_column :sites, :status
    remove_column :sites, :memo
  end
end
