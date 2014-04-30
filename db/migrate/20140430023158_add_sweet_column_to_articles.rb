class AddSweetColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sweet, :integer
  end
end
