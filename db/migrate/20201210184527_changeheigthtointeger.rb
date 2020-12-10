class Changeheigthtointeger < ActiveRecord::Migration[5.2]
  def change
    change_column :pet_histories, :heigth, :integer
  end
end
