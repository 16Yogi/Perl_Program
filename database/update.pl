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

my $username = "TestUser111";  # New username
my $address = "TestAddress111";  # New address
# my $email = "test111@gmail.com"
my $sth = $dbh->prepare("UPDATE userinfo SET username = ?, address = ? WHERE id = 1");

$sth->bind_param(1, $username);
$sth->bind_param(2, $address);
# $sth->bind_param(3, $email);

$sth->execute();
print "Updated user information\n";

$sth->finish();

$dbh->disconnect();

print "Connection closed\n";
