class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :title
      t.integer :value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
