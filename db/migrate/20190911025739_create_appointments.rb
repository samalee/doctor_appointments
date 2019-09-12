class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :physician
      t.string :patient
      t.string :when

      t.timestamps
    end
  end
end
