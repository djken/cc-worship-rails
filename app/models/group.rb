class Group < ApplicationRecord
    has_many :songs
    has_many :albums
    has_many :genres
end
