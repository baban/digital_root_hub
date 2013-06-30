class CreateGenerettaModels < ActiveRecord::Migration
  def change
    create_table :generetta_models do |t|
      t.string  :description,        null: false, default: ""
      t.timestamps
    end
  end
end
