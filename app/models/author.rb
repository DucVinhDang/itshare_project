class Author < ActiveRecord::Base
    has_many :books
    
    validates :name, presence: true, length:1..20
    validates :nationality, presence: true
    validates :avatar, presence: true

end
