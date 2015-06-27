class CreateColours < ActiveRecord::Migration
  def change
    create_table :colours do |t|
      t.string :brandname
      t.string :productname
      t.string :colourname
      t.string :hexcode

      t.timestamps
    end
  end
end
