class CreateJurusans < ActiveRecord::Migration[5.0]
  def change
    create_table :jurusans do |t|
      t.string :kode_jur
      t.string :nama_jur
      t.timestamps
    end
  end
end
