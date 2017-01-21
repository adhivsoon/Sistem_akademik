class CreateMahasiswas < ActiveRecord::Migration[5.0]
  def change
    create_table :mahasiswas do |t|
      t.integer :nim
      t.string :nama_mhs
      t.string :jenis_kelamin
      t.string :alamat
      t.timestamps
    end
  end
end
