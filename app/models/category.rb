class Category < ActiveRecord::Base
    has_many :books
    
    validates :name, presence: true, length: 1..15
end
