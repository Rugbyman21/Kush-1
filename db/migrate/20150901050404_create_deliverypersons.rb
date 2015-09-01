class CreateDeliverypersons < ActiveRecord::Migration
  def change
    create_table :deliverypersons do |t|
      t.string :name
      t.timestamps
    end
  end
end
