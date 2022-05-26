# frozen_string_literal: true

RSpec.describe Foodie::Food do
  it "broccoli is gross" do
    expect(Foodie::Food.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(Foodie::Food.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(Foodie::Food.pluralize("Tomato")).to eql("Tomatoes")
  end

  it "has getter for important_id" do
    expect(Foodie::Food.important_id).to be nil
  end

  it "has setter for important_id" do
    Foodie::Food.important_id = 4
    expect(Foodie::Food.important_id).to be 4
  end
end
