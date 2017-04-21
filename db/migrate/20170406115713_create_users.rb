class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :first_name
      t.string :last_name
      t.string :status
      t.string :email
      t.string :is_student
      t.string :is_teacher
      t.string :is_management
      t.string :is_admin

      t.timestamps
    end
  end
end
