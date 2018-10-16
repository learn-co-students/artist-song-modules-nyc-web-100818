require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@artists = []

  def initialize
    # @@artists << self
    # self.class.all << self # this is equaivalent to Artist.all << self
    super
    # The super keyword, placed inside a method, will tell that method to look up its behavior in the method of the same name that lives in the parent, or super, class. A method that includes the super keyword will execute any code placed inside the super class' method of the same name, and then execute any code inside the child class' method.
    @songs = []
  end

  #CLASS METHODS
  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end



  #INSTANCE METHODS

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
