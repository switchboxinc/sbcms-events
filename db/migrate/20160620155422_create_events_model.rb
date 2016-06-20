class CreateEventsModel < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :title
      t.time :start_time
      t.time :end_time
      t.string :venue
      t.text :details
      t.binary :rsvp

      t.timestamps
    end
  end
end
