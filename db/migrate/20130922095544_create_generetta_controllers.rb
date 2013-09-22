class CreateGenerettaControllers < ActiveRecord::Migration
  def change
    create_table :generetta_controllers do |t|
      t.string  :description,        null: false, default: ""
      t.timestamps
    end
  end
end
