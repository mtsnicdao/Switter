class AddSourColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sour, :integer
  end
end
