#!/usr/bin/env python
import mpd 					                        # Import MPD Library
import pyosd										            # Import OSD Library
import time											            # Import Internal Time Module

client = mpd.MPDClient()							      # Init MPD Client
client.connect("localhost", 6600)					  # Connect to local MPD Server

cs = client.currentsong()                   # Get the currentsong dict
if 'title' in cs:                           # Check to see if "title" title exists in the dict
 	songtitle = cs['title']                   # If it does set songtitle to the id3 title
elif 'file' in cs:                          # If it doesn't have a title use the filename
 	songtitle = cs['file']                    # Set songtitle to the filename

songartist = " by "
songartist += cs['artist']                  # Set songartist if the song has one

FONT = "-*-helvetica-*-r-normal--34-*-*"    # Set the font (a big bold one that's clearly visible)

COLOR = "#287D28"									        # Set the color (Dark Gren)
p = pyosd.osd(font=FONT, colour=COLOR)		  # init pyosd with the font and color
p.display(songtitle  + songartist)          # Finally use Pyosd to display the song title

time.sleep(2)                               # Show the message for 2 seconsd
