# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170121145405) do

  create_table "dosens", force: :cascade do |t|
    t.integer  "nip"
    t.string   "nama_dosen"
    t.string   "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jadwals", force: :cascade do |t|
    t.string   "kode_mk"
    t.integer  "nip"
    t.string   "kode_ruang"
    t.string   "waktu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jurusans", force: :cascade do |t|
    t.string   "kode_jur"
    t.string   "nama_jur"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "khs", force: :cascade do |t|
    t.integer  "nim"
    t.string   "kode_mk"
    t.integer  "nilai"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "krs", force: :cascade do |t|
    t.string   "kode_mk"
    t.integer  "nim"
    t.string   "kode_jur"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mahasiswas", force: :cascade do |t|
    t.integer  "nim"
    t.string   "nama_mhs"
    t.string   "jenis_kelamin"
    t.string   "alamat"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "mata_kuliahs", force: :cascade do |t|
    t.string   "kode_mk"
    t.string   "nama_mk"
    t.integer  "sks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ruangs", force: :cascade do |t|
    t.string   "kode_ruang"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
