class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :sex
      t.string :height
      t.integer :age
      t.string :hometown

      t.timestamps
    end
  end
end
