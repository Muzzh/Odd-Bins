class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :producer
      t.integer :year
      t.string :grapes
      t.text :description
      t.timestamps
    end
  end
end
