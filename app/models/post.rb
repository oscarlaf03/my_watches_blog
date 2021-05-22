class Post < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: 'user_id'

  def preview
    content.truncate(46, sperator: ' ')
  end

  def author_name
    author.name if author
  end

  def estimated_reading_time_in_minutes
    word_count / HUMAN_AVERAGE_WORDS_READ_PER_MINUTE
  end

  def increment_views_by_one
    self.update(views: self.views + 1)
  end

  private

  HUMAN_AVERAGE_WORDS_READ_PER_MINUTE = 250.0
  # source: https://irisreading.com/what-is-the-average-reading-speed/

  def word_count
    content.split(' ').size.to_f
  end

end
