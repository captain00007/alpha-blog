class CreateIdentifications < ActiveRecord::Migration[7.0]
  def change
    create_table :identifications do |t|
      t.string :register_number
      t.timestamps
    end
  end
end
