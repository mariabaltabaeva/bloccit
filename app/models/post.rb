class Post < ApplicationRecord
  has_many :comments

  #after_create :check_for_spam

  #def check_for_spam
    #if self.id % 5 == 0
      #self.update(title: "SPAM")
    #end
  #end
end
