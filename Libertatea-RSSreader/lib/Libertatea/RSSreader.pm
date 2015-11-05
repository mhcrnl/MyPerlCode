package Libertatea::RSSreader;

use 5.018004;
use strict;
use warnings;
use utf8;
use XML::Feed;
use Carp;

require Exporter;
our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw(Afiseaza);

our $VERSION = '0.01';

sub Afiseaza {
	my $feed = XML::Feed->parse(URI->new('http://www.libertatea.ro/rss.html'))
		or die XML::Feed->errstr;
	print "--------------------".$feed->title."-----------------------\n";
	for my $entry ($feed->entries) {
		print "TITLUL: ".$entry->title, "\n";
		#print "SUMAR: ".$entry->summary,"\n";
		print  "LINK: ".$entry->link, "\n\n";
		print "-----------------------------------------------------\n";
		#print $entry->base, "\n";
	}
}
1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Libertatea::RSSreader - Perl extension for read RSS feed Libertatea.ro

=head1 SYNOPSIS

  use Libertatea::RSSreader;
  Libertatea::RSSreader->Afiseaza;

=head1 DESCRIPTION

Stub documentation for Libertatea::RSSreader, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.



=head2 EXPORT
Afiseaza;



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.
	RSS::Feed;
If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Mihai C, E<lt>mhcrnl@localdomainE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2015 by Mihai C

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.18.4 or,
at your option, any later version of Perl 5 you may have available.


=cut
