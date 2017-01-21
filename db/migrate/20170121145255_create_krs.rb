class CreateKrs < ActiveRecord::Migration[5.0]
  def change
    create_table :krs do |t|
      t.string :kode_mk
      t.integer :nim
      t.string :kode_jur
      t.timestamps
    end
  end
end
