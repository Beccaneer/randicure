class AddUserRefToColour < ActiveRecord::Migration
  def change
    add_reference :colours, :user, index: true
  end
end
