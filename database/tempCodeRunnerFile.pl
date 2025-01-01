use strict;
use warnings;
use DBI;

my $hostname = "localhost";
my $dbname = "db1"; 
my $username = "root";
my $password = "";

my $dsn = "DBI:mysql:database=$dbname;host=$hostname";

my $dbh = DBI->connect($dsn,$username,$password, { RaiseError=>1,AutoCommit=>1}) 
    or die "Could not connect to database:".DBI->errstr;
print "Connection successfull\n";

my $sth = $dbh->prepare("SELECT NOW()");
$sth->execute();

my $row = $sth->fetchrow_arrayref   ;
print("Current time in MySQL:$row->[0]\n");

$sth->finish();
$dbh->disconnect();
print("Connection closed\n");