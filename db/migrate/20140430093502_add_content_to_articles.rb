class AddContentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :content, :text_field
  end
end
