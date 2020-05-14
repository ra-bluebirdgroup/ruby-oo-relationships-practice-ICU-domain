class CreateIcus < ActiveRecord::Migration[5.2]
  def change
    create_table :icus do |t|
      t.string :name
      t.boolean :ventilator
      t.integer :nurse_id
      t.integer :patient_id
    end
  end
end
