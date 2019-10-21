class User < ActiveRecord::Base
    has_many :useroptions
    has_many :options, through: :useroptions
end