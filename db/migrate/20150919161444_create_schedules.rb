class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :support, index: true, foreign_key: true
      t.date :dateshedule
      t.string :vacation

      t.timestamps null: false
    end
  end
end
