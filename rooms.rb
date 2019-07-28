class Rooms

  attr_reader :name

  def initialize(name)
    @name = name
    @guest = []
    @playlist = []
  end

  def guest_count()

  return  @guest.count
  end

  def add_guest(guest)

  @guest << guest

  end

  def remove_guest(guest)

    @guest.delete(guest)

  end

  def song_count()

    return @playlist.count
  end 

  def add_song(song)
    @playlist << song

  end

end
