class CreateVaccines < ActiveRecord::Migration[5.0]
  def change
    create_table :vaccines do |t|
      t.string :title, null: false
      t.string :timeframe, null:false
      t.text :description, null: false
      t.integer :month, null: false
      t.integer :year, null: false
    end
  end
end
