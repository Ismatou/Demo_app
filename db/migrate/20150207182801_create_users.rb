class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Ismatou
      t.string :ismatou16@gmail.com

      t.timestamps null: false
    end
  end
end
