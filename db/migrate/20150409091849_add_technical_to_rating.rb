class AddTechnicalToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :techinical, :string
  end
end
