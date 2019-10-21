class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :text
      t.integer :from_scene_id
      t.integer :to_scene_id
    end
  end
end
