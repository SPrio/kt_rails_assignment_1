class Photo < ApplicationRecord
  attr_reader :image_remote_url
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def image_remote_url=(url)
    self.avatar = URI.parse(url)
    @image_remote_url = url
  end
end
