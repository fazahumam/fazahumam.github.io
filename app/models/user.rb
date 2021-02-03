class User < ApplicationRecord
    #has_many :dompets

    has_secure_password
end
