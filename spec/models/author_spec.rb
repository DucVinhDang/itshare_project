require 'rails_helper'

RSpec.describe Author, :type => :model do
    describe "Valid Cases" do
        it { expect(Author.create!(name: "Vinh", nationality: "VN", year: 2014, follower: 130, description: "description", avatar: "description")).to be_valid }
        it { expect(Author.create!(name: "Vinh", nationality: "VN", year: nil, follower: 130, description: "", avatar: "description")).to be_valid }
        it { expect(Author.create!(name:"Vinh", nationality:"VN", year:2014, follower:nil, description:"", avatar: "description")).to be_valid }
        it { expect(Author.create!(name:"Vinh", nationality:"VN", year:nil, follower:nil, description:"", avatar: "description")).to be_valid }
    end
    
    describe "Invalid Cases" do
        it { expect(Author.new(name:"", nationality:"VN", year:2014, follower:130, description:"description", avatar: "description")).not_to be_valid }
        it { expect(Author.new(name:"v"*21, nationality:"VN", year:2014, follower:130, description:"description", avatar: "description")).not_to be_valid }
        it { expect(Author.new(name:"", nationality:"", year:2014, follower:130, description:"description", avatar: "description")).not_to be_valid }
        it { expect(Author.new(name:"", nationality:"VN", year:2014, follower:130, description:"description", avatar: "")).not_to be_valid }
        it { expect(Author.new(name:"", nationality:"", year:2014, follower:130, description:"description", avatar: "")).not_to be_valid }
        it { expect(Author.new(name:"Vinh", nationality:"VN", year:2014, follower:130, description:"description", avatar: "")).not_to be_valid }
    end
end