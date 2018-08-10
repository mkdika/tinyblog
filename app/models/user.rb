class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  rails_admin do
    object_label_method :username
  end

  # for custom string format for to_s methods
  def username
    show_name == nil ? email : show_name
  end
end
