class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :username
      t.string :address
      t.string :gender

      t.timestamps
    end
  end
end
