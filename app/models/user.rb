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

  def facebook
    Omniuser.where( id: self.omniuser_id ).first
  end

  def facebook?
    omniuser = Omniuser.where( id: self.omniuser_id ).first
    omniuser.try(:provider)=="facebook"
  end

  def bookmarked_recipes
    recipe_ids = Bookmark.where( user_id: self.id ).select(:recipe_id)
    Recipe.where( " id IN (#{recipe_ids.to_sql}) " )
  end
end

