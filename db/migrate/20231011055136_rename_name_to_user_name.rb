class RenameNameToUserName < ActiveRecord::Migration[7.0]
  def change
    rename_column :contacts, :name , :user_name 
  end
end
