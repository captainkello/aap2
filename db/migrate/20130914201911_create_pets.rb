class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
