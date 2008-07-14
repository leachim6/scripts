#!/usr/bin/env ruby
require 'rubygems'                              # Rubygems
require 'xosd'                                  # OSD Library

osd = XOSD::Xosd.new(5)                         # Initialize XOSD
osd.align = XOSD::TOP
osd.align = XOSD::LEFT
osd.vertical_offset = -100
osd.horizontal_offset = -00
osd.font  = "-*-helvetica-*-r-normal--34-*-*"   # Choose XOSD Font
osd.color = "#287D28"                           # Choose XOSD color (dark green)


t = Time.now                                    # Time Shortcut
current = t.strftime("%m/%d/%Y --  %I:%M%p")    # Month/Day/Year at Hour:Minute AM/PM
osd.display_message(3, current)                 # Show the time
sleep(2)                                        # Display it for 2 seconds
