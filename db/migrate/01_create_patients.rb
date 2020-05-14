class CreatePatients < ActiveRecord::Migration[5.2]
   def change
     create_table :patients do |t|
       t.string :name
       t.integer :age
       t.string :condition
       
     end
   end
 end
