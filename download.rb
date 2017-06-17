require 'rspotify'
require 'json'
require 'csv'

begin
  config_file = File.read("config.json")
rescue
  print "Please create a config.json. See README.md for instruction \n"
  abort
end

config = JSON.parse(config_file)

clientId = config["clientId"]
clientSecret = config["clientSecret"]

print "See README.md if you need any instructions \n"

RSpotify.authenticate(clientId, clientSecret)

print "Please input the playlist URL: "
url = gets.chomp
userpos = url.index("user/") + 5

playlistpos = url.index("playlist/") + 9

userId = url[userpos..playlistpos-11]
playlistId = url[playlistpos..-1]

playlist = RSpotify::Playlist.find(userId, playlistId)
user = RSpotify::User.find(userId)

CSV.open(playlist.name + ".csv", "w") do |csv|
  csv << ["title", "artist", "album", "length", "preview (if available)"]
  playlist.tracks.each do |track|
    print track.name + "\n"
    duration = track.duration_ms
    seconds = duration / 1000.0
    timeStr = Time.at(seconds).utc.strftime("%M:%S")

    csv << [track.name, track.artists[0].name, track.album.name, timeStr, track.preview_url]
  end
end
