class CreateGenerettaContexts < ActiveRecord::Migration
  def change
    create_table :generetta_contexts do |t|
      t.integer :generetta_method_id, null: false
      t.string  :description,         null: false, default: ""
      t.timestamps
    end
  end
end
