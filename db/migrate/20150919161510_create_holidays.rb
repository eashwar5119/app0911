class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :datev

      t.timestamps null: false
    end
  end
end
