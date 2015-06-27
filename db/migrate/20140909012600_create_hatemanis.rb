class CreateHatemanis < ActiveRecord::Migration
  def change
    create_table :hatemanis do |t|
      t.integer :techid
      t.integer :colourid

      t.timestamps
    end
  end
end
