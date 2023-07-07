class CreateScrapedData < ActiveRecord::Migration[7.0]
  def change
    create_table :scraped_data do |t|
      t.string :address, null: false
      t.string :price, null: false

      t.timestamps
    end
  end
end
