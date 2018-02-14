class CreateShips < ActiveRecord::Migration[4.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :type
      t.string :booty
      t.integer :pirate_id
    end
  end
end
