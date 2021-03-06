#! /usr/bin/perl -w
# client1.pl - a simple client
#----------------

use strict;
use Socket;

# initialize host and port
my $host = shift || '121.14.58.253';
my $port = shift || 873;

my $proto = getprotobyname('tcp');

# get the port address
my $iaddr = inet_aton($host);
my $paddr = sockaddr_in($port, $iaddr);
# create the socket, connect to the port
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "socket: $!";
connect(SOCKET, $paddr) or die "connect: $!";

close SOCKET or die "close: $!"; 
