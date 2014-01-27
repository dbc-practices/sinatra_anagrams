class AddSizeToWords < ActiveRecord::Migration
  def up
    add_column :words, :size, :integer
    Word.all.each do |w|
      w.size = w.name.size
      w.save
    end
  end # End of method

  def down
    remove_column :words, :size
  end

end # End of class

