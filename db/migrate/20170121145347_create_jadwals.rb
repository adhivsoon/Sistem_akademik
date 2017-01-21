class CreateJadwals < ActiveRecord::Migration[5.0]
  def change
    create_table :jadwals do |t|
      t.string :kode_mk
      t.integer :nip
      t.string :kode_ruang
      t.string :waktu
      t.timestamps
    end
  end
end
