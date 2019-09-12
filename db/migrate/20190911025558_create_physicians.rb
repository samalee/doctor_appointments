class CreatePhysicians < ActiveRecord::Migration[6.0]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :patients
      t.integer :appointments

      t.timestamps
    end
  end
end
