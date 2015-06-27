class AddColourFamilyToColours < ActiveRecord::Migration
  def change
    add_column :colours, :colourfam, :string
    add_column :colours, :string, :string
  end
end
