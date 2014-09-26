class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.text :historysniffed_app_ids, :default => []

      t.timestamps
    end
  end
end
