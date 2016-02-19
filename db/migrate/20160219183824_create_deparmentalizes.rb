class CreateDeparmentalizes < ActiveRecord::Migration
  def change
    create_table :deparmentalizes do |t|
      t.references :department, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
