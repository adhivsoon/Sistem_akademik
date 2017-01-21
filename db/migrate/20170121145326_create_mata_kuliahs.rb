class CreateMataKuliahs < ActiveRecord::Migration[5.0]
  def change
    create_table :mata_kuliahs do |t|
      t.string :kode_mk
      t.string :nama_mk
      t.integer :sks
      t.timestamps
    end
  end
end
