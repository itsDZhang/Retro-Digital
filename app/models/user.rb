class User < ApplicationRecord
  has_many :comment, dependent: :destroy
end
