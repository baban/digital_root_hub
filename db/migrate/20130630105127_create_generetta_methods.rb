class CreateGenerettaMethods < ActiveRecord::Migration
  def change
    create_table :generetta_methods do |t|
      t.integer :parent_id,   null: false
      t.string  :parent_type, null: false
      t.string  :description, null: false, default: ""
      t.timestamps
    end
  end
end
