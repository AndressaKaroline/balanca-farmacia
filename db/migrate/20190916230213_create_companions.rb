class CreateCompanions < ActiveRecord::Migration[5.2]
  def change
    create_table :companions do |t|
      t.string :name
      t.boolean :nutritionist
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
