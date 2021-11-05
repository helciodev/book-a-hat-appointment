class CreateHats < ActiveRecord::Migration[6.1]
  def change
    create_table :hats do |t|
      t.string :brand
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
