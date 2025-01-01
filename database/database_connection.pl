# use DBI
# use strict;

# my $driver = "mysql";
# my $database = "db1";
# my $dsn = "DBI:$driver:database=$database";
# my $userid = "root";
# my $password = "";

# my $dbn = DBI->connect($dsn,$userid,$password) or die $DBI::errstr; 




#!/usr/bin/perl
use strict;
use warnings;
use DBI;

my $hostname = "localhost";  
my $database = "db1";  
my $username = "root";  
my $password = ""; 

my $dsn = "DBI:mysql:database=$database;host=$hostname";

my $dbh = DBI->connect($dsn, $username, $password, { RaiseError => 1, AutoCommit => 1 })
    or die "Could not connect to database: " . DBI->errstr;

print "Connected to the database successfully!\n";

my $sth = $dbh->prepare("SELECT NOW()");
$sth->execute();

my $row = $sth->fetchrow_arrayref;
print "Current time in MySQL: $row->[0]\n";

$sth->finish();
$dbh->disconnect();

print "Connection closed.\n";
