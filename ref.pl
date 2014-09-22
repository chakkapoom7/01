#!/usr/bin/perl -w
use strict; 
use warnings; 


my $ip_address = $ARGV[0];
chomp($ip_address);


#Using System Command


#my $retval = system("snmpwalk -c public -v 1 udp6:[$ip_address] IP-MIB::ipNetToMediaPhysAddress ");

my $retval = ` snmpwalk -c public -v 1 udp6:[$ip_address] IP-MIB::ipNetToMediaPhysAddress `;
#my $input = <STDIN>;

#if ($retval == 0) {
#    print "Step - 2: Success!\n";
#} else {
#    print "Step - 2: Fail!\n";
#}

print "\n\n\ Step2:\n $retval \n\n asdf \n";
#print "\n\n\ Step2:\n $input \n\n";