#!/usr/bin/perl -w
use strict;
use Net::Ping;

my $ip_address = $ARGV[0];
chomp($ip_address);

#Using Net::Ping Module

my $p = Net::Ping->new();


if ( $p->ping($ip_address) ) {
    print "Step - 1: Success!\n";
}
else {
    print "Step - 1: Fail!\n";
}


#Using System Command

my $retval = system("ping -c 2 $ip_address");

if ($retval == 0) {
    print "Step - 2: Success!\n";
} else {
    print "Step - 2: Fail!\n";
}

print "\n\n\ Step2: $retval \n\n";