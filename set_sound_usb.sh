
# http://askubuntu.com/questions/14077/how-can-i-change-the-default-audio-device-from-command-line
# pacmd list-sinks to list name or index number of possible sinks
# pacmd set-default-sink "SINKNAME" to set the default output sink
# pacmd set-default-source "SOURCENAME" to set the default input
# pacmd set-sink-volume index volume
# pacmd set-source-volume index volume for volume control (0 = Mute, 65536 = 100%)
# and many many more CLI options.

pacmd set-default-sink "alsa_output.usb-045e_Microsoft_LifeChat_LX-3000-00-LX3000.analog-stereo"
pacmd set-default-source "alsa_output.usb-045e_Microsoft_LifeChat_LX-3000-00-LX3000.analog-stereo"
