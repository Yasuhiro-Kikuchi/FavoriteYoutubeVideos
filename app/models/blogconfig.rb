class Blogconfig < ApplicationRecord
    validates :title, :stylename, presence: {messsage:"は、必須項目です。"}
end
