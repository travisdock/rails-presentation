class CreateCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.string :favorite_toy

      t.timestamps
    end
  end
end
