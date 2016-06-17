class AddEventsTable < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :start_time
      t.time :end_time
      t.string :venue
      t.text :details
      t.binary :rsvp
    end
  end
end
