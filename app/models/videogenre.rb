class Videogenre < ApplicationRecord
    has_many :videopost
    
    validates :name, presence: {message:"は必須項目です。"}
end
