use strict;
use warnings;
use DBI;

my $host = "localhost";
my $user = "root";
my $db_name = "db1";
my $password = "";

# DSN 
my $dsn = "DBI:mysql:database=$db_name;host=$host";

# Connect to the MySQL database
my $dbh = DBI->connect($dsn, $user, $password, { RaiseError => 1, AutoCommit => 1 })
    or die "Connection failed: " . DBI->errstr;

print "Connection successful\n";

# Prepare the SQL statement
my $sth = $dbh->prepare("SELECT NOW()");
$sth->execute();

# Fetch the current time from the database
my $row = $sth->fetchrow_arrayref;
if (defined $row) {
    print("Current time in MySQL: $row->[0]\n");
} else {
    print("No result returned.\n");
}

# Finish the statement handle and disconnect
$sth->finish();
$dbh->disconnect();

print "Connection closed\n";
