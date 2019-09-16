class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :type_meal
      t.datetime :day_time
      t.float :weigth_meal
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
