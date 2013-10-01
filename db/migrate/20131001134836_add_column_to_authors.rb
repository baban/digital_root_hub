class AddColumnToAuthors < ActiveRecord::Migration
  def up
    add_column    :authors, :publiced, :boolean, null: false, default: true
    add_column    :authors, :memo,     :text,    null: true
  end
  def down
    remove_column :authors, :publiced
    remove_column :authors, :memo
  end
end
