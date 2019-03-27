class CreateComposers < ActiveRecord::Migration[5.2]
  def change
    create_table :composers do |t|
      t.string :name
      t.string :famous_piece
      t.integer :era_id
      t.date :birth_date
      t.date :death_date
      t.text :description

      t.timestamps
    end
  end
end
