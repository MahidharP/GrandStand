class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :name
      t.references :user, index: true, foreign_key: true
      t.string :quote_by

      t.timestamps null: false
    end
  end
end
