class Option < ActiveRecord::Base
    belongs_to :scene
    belongs_to :from_scene, class_name: 'Scene', :foreign_key => :from_scene_id
    belongs_to :to_scene, class_name: 'Scene', :foreign_key => :to_scene_id
end