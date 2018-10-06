class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user
      t.string :identity
      t.integer :age
      t.string :rol
      t.string :grade
      t.references :entity, foreign_key: true

      t.timestamps
    end
  end
end
