require 'rails_helper'

RSpec.describe PostPolicy, type: :policy do

  subject { described_class }

  permissions :update? do
    let(:post) {user_with_posts.posts.first}

    it "Should a reject an update from user other than the post author" do
      another_user = create(:user)
      expect(subject).not_to permit(another_user,post)
    end

    it "Should a allow an update from the post's author" do
      expect(subject).to permit(post.author,post)
    end

  end

  permissions :destroy? do
    let(:post) {user_with_posts.posts.first}

    it "Should a reject destroy from user other than the post author" do
      another_user = create(:user)
      expect(subject).not_to permit(another_user,post)
    end

    it "Should a allow destroy from the post's author" do
      expect(subject).to permit(post.author,post)
    end

  end
end
