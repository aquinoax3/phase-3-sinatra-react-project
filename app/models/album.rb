class Album < ActiveRecord::Base
    has_many :toplists
    has_many :users, through: :toplists
end