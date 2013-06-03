# Path to the directory you want scanned for media files.
#
# This option can be specified more than once if you want multiple directories
# scanned.
#
# If you want to restrict a media_dir to a specific content type, you can
# prepend the directory name with a letter representing the type (A, P or V),
# followed by a comma, as so:
#   * "A" for audio    (eg. media_dir=A,/var/lib/minidlna/music)
#   * "P" for pictures (eg. media_dir=P,/var/lib/minidlna/pictures)
#   * "V" for video    (eg. media_dir=V,/var/lib/minidlna/videos)
#
# WARNING: After changing this option, you need to rebuild the database. Either
#          run minidlna with the '-R' option, or delete the 'files.db' file
#          from the db_dir directory (see below).
#          On Debian, you can run, as root, 'service minidlna force-reload' instead.
default[:minidlna][:media_dir] = "/media"

# Path to the directory that should hold the database and album art cache.
default[:minidlna][:db_dir]    = "/var/lib/minidlna"

# Path to the directory that should hold the log file.
default[:minidlna][:log_dir]   = "/var/log"

# Minimum level of importance of messages to be logged.
# Must be one of "off", "fatal", "error", "warn", "info" or "debug".
# "off" turns of logging entirely, "fatal" is the highest level of importance
# and "debug" the lowest.
default[:minidlna][:log_level] = "warn"

# Use a different container as the root of the directory tree presented to
# clients. The possible values are:
#   * "." - standard container
#   * "B" - "Browse Directory"
#   * "M" - "Music"
#   * "P" - "Pictures"
#   * "V" - "Video"
# if you specify "B" and client device is audio-only then "Music/Folders" will be used as root
default[:minidlna][:root_container] = "."

# Network interface(s) to bind to (e.g. eth0), comma delimited.
default[:minidlna][:network_interface] = ""

# IPv4 address to listen on (e.g. 192.0.2.1).
default[:minidlna][:listening_ip] = ""

# Port number for HTTP traffic (descriptions, SOAP, media transfer).
default[:minidlna][:port] = 8200

# URL presented to clients.
# The default is the IP address of the server on port 80.
default[:minidlna][:presentation_url] = "http://example.com:80"

# Name that the DLNA server presents to clients.
default[:minidlna][:friendly_name] = ""

# Serial number the server reports to clients.
default[:minidlna][:serial]     = 12345678

# Model name the server reports to clients.
default[:minidlna][:model_name] = "Windows Media Connect compatible (MiniDLNA)"

# Model number the server reports to clients.
default[:minidlna][:model_number] = 1

# Automatic discovery of new files in the media_dir directory.
default[:minidlna][:inotify] = "yes"

# List of file names to look for when searching for album art. Names should be
# delimited with a forward slash ("/").
default[:minidlna][:album_art_names] = "Cover.jpg/cover.jpg/AlbumArtSmall.jpg/albumartsmall.jpg/AlbumArt.jpg/albumart.jpg/Album.jpg/album.jpg/Folder.jpg/folder.jpg/Thumb.jpg/thumb.jpg"

# Strictly adhere to DLNA standards.
# This allows server-side downscaling of very large JPEG images, which may
# decrease JPEG serving performance on (at least) Sony DLNA products.
default[:minidlna][:strict_dlna]      = "no"

# Support for streaming .jpg and .mp3 files to a TiVo supporting HMO.
default[:minidlna][:enable_tivo]      = "no"

# Notify interval, in seconds.
default[:minidlna][:notify_interval]  = 895

# Path to the MiniSSDPd socket, for MiniSSDPd support.
default[:minidlna][:minissdpdsocket]  = "/run/minissdpd.sock"

