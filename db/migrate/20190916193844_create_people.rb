class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.float :weight
      t.string :gender
      t.float :height
      t.string :name
      t.integer :age
      t.string :email

      t.timestamps
    end
  end
end
