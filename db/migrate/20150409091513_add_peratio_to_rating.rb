class AddPeratioToRating < ActiveRecord::Migration
  def change
    add_column :ratings, :pe_ratio, :float
  end
end
