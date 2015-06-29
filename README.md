# perl-mp3-file-meta-info-formatter
You have a list of mp3 files that are properly named but on your phone/mp4 you see only the author?
Use this script to extract the artist name and the song title from the file name.  
E.g. you have a file named

`GROUP NAME - SONG NAME.mp3`

But in your phone you see only the "GROUP NAME" part and ellipsis?
Download the script and run it.
The program will split the filename in 2 parts based on the dash - the left one as the artist name and the right one as the song name.

What you need is a perl interpreter.
What you'll most likely get as error would be "Can't locate MP3/Tag.pm in @INC". Don't worry - just enter  
`cpanm MP3::Tag` to download the module. MP3::Tag is the perl module that the program is based on.
