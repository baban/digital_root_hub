# encoding: utf-8

class User < ActiveRecord::Base
  default_scope order: 'id DESC'
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :omniuser_id

  def initialize(*args)
    super(*args)
  end

  def stop
    self.retire_flg = true
    self.save
    self
  end

  def user_recover
    self.retire_flg = false
    self.save
    self
  end

  def admin?
    admin
  end

  def member?
    !self.retire_flg
  end
end

