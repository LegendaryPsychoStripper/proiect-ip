class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
    	t.string :is_going
    	t.string :is_interested
		t.string :event_id
		t.string :user_id

      t.timestamps
    end
  end
end
