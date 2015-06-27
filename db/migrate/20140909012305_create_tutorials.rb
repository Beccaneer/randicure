class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :author
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
