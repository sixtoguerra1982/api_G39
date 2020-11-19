class CreateUfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ufs do |t|
      t.date :fecha
      t.float :valor

      t.timestamps
    end
  end
end
