class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :welcome_send
  has_many :posts, :dependent => :destroy
  acts_as_messageable
  acts_as_followable
  acts_as_follower
  include Humanizer
  # require_human_on :create
         
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" },
  :default_url => "missing.png"
  
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def welcome_send
    WelcomeWorker.perform_async(self.id)
  end

  def mailboxer_email(object)
         
  end

  extend FriendlyId
  friendly_id :name, use: :slugged

end