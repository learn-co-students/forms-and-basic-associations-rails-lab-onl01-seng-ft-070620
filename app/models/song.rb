class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(arg)
    self.artist = Artist.find_or_create_by(name: arg)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_id=(arg)
    self.genre = Genre.find_or_create_by(id: arg)
  end

  def genre_id
    self.genre ? self.genre.id : nil
  end

  def notes=(args)
    args.each do |note|
      n = Note.create(content: note)
      self.notes << n
    end
  end

  # def note_ids=(ids)
  #   ids.each do |id|
  #     note = 
  #   end
  # end

end
