class AddMinaccentToManicure < ActiveRecord::Migration
  def change
    add_column :manicures, :minaccent, :integer
  end
end
