class Genre < ActiveRecord::Base
  has_many :songs

  # def song_title=(title)
  #   self.song = Song.find_or_create_by(title: title)
  # end
 
  # def song_title
  #    self.song ? self.song.title : nil
  # end
end
