#!usr/bin/perl

use warnings;
use strict;

use XML::Feed;
my $gandul = XML::Feed->parse(URI->new('http://feeds.feedburner.com/GandulInternational?format=xml'))
			or die XML::Feed->errstr;
			
print "Acesta este RSS Feed-ul: 	".$gandul->title, "\n";
print "Adresa web a RSS-ului: 		".$gandul->link, "\n";
print "Limba in care este RSS scris: 	".$gandul->language, "\n";
#print $gandul->lastBuildDate, "\n";
#print $gandul->webMaster, "\n";


# Cauta si gaseste feed-uri
my @feeds = XML::Feed->find_feeds('http://evz.ro/');
print @feeds, "\n";
my $evz = XML::Feed->parse(URI->new('http://evz.ro/rss.xml'))
		or die XML::Feed->errstr;
print $evz->title, "\n";
print $evz->item->title, "\n";



