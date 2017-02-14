class Actor < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: { scope: :dob}

  has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")

  has_many :characters
  has_many :movies, :through => :characters
end

# Character:
#  - movie_id: must be present
#  - actor_id: must be present
#  - name: no rules
#
# Actor:
#  - name: must be present; must be unique in combination with dob
#  - dob: no rules
#  - bio: no rules
#  - image_url: no rules
