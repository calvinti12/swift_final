class User < ActiveRecord::Base
  include Clearance::User

  # validates :first_name, presence: true 
  # validates :last_name, presence: true
  # validates :age, presence: true
  # validates :description, presence: true
  # validates :country , presence: true
  # validates :state, presence: true
  # validates :gender, presence: true
  # validates :prefer_gender, presence: true
  # validates :prefer_country , presence: true
  # validates :prefer_state , presence: true
  # validates :prefer_start_age , presence: true
  # validates :prefer_end_age , presence: true


    has_many :authentications, :dependent => :destroy
    mount_uploader :image , ImageUploader
    has_many :rooms, :dependent => :destroy
    
  def self.create_with_auth_and_hash(authentication,auth_hash)

    u = User.new
      u.first_name = auth_hash['extra']["raw_info"]["first_name"]
      u.last_name = auth_hash['extra']['raw_info']['last_name']
      u.gender = auth_hash['extra']["raw_info"]["gender"]
      u.age = nil
      u.description = nil
      u.country = nil
      u.state = nil
      u.prefer_gender = nil
      u.prefer_country = nil
      u.prefer_state = nil
      u.prefer_start_age = nil
      u.prefer_end_age = nil
      # u.locale = auth_hash['extra']["raw_info"]["locale"]
      u.email = auth_hash["extra"]["raw_info"]["email"] || "#{auth_hash['extra']['raw_info']['id']}@facebook.com"
      u.encrypted_password = SecureRandom.urlsafe_base64
      u.remember_token = SecureRandom.urlsafe_base64
      u.authentications<<(authentication) 
      u.save(validate: false)
      u
  end

  def fb_token
    x = self.authentications.where(:provider => :facebook).first
    return x.token unless x.nil?
  end

  def password_optional?
    true
  end

end
