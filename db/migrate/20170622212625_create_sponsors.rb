class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :state
      t.string :city
      t.string :organization

      t.timestamps null: false
    end
  end
end
