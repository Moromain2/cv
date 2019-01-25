class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :title
      t.string :rating
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
