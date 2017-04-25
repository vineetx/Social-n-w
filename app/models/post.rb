class Post < ApplicationRecord
  
  belongs_to :user

  has_attached_file :attachment, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/

  validates :content, presence: true

  acts_as_votable

end