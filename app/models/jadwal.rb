class Jadwal < ApplicationRecord
  belongs_to :mata_kuliah
  belongs_to :dosen
  belongs_to :ruang
end
