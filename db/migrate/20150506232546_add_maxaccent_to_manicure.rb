class AddMaxaccentToManicure < ActiveRecord::Migration
  def change
    add_column :manicures, :maxaccent, :integer
  end
end
