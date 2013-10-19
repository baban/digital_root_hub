class AddColumnAuthorsToCategoryId < ActiveRecord::Migration
  def up
    add_column    :authors, :category_id, :integer, null: false, default: 0
  end
  def down
    remove_column :authors, :category_id
  end
end
