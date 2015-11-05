#!/usr/bin/perl

use strict;
use warnings;

use Spreadsheet::ParseExcel::Simple;

my $xls = Spreadsheet::ParseExcel::Simple->read('somaj.xls');
foreach my $sheet ($xls->sheets){
	while ($sheet->has_data) {
		my @data = $sheet->next_row;
		print @data, "\n";
		print $data[3];
	}
	while ($sheet->has_data) {
		my @line = $sheet->next_row;
		print @line;
		my $obj = {
			'anul' => $line[0],
			'Luna' => $line[1],
			'Someri' => $line[2],
		};
		print "Line ---------1", $line[0], "\n";
		print "line-----------2", $line[1], "\n";
		print $line[2];
	}
}
my $book = $xls->book;
print $book;