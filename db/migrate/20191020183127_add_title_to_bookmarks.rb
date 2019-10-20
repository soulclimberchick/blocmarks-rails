class AddTitleToBookmarks < ActiveRecord::Migration[5.2]
  def change
    add_column :bookmarks, :title, :string
    add_column :bookmarks, :description, :string
  end
end
