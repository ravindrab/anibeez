class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :alternate_email, 
                :dob, :doj, :sex, :address, :phone_no, :status, :conditions

 validates_presence_of :first_name, :length => { :in => 6..20 }, :message => "Shound not be blank and Name   letters in between 4 to 60"
 validates :last_name, :presence => true
 validates :sex, :presence => true
 validates_presence_of :phone_no, :length => { :in => 10..15 }, :message => "is Not valid"
 validates :address, :presence => true
 validates_presence_of :conditions , :message=> "must be accepted"
 
has_many :activities
has_many :comments

attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
