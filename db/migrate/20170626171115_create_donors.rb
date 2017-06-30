class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :age
      t.string :weight
      t.string :disease
      t.string :operation
      t.string :tattoo
      t.string :pregnancy
      t.string :sex
      t.string :vaccine
      t.string :hepatitis
      t.string :result

      t.timestamps null: false
    end
  end
end
