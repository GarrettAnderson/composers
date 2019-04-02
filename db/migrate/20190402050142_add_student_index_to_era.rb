class AddStudentIndexToEra < ActiveRecord::Migration[5.2]
  def change
    add_reference :composers, :eras, foreign_key: true
  end
end
