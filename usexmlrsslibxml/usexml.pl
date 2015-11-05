use XML::RSS::LibXML;
use XML::Feed;
use XML::Feed::Content;

my $rss=XML::RSS::LibXML->new(version=>'2.0', base => 'http://www.evz.ro/rss.xml');
print "channel: ".$rss->{channel}->{item}->{title}."\n";
print $rss->channel->{title}."\n";
print $rss->version."\n";
print $rss->base."\n";
print $rss->namespaces."\n";
print $rss->items."\n";
print $rss->encoding."\n";
print $rss->modules."\n";
print $rss->output."\n";
print $rss->stylesheets."\n";
print $rss->num_items;

foreach my $item(@{$rss->{item} }) {
	print "  item: $item->{title} ($item->{link})\n";
}	
 my $feed = XML::Feed->parse(URI->new('http://www.evz.ro/rss.xml'))
		or die XML::Feed->errstr;

print $feed->title, "\n";
#print $feed->identity_format($xml), "\n";
print $feed->base, "\n";
print $feed->link, "\n";
print $feed->tagline, "\n";
print $feed->author, "\n";
print $feed->language, "\n";
print $feed->description, "\n";
print $feed->copyright, "\n";
print $feed->modified, "\n";
print $feed->generator, "\n";
print $feed->self_link, "\n";
print $feed->entries, "\n";
print $feed->items, "\n";
print $feed->as_xml, "\n";
print $feed->first_link, "firstlink\n";
print $feed->next_link, "\n";

for my $entry ($feed->entries) {
	print $entry->title, "\n", $entry->summary,"\n\n";
	print $entry->link, "\n";
	print $entry->base, "\n";
}

my $content = $feed->content;
print $content->body;