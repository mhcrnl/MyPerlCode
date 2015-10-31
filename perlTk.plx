#!/usr/bin/perl

use Tk;
$MW=MainWindow->new;
$hello=$MW->Button(
	-text	=>'salut',
	-command=>sub{print STDOUT "salut!"; exit;} );
	
$hello->pack();
MainLoop;
