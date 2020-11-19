class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :name
      t.datetime :date
      t.string :request

      t.timestamps
    end
  end
end
