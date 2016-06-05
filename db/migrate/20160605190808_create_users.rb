class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :age
      t.string :email
      t.string :picture_url
      t.string :gender
      t.string :status

      t.timestamps
    end
  end
end
