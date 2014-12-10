class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  acts_as_votable 

  has_attached_file :pic, styles: {
    thumb: '60x60>',
    blog: '1120x420#',
    medium: '350x2250>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :pic, :content_type => /\Aimage\/.*\Z/
end
