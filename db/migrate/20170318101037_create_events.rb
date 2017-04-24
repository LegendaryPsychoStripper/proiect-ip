class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :seats
      t.datetime :start
      t.datetime :end
      t.string :color
      t.string :user_id

      t.timestamps
    end
  end
end
