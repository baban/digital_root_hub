class AddIndexLinks < ActiveRecord::Migration
  def up
    add_index    :authors, :name_kana
  end

  def down
    remove_index :authors, :name_kana
  end
end
