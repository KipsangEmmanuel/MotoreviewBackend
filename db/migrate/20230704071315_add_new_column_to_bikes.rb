class AddNewColumnToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :image, :string
  end
end
