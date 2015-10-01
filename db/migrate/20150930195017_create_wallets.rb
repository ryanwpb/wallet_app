class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.decimal :amount
      t.string :exchange_type
      t.string :recipient

      t.timestamps null: false
    end
  end
end
