class User < ActiveRecord::Base
    has_many :artists
end