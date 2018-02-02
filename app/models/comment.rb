class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    after_create :send_comment_email
    
    RATINGS = {
        'ONE STAR': '1_STAR',    
        'TWO STARS': '2_STARS',   
        'THREE STARS': '3_STARS',   
        'FOUR STARS': '4_STARS',   
        'FIVE STARS': '5_STARS'
    }

def humanized_rating
    RATINGS.invert[self.rating]     
end

def send_comment_email
   NotificationMailer.comment_added(self).deliver_now
end

end