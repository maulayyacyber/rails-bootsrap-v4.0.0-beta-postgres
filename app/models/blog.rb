class Blog < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :thumbnail, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/default.png"
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

  def should_generate_new_friendly_id?
    title_changed?
  end

end

