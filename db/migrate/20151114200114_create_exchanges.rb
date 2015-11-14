class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.float :initial_income
      t.float :current_income
      t.float :efficiency
      t.float :initial_dollar_quotation
      t.float :initial_euro_quotation
      t.float :discount
      t.datetime :buy_date
      t.string :exchange_type
      t.float :dollar_quotation
      t.float :euro_quotation
      t.string :variation_dollar
      t.string :variation_euro
      t.references :wallet, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
