class AddResponsableToRatings < ActiveRecord::Migration[5.1]
  def change
    add_column :ratings, :responsable, :string
  end
end
