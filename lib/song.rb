require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable
  extend Findable

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

 
end
