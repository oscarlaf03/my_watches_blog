
FactoryBot.create(:user, email: 'test@test.com') unless User.find_by(email: 'test@test.com').present?
FactoryBot.create(:user, email: 'user@user.com') unless User.find_by(email: 'user@user.com').present?

User.all.each do |user|
  unless user.posts.present?
    16.times do
      FactoryBot.create(:post, author: user)
    end
  end
end
