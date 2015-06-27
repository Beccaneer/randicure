class CreateTeches < ActiveRecord::Migration
  def change
    create_table :teches do |t|
      t.string :title
      t.integer :mincol
      t.integer :maxcol
      t.integer :minaccents
      t.integer :maxaccents

      t.timestamps
    end
  end
end
