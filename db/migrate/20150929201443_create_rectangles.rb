class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|
      t.float :width 
      t.float :height
      t.string :color

      t.timestamps null: false
    end
  end
end
