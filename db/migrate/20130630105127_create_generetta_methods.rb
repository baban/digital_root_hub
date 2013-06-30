class CreateGenerettaMethods < ActiveRecord::Migration
  def change
    create_table :generetta_methods do |t|
      t.integer :generetta_model_id, null: false
      t.string  :description,        null: false, default: ""
      t.timestamps
    end
  end
end
