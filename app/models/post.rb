class Post < ApplicationRecord
  belongs_to :topic
  has_many :comments, dependent: :destroy

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true

  #after_create :check_for_spam

  #def check_for_spam
    #if self.id % 5 == 0
      #self.update(title: "SPAM")
    #end
  #end
end
