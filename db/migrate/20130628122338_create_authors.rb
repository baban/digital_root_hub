class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name,      null: false
      t.string :name_kana, null: true

      t.timestamps
    end
  end
end
