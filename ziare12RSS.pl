#!/usr/bin/perl

use strict;
use warnings;

use XML::Feed;	#Syndication feed parser and auto-discovery 
use Carp;

my $ziare12ore = XML::Feed->parse(URI->new('http://www.ziare.com/rss/12h.xml')) or die XML::Feed->errstr;
print $ziare12ore->format, "\n";
print $ziare12ore->title, "\n";	 #This print the title of feed
print $ziare12ore->tagline, "\n";
print $ziare12ore->description, "\n";
print $ziare12ore->author, "\n";
print $ziare12ore->language, "\n";
print $ziare12ore->copyright, "\n";
#print $ziare12ore->modified, "\n";
#print $ziare12ore->generator, "\n";
#print $ziare12ore->self_link, "\n";
#print $ziare12ore->items, "\n";
#print $ziare12ore->as_xml, "\n\n";

for my $entry ($ziare12ore->entries) {
	print "---".$entry->category,"----".$entry->title, "\n";
	print $entry->link, "\n";
	#print $entry->description, "\n";
	print "\n";
	}
	
