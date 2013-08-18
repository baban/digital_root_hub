# encoding: utf-8

class CreateGenerettaColLabels < ActiveRecord::Migration
  def change
    create_table :generetta_col_labels do |t|
      t.integer :generetta_context_id, null: false
      t.string  :label, null: false
      t.timestamps
    end
  end
end
