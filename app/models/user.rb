class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts
         acts_as_messageable

         has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
         :default_url => "missing.png"
  		    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  		acts_as_followable
  		acts_as_follower

      after_create :welcome_send

      def welcome_send
        WelcomeMailer.welcome_send(self).deliver
      end
      
      
      
      def mailboxer_email(object)
         
      end

      extend FriendlyId
      friendly_id :name, use: :slugged

end