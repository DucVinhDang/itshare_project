require 'rails_helper'

RSpec.describe Category, :type => :model do
    describe "Valid Cases" do
        it { expect(Category.new(name: "ABC", description: "My description")).to be_valid }
        it { expect(Category.new(name: "ABC", description: "")).to be_valid }
    end

    describe "Invalid Cases" do
        it { expect(Category.new(name: "", description: "")).not_to be_valid }
        it { expect(Category.new(name: "a"*16, description: "")).not_to be_valid }
    end
end