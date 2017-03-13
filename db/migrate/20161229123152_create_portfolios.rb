class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.string :image
      t.string :url

      t.timestamps null: false
    end
  end
end
