# encoding: utf-8

class CreateGenerettaRowLabels < ActiveRecord::Migration
  def change
    create_table :generetta_row_labels do |t|
      t.integer :generetta_context_id, null: false
      t.string  :label, null: false
      t.timestamps
    end
  end
end
