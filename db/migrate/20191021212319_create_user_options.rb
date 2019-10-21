class CreateUserOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :useroptions do |t|
      t.integer :user_id
      t.integer :option_id 
    end
  end
end
