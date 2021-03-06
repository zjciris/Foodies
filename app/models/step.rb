class Step < ActiveRecord::Base
  belongs_to :recipe
  validates :step_number, :description, presence: true
  has_attached_file :step_img, styles: {
    thumb: '100x100#',
    square: '200x200#'
  }, default_url: "/images/default/missing_:attachment_:style.jpg"
  validates_attachment_content_type :step_img, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
