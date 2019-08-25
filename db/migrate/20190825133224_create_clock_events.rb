class CreateClockEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :clock_events do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.integer :status
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
