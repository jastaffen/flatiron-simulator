class Option < ActiveRecord::Base
    belongs_to :scene
    belongs_to :from_scene, class_name: 'Scene', :foreign_key => :from_scene_id
    belongs_to :to_scene, class_name: 'Scene', :foreign_key => :to_scene_id
    has_many :user_options
    has_many :users, through: :user_options
end