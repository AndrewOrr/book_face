class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "friend_id", dependent: :destroy
=begin  has_many :friend_users, through: :relationships, source: :friend
  has_many :reverse_relationships, foreign_key: "friended_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :friends, through: :reverse_relationships, source: :follower
=end
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    # This is preliminary. See "Following users" for the full implementation.
    Micropost.where("user_id = ?", id)
  end
  
  def friend?(other_user)
    relationships.find_by(friend_id: other_user.id)
  end

  def friend!(other_user)
    relationships.create!(friend_id: other_user.id , accepted: true)
    other_user.relationships.create!(friend_id: current_user.id, accepted: false)
  end

  def unfriend!(other_user)
    relationships.find_by(friend_id: other_user.id).destroy
    other_user.relationships.find_by(friend_id: current_user.id).destroy
  end


  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end