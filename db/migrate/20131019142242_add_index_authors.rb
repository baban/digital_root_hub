class AddIndexAuthors < ActiveRecord::Migration
  def up
    add_index    :authors, :category_id
  end

  def down
    remove_index :authors, :category_id
  end
end
