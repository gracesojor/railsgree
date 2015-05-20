class CreateUserxes < ActiveRecord::Migration
  def change
    create_table :userxes do |t|

      t.timestamps null: false
    end
  end
end
