class CreateClientsWeeds < ActiveRecord::Migration
  def change
    create_table :clients_weeds do |t|
      t.integer :client_id
      t.integer :weed_id
   end
 end
end
