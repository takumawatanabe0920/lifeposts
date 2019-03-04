class Relationship < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :follow, class_name: "User"
end
