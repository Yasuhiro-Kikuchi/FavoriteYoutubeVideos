class Videopost < ApplicationRecord
    belongs_to :videogenre
    
    validates :title, :content, presence: {message:"は必須項目です。"}
end
