class MataKuliah < ApplicationRecord
  has_many :khs
  has_many :krs
  has_many :jadwal
end
