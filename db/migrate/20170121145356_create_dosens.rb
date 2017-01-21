class CreateDosens < ActiveRecord::Migration[5.0]
  def change
    create_table :dosens do |t|
      t.integer :nip
      t.string :nama_dosen
      t.string :alamat
      t.timestamps
    end
  end
end
