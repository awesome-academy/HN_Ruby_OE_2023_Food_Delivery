class AddSlugToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :slug, :string
    add_index :categories, :slug
  end
end
