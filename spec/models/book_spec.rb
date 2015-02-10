require 'rails_helper'

RSpec.describe Book, :type => :model do
    describe "Valid Cases" do
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:nil, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:nil, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: nil, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: nil, language: "English", file_size: 3, file_format: "PDF")).to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: nil, file_format: "PDF")).to be_valid }
        
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).to be_valid }
    end
    
    describe "Invalid Cases" do
        it { expect(Book.new(name: "", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "v"*51, author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "Book name", author_id: nil, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "Book name", author_id: nil, category_id:nil, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:nil, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "", pages: 380, language: "English", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "", file_size: 3, file_format: "PDF")).not_to be_valid }
        it { expect(Book.new(name: "Book name", author_id: 1, category_id:1, year:2014, star_rating:4, download: 100, description: "Book's description", image: "Link", pages: 380, language: "English", file_size: 3, file_format: "")).not_to be_valid }
    end
end