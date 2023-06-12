class AddUserIdToIdentications < ActiveRecord::Migration[7.0]
  def change
    add_column :identifications, :user_id, :integer
  end
end
