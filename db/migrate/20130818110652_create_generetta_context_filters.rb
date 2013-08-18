# encoding: utf-8

class CreateGenerettaContextFilters < ActiveRecord::Migration
  def change
    create_table :generetta_context_filters do |t|
      t.integer :generetta_context_id, null: false
      t.string  :description,          null: true
      t.text    :content,              null: true
      t.timestamps
    end
  end
end
