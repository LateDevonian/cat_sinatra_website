class CreateCat < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :colour
      t.integer :weight_kgs
      t.string :temperament
    end
  end
end
