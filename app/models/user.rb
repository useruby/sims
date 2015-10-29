class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable 
  include DeviseTokenAuth::Concerns::User

  has_many :products, foreign_key: :created_by_id, inverse_of: :created_by
end
