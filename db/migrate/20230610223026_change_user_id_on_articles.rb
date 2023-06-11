class ChangeUserIdOnArticles < ActiveRecord::Migration[7.0]
  def change
    change_column :articles, :user_id, :integer
  end
end
