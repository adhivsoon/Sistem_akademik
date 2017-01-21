class Mahasiswa < ApplicationRecord
  has_many :krs
  has_many :khs
end
