class CreateUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :units do |t|
      t.float :value
      t.date :date_uf

      t.timestamps
    end
  end
end
