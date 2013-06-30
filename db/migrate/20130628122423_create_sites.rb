class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title, null: false
      t.string :href,  null: false, length: 512

      t.timestamps
    end
  end
end
