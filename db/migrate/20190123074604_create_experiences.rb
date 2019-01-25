class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :role
      t.string :start_date
      t.string :end_date
      t.string :location
      t.text :body

      t.timestamps
    end
  end
end
