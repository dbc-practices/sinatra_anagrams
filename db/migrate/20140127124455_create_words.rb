# require '../../config/environment'

class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.timestamps
    end # End of loop
  end # End of method
end # End of class

