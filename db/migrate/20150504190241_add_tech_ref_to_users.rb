class AddTechRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :tech, index: true
  end
end
