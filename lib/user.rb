class User < ActiveRecord::Base
    has_many :user_options
    has_many :options, through: :user_options
end