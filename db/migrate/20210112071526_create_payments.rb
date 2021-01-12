class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.datetime :date, null: false
      t.string :purpose, null: false
      t.string :to_from, null: false
      t.bigint :amount, null: false
      t.string :status, null: false

      t.timestamps null: false
    end
  end
end
