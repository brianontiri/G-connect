class Pic < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_attached_file :image, styles:{large: "600x600>", medium: "300x300>", thumb:"150x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
 # validates_attachment_file_name :image, matches: [/png\z/, /jpe?g\z/, /jpg\z/]
 # validates_attachment :image,content_type: { content_type: ["image/jpeg", "image/gif", "image/png" "image/jpg"] }
end
