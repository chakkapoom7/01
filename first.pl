#!/usr/bin/perl -w
use strict; 
use warnings; 


my $ip_address = $ARGV[0];
chomp($ip_address);


#Using System Command and keep resault to $data
my $data = ` snmpwalk -c public -v 1 udp6:[$ip_address] IP-MIB::ipNetToMediaPhysAddress `;

#test show $data 
chomp($data);
my @aaa = split("IP-MIB::ipNetToMediaPhysAddress.",$data);
#print "\n\n\ Step2:\n $data \n\n asdf \n";

print "\n\n\  $aaa[1] \n \n";

my $size = @aaa - 1;
my $max_index = $#aaa;

print "Size:  $size \n";
print "Max Index: $max_index\n";
