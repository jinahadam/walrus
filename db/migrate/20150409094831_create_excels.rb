class CreateExcels < ActiveRecord::Migration
  def change
    create_table :excels do |t|
      t.string :media
      t.string :file_name

      t.timestamps null: false
    end
  end
end
