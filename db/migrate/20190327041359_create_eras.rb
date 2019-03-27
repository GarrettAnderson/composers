class CreateEras < ActiveRecord::Migration[5.2]
  def change
    create_table :eras do |t|
      t.string :name
      t.date :date_beg
      t.date :date_end
      t.text :description

      t.timestamps
    end
  end
end
