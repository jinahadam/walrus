class CreateRatingXls < ActiveRecord::Migration
  def change
    create_table :rating_xls do |t|
      t.string :file_name

      t.timestamps null: false
    end
  end
end
