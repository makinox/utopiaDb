class CreateSubjectUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_users do |t|
      t.integer :subject_id
      t.integer :user_id
    end
  end
end
