class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    
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
end