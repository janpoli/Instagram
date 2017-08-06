class Pic < ApplicationRecord
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "120x120>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
