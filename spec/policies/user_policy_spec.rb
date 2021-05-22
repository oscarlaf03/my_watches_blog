require 'rails_helper'

RSpec.describe UserPolicy, type: :policy do
  let(:user) { create(:user) }
  let(:another_user) { create(:user)}

  subject { described_class }

  permissions :update? do

    it "Should reject edition from another user" do
      expect(subject).not_to permit(another_user,user)
    end

    it "Should allow edition of User model by the same user "do
      expect(subject).to permit(user,user)
    end

  end

end
