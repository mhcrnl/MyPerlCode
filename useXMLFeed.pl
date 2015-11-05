#!usr/bin/perl

use XML::Feed;
use utf8;
use strict;
use warnings;
my $feed = XML::Feed->parse(URI->new('http://www.evz.ro/rss.xml'))
		or die XML::Feed->errstr;
print $feed->language, "\n";
print $feed->generator, "\n";		
print $feed->format, "\n";
print $feed->title, "\n";
print $feed->link, "\n";
#print $feed->base([$base]), "\n";
#print $feed->$item->$title, "\n";
#print $feed->tagline([$tagline]);
#print $feed->as_xml;
#print $feed->pubDate, "\n";
#print $feed->$item->title;

for my $entry ($feed->entries) {
	#print $feed->item ;
}


my $gandul=XML::Feed->parse(URI->new('http://feeds.feedburner.com/GandulFinanciar?format=xml'))
		or die XML::Feed->errstr;
print $gandul->title, "\n";		
print $gandul->link, "\n";
print $gandul->tagline, "\n";
print $gandul->author, "\n";
print $gandul->entries, "\n";
print $gandul->next_link, "\n";