class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.string :credit_number, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
