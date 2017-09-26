class AddMenuIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :menu_id, :integer
  end
end
