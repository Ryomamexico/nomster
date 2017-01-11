class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :place
  after_create :send_comment_email
  RATINGS = {
    'one star' => '1_star',
    'two star' => '2 star',
    'three star' => '3 star',
    'four star' => '4 star',
    'five star' => '5 star',
  }
  def humanized_rating
    RATINGS.invert[self.rating]
  end

  def send_comment_email
    NotificationMailer.comment_added(self).deliver
  end
end
