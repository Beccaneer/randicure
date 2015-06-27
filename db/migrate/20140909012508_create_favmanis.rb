class CreateFavmanis < ActiveRecord::Migration
  def change
    create_table :favmanis do |t|
      t.string :label
      t.integer :numcol
      t.integer :numaccents
      t.integer :techid
      t.integer :colourid
      t.integer :accents

      t.timestamps
    end
  end
end
