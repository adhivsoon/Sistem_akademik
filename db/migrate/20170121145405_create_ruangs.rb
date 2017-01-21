class CreateRuangs < ActiveRecord::Migration[5.0]
  def change
    create_table :ruangs do |t|
      t.string :kode_ruang
      t.timestamps
    end
  end
end
