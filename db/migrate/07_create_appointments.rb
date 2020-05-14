class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
<<<<<<< HEAD
      t.integer :doctor_id
=======
      t.integer :doctor_id 
>>>>>>> pull_branch
      t.date :date
    end
  end
end
