class AddUserRefToTech < ActiveRecord::Migration
  def change
    add_reference :teches, :user, index: true
  end
end
