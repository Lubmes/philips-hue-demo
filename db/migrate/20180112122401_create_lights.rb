class CreateLights < ActiveRecord::Migration[5.1]
  def change
    create_table :lights do |t|
      t.string  :name
      t.integer :hue
      t.integer :brightness
      t.integer :saturation
      t.integer :color_temperature
      t.integer :transistion_time
      t.boolean :on
      t.integer :row
      t.integer :column

      t.timestamps
    end
  end
end
