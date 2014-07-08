class ModifyUsers < ActiveRecord::Migration
  def change
  	add_column :users, :permission, :boolean
  end
end
