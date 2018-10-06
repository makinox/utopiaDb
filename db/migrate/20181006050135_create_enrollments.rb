class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.references :users, foreign_key: true
      t.references :subjects, foreign_key: true
    end
  end
end
