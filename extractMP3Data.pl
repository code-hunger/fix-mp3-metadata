#!/usr/bin/env perl
use strict;
use warnings;
use MP3::Tag;

opendir DIR, ".";
$ENV{'MP3TAG_ENCODE_V1_DEFAULT'} = 'UTF-8';
$ENV{'MP3TAG_ENCODE_FILES_DEFAULT'} = 'UTF-8';
MP3::Tag->config(write_v24 => 1);
print "Enter album name:\n";
chomp (my $album = <>);
while (my $file = readdir(DIR)) {
	next unless $file =~ /^(?:\d+\.\s*)?(?<artist>.+?)\-(?<title>.+)\.mp3$/;
	my ($artist, $title) = ($+{artist}, $+{title});
	my $mp3 = MP3::Tag->new($file);
	$mp3->title_set($title);
	$mp3->artist_set($artist);
	$mp3->album_set($album);
	$mp3->update_tags();
	print "Working on file $file. Data: title = ".$mp3->title().", artist = ".$mp3->artist(), "\n";
}
