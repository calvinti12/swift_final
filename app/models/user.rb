class User < ActiveRecord::Base
  include Clearance::User

    has_many :authentications, :dependent => :destroy

  def self.create_with_auth_and_hash(authentication,auth_hash)

    create! do |u|
      u.first_name = auth_hash['extra']["raw_info"]["name"]
      u.birthday = auth_hash['extra']["raw_info"]["user_birthday"]
      u.gender = auth_hash['extra']["raw_info"]["gender"]
      # u.locale = auth_hash['extra']["raw_info"]["locale"]
      u.email = auth_hash["extra"]["raw_info"]["email"] || "#{auth_hash['extra']['raw_info']['id']}@facebook.com"
      u.encrypted_password = SecureRandom.urlsafe_base64
      u.remember_token = SecureRandom.urlsafe_base64
      u.authentications<<(authentication)
    end
  end

  def fb_token
    x = self.authentications.where(:provider => :facebook).first
    return x.token unless x.nil?
  end

  def password_optional?
    true
  end

end