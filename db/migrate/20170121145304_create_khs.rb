class CreateKhs < ActiveRecord::Migration[5.0]
  def change
    create_table :khs do |t|
      t.integer :nim
      t.string :kode_mk
      t.integer :nilai
      t.timestamps
    end
  end
end
