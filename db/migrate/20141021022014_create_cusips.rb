class CreateCusips < ActiveRecord::Migration
  def change
    create_table :cusips do |t|
      t.string :cusip
      t.string :issuer
      t.decimal :coupon
      t.date :maturity

      t.timestamps
    end
  end
end
