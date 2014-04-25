class CreateSwits < ActiveRecord::Migration
  def change
    create_table :swits do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
