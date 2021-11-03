class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.string :city
      t.references :user, null: false, foreign_key: true
      t.references :hat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
