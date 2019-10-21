class Scene < ActiveRecord::Base
    has_many :options, foreign_key: :from_scene_id, class_name: 'Option' 
    has_many :decisions, foreign_key: :to_scene_id, class_name: 'Option'
end