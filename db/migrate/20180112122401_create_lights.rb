class CreateLights < ActiveRecord::Migration[5.1]
  def change
    create_table :lights do |t|
      t.string  :name
      t.integer :hue
      t.integer :color_temperature
      t.integer :transistion_time
      t.boolean :on

      t.timestamps
    end
  end
end
