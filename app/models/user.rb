class User < ActiveRecord::Base
  after_create :set_default_role, if: Proc.new { User.count > 1 }
  
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  def set_default_role
    add_role :user
  end
end
