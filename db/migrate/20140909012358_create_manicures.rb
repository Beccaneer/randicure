class CreateManicures < ActiveRecord::Migration
  def change
    create_table :manicures do |t|
      t.integer :numcol
      t.integer :numaccents
      t.integer :techid
      t.integer :colourid
      t.integer :accents

      t.timestamps
    end
  end
end
