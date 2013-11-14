class User < ActiveRecord::Base
  # params.require(:user).permit(:user_id, :user_login, :user_pass, :user_nicename, :user_email, :user_url, :user_registered, :user_activation_key, :user_status, :display_name)
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  #存在验证
  validates :user_login, presence: true , length: { maximum: 50 }, uniqueness: true
  validates :user_email, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
  
  before_save { self.user_email = user_email.downcase }
  before_save { self.user_pass = user_pass }
 
  def password
       logger.info ("------------2-------------")
   @password
  end

  def password=(pass)
       logger.info ("------------3-------------")
   return unless pass
   @password = pass
   generate_password(pass)
  end


  # 此处用动词形式(authenticate)更加合适, 特此说明一下. 感谢 Chen Kai 同学的提醒.
  def self.authentication(login, password)
   user = User.find_by_user_login(login)
   logger.info ("------------1-------------")
   if user && Digest::SHA256.hexdigest(password + user.salt) == user.user_pass
     return user
   end
   false
  end

  private
  def generate_password(pass)
   salt = Array.new(10){rand(1024).to_s(36)}.join
   self.salt, self.user_pass = 
     salt, Digest::SHA256.hexdigest(pass + salt)
  end
  
end
