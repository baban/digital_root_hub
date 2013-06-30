class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string   :title,       null: false
      t.string   :href,        null: false, length: 512
      t.integer  :author_id,   null: false
      t.integer  :media_id,    null: false
      t.datetime :publiced_at, null: true
      t.datetime :closed_at,   null: true
      t.timestamps
    end
  end
end
