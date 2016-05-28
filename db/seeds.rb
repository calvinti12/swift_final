# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(first_name: 'Anatah', last_name: 'Sam', age: 20, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'male', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 20, prefer_end_age: 20, email: 'onetwo@gmail.com', description: "Female" ,encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}app/app/assets/images/card_france1.png"))

User.create( first_name: 'Alice', last_name: 'Spring', age: 19, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'male', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 19, prefer_end_age: 28, email: 'onettwo@gmail.com', description: "Female" ,encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_angmo1.png"))

User.create( first_name: 'Masalah', last_name: 'Bank', age: 24, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'male', prefer_country: 'Australia', prefer_state: 'Perth', prefer_start_age: 18, prefer_end_age: 22, email: 'onetwso@gmail.com', description: "Female" ,encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_france2.png"))

User.create( first_name: 'Nicole', last_name: 'Koh', age: 18, country: 'Australia', state: 'WA', gender: 'female', prefer_gender: 'male', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 18, prefer_end_age: 25, email: 'onetwweo@gmail.com', description: "Female" ,encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_indian1.png"))

User.create( first_name: 'Jing', last_name: 'Yi', age: 21, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'male', prefer_country: 'Australia', prefer_state: 'Melbourne', prefer_start_age: 22, prefer_end_age: 28, email: 'onewetwo@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_malaysia2.png"))

User.create( first_name: 'Nandeh', last_name: 'Yametea', age: 22, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'male', prefer_country: 'India', prefer_state: 'Dehli', prefer_start_age: 18, prefer_end_age: 20, email: 'onetwreo@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_malaysia3.png"))

User.create( first_name: 'Natasha', last_name: 'Nah', age: 23, country: 'France', state: 'Venice', gender: 'female', prefer_gender: 'female', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 18, prefer_end_age: 19, email: 'onetwewo@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_malaysia4.png"))

User.create( first_name: 'Iya', last_name: 'Ish', age: 24, country: 'France', state: 'Paris', gender: 'female', prefer_gender: 'male', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 20, prefer_end_age: 21, email: 'onetwweo@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_malaysia5.png"))

User.create( first_name: 'Zi', last_name: 'Weng', age: 25, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'female', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 18, prefer_end_age: 22, email: 'weonetwo@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_malaysia6.png"))

User.create( first_name: 'Shi', last_name: 'Ying', age: 30, country: 'India', state: 'Bihar', gender: 'female', prefer_gender: 'male', prefer_country: 'France', prefer_state: 'Paris', prefer_start_age: 18, prefer_end_age: 23, email: 'onewetwo@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_malaysia7.png"))

User.create( first_name: 'Joy', last_name: 'Ness', age: 20, country: 'Malaysia', state: 'Selangor', gender: 'female', prefer_gender: 'female', prefer_country: 'Malaysia', prefer_state: 'Selangor', prefer_start_age: 18, prefer_end_age: 25, email: 'onetwowe@gmail.com', description: "Female", encrypted_password: SecureRandom.urlsafe_base64, remember_token: SecureRandom.urlsafe_base64, image: File.new("#{Rails.root}/app/assets/images/card_angmo1.png"))

