class AddUseridToManicure < ActiveRecord::Migration
  def change
    add_column :manicures, :user_id, :integer
  end
end
