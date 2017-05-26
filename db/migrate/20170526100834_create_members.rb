class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.string :team

      t.timestamps null: false
    end
  end
end
