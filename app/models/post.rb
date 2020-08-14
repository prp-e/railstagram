class Post < ApplicationRecord
    mount_uploader :image, ImageUploader
    validates :caption, presence: true
    belongs_to :user
end
