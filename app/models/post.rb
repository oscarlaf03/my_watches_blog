class Post < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: 'user_id'

  def preview
    content.truncate(46, sperator: ' ')
  end

end
