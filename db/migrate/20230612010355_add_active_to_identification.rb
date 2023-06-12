class AddActiveToIdentification < ActiveRecord::Migration[7.0]
  def change
    add_column :identifications, :active, :boolean, default: true
  end
end
