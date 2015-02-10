class Book < ActiveRecord::Base
    belongs_to :author
    belongs_to :category
    
    validates :name, presence: true, length:1..50
    validates :author_id, presence: true
    validates :category_id, presence: true
    validates :image, presence: true
    validates :language, presence: true
    validates :file_format, presence: true
end
