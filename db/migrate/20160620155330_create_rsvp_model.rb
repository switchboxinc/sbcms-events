class CreateRsvpModel < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :full_name
      t.string :email_address
      t.string :phone_number
      t.integer :event_id

      t.timestamps
    end
  end
end
