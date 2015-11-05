class Artist < ActiveRecord::Base
  scope :search, ->(term) { where("name LIKE ?", "%#{term}%")}
  def display_name
    name
    #same as self.name
  end
end
