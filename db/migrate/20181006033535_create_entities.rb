class CreateEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :identity
      t.integer :max
      t.string :responsable
      t.string :pass

      t.timestamps
    end
  end
end
