class PhotoShout < ApplicationRecord
  has_attached_file :image, styles: { thumb: "200x200" }

  validates_attachment :image, 
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
