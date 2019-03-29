class FixErasDates < ActiveRecord::Migration[5.2]
  def change
    remove_column :eras, :date_beg
    add_column :eras, :date_beg, :integer

    remove_column :eras, :date_end
    add_column :eras, :date_end, :integer
  end
end
