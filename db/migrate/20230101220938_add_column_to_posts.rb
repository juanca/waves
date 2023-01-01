class AddColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :reference, :string
  end
end
