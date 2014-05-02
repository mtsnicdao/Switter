class CreateDoortags < ActiveRecord::Migration
  def change
    create_table :doortags do |t|
      t.integer :article_id
      t.string :tag

      t.timestamps
    end
  end
end
