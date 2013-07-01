class CreateGenerettaCases < ActiveRecord::Migration
  def change
    create_table :generetta_cases do |t|
      t.integer :generetta_method_id, null: false
      t.string  :description,         null: false
      t.text    :content,             null: true
      t.timestamps
    end
  end
end
