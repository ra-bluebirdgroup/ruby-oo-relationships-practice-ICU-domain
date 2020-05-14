class CreateNurses < ActiveRecord::Migration[5.2]
  def change
    create_table :nurses do |t|
      t.string :name
      t.string :expertise
      
    end
  end
end
