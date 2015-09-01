class CreateClientsDeliverypersons < ActiveRecord::Migration
  def change
    create_table :clients_deliverypersons do |t|
        t.integer :client_id
        t.integer :deliveryperson_id
      end
    end
  end
