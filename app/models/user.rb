class User < ActiveRecord::Base
    has_many :toplists
    has_many :albums, through: :toplists
end