class CreateSweets < ActiveRecord::Migration
  def change
    create_table :sweets do |t|
      t.string :author
      t.integer :article_id

      t.timestamps
    end
  end
end
