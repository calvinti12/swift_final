class User < ActiveRecord::Base
  include Clearance::User

  after_update :first_name, presence: true 
  after_update :last_name, presence: true
  after_update :age, presence: true
  after_update :description, presence: true
  after_update :country , presence: true
  after_update :state, presence: true
  after_update :gender, presence: true
  after_update :prefer_gender, presence: true
  after_update :prefer_country , presence: true
  after_update :prefer_state , presence: true
  after_update :prefer_start_age , presence: true
  after_update :prefer_end_age , presence: true


    has_many :authentications, :dependent => :destroy
    mount_uploader :image , ImageUploader

  def self.create_with_auth_and_hash(authentication,auth_hash)

    create! do |u|
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
