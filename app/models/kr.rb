class Kr < ApplicationRecord
  belongs_to :mahasiswa
  belongs_to :mata_kuliah
  belongs_to :jurusan
end
