class MakeSlugNotNullOnPost < ActiveRecord::Migration[8.1]
  def change
    change_column_null :posts, :slug, false
    add_index :posts, :slug, unique: true
  end
end
