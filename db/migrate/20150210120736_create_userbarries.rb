class CreateUserbarries < ActiveRecord::Migration
  def change
    create_table :userbarries do |t|
      t.string :ismatbarry@yahoo.fr

      t.timestamps null: false
    end
  end
end
