# frozen_string_literal: true

RSpec.describe Foodie::Food do
  subject { Foodie::Food }

  it "broccoli is gross" do
    expect(subject.portray("Broccoli")).to eql("Gross!")
  end

  it "anything else is delicious" do
    expect(subject.portray("Not Broccoli")).to eql("Delicious!")
  end

  it "pluralizes a word" do
    expect(subject.pluralize("Tomato")).to eql("Tomatoes")
  end

  context ".important_id" do
    it "has getter for important_id" do
      expect(subject.important_id).to be nil
    end

    it "has setter for important_id" do
      subject.important_id = 4
      expect(subject.important_id).to be 4
    end
  end

  context ".something_cool" do
    it "throws an exception" do
      subject.important_id = nil
      expect { subject.something_cool }.to raise_error(StandardError, "Important ID undefined.")
    end

    it "returns something_cool" do
      subject.important_id = 4
      expect(subject.something_cool).to eq("Something Cool!")
    end
  end
end
