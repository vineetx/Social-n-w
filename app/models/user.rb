class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts

         has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  		validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  		acts_as_followable
  		acts_as_follower
end
