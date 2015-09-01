class CreateWeeds < ActiveRecord::Migration
  def change
 create_table :weeds do |t|
   t.string :name
   t.timestamps
  end
 end
end
