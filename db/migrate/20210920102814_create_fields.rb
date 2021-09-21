class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|

      t.string :name
      t.integer :age
      t.string :gender
      t.text :designation
      t.timestamps
    end
  end
end
