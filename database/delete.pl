use strict;
use warnings;
use DBI;

my $host = "localhost";
my $user = "root";
my $db   = "db1";
my $pass = "";

my $dsn = "DBI:mysql:database=$db;host=$host";

my $dbh = DBI->connect($dsn, $user, $pass, { RaiseError => 1, AutoCommit => 1 })
    or die "DB connection failed: " . DBI->errstr . "\n";

print "DB connected\n";

my $sth = $dbh->prepare("DELETE FROM userinfo WHERE id=3");

$sth->execute();
print "Delete successfully\n";

$sth->finish();

$dbh->disconnect();

print "Connection closed\n";
