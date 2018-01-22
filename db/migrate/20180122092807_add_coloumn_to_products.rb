class AddColoumnToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :total, :string
  end
end
