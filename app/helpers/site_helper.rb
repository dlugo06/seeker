module SiteHelper
  def self.search(term)
    tracks = Track.search(term)
    releases = Release.search(term)
    artists = Artist.search(term)
    tracks + releases + artists
  end
end
