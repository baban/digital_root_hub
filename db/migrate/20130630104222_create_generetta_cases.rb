class CreateGenerettaCases < ActiveRecord::Migration
  def change
    create_table :generetta_cases do |t|
      t.integer :generetta_method_id, null: false
      t.string  :description
      t.text    :content
      t.timestamps
    end
  end
end
