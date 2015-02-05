class CreateNonUsers < ActiveRecord::Migration
  def change
    create_table :non_users do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
