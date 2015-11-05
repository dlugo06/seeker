class Release < ActiveRecord::Base
  scope :search, ->(term) { where("title LIKE ? OR year LIKE ?", "%#{term}%", term)}
  def display_name
    "#{title} (#{year})"
  end
end
