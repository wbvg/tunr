# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  image           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  attr_accessible :name, :image, :password, :password_confirmation, :is_admin
  has_secure_password
  has_many :mixtapes
  has_and_belongs_to_many :albums

  validates :image, :presence => true
  validates :name, :uniqueness => true , :length => { :minimum => 2}
end
