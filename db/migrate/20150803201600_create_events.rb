class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :title
      t.datetime :start_date
      t.datetime :end_date
      t.time :start_time
      t.time :end_time
      t.text :address
      t.text :description
      t.string :cost
      t.string :lat
      t.string :long
      t.string :city
      t.text :image_url

      t.timestamps null: false
    end
  end
end
