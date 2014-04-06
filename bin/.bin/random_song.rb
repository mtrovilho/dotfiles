#!/usr/bin/env ruby
# API Documentation at http://api.wikia.com/wiki/LyricWiki_API
require 'open-uri'
require 'json'
require 'tmpdir'

ARTIST = ARGV.join( ' ' )

def json_for(name, url)
  temp_file = File.join(Dir.tmpdir, name)
  if File.exists?(temp_file)
    data = File.read(temp_file)
  else
    data = open(URI.escape(url)).read
    File.open(temp_file, "w") { |f| f.puts data }
  end
  JSON.parse(data)
end

artist_json = json_for(ARTIST, "http://lyrics.wikia.com/api.php?artist=#{ARTIST}&fmt=realjson")
songs = artist_json["albums"].map { |a| a["songs"] }
song = songs.flatten.sample
song_json = json_for(song, "http://lyrics.wikia.com/api.php?artist=#{ARTIST}&song=#{song}&fmt=realjson")

puts song_json["lyrics"].gsub("\n", ", ").squeeze

