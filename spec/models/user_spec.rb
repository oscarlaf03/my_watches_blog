require 'rails_helper'

RSpec.describe User, type: :model do

  context "user validations" do
    it "should reject a user handle with invalid chars" do
      invalid_chars = %w[ ! @ # $ % "& * ( ) [ ] { } = + ¨ ^ ~ / \ Ç ç > < , ; : ?  ¡ ¿  " '] + [" "]
      invalid_chars.each do |char|
        invalid_name = "invali#{char}da"
        user = build(:user,handle: invalid_name)
        if user.valid?
          raise "invalid char present in handle but not detected: #{char}"
        end
      end
    end

    it "should reject handle over 19 chars" do
      user = build(:user,handle: "very_very_very_very_very_very_very_very_very_large_handle")
      expect(user).not_to be_valid
    end

    it "should reject handle less than 3 chars" do
      user = build(:user,handle: "hi")
      expect(user).not_to be_valid
    end

    it "should reject user without a first name" do
      user = build(:user,first_name: nil)
      expect(user).not_to be_valid
    end

    it "should reject user without a last name" do
      user = build(:user,last_name: nil)
      expect(user).not_to be_valid
    end

  end


end
