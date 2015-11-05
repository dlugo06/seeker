class Track < ActiveRecord::Base
  scope :search, ->(term) { where("title LIKE ? OR genre LIKE ?", "%#{term}%", "%#{term}%")}
  def display_name
    title
  end
end
