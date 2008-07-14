#!/usr/bin/env ruby
require 'rubygems'                              # Rubygems
require 'librmpd'                               # MPD Library
require 'xosd'                                  # OSD Library

mpd = MPD.new 'localhost', 6600                 # Init MPD
mpd.connect                                     # Connect to MPD Server
song = mpd.current_song                         # Get the current song

osd = XOSD::Xosd.new(5)                         # Init XOSD
osd.font = "-adobe-courier-*-r-*-*-24"          # Choose XOSD Font
osd.color = "#287D28"                           # Choose XOSD color (dark green)

if song.title then                              # Check to see if the song has a title
  osd.display_message(3, song.title)            # If so , display the title
  sleep(2)                                      # Display it for 2 seconds
else                                            
  osd.display_message(3, song.file)             # if there is no title, display the filename
  sleep(2)                                      # Display it for 2 seconds
end
