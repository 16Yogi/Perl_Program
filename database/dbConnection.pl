use strict;
use warnings;
use DBI;

# Database connection parameters
my $hostname = "localhost";
my $dbname = "db1"; 
my $username = "root";
my $password = "1234";  # Set your root password here

# Define the DSN for DBI connection
my $dsn = "DBI:mysql:database=$dbname;host=$hostname";

# Connect to the database
my $dbh = DBI->connect($dsn, $username, $password, { RaiseError => 1, AutoCommit => 1 })
    or die "Could not connect to database: " . DBI->errstr;

print "Connection successful\n";

# Prepare and execute the SQL query
my $sth = $dbh->prepare("SELECT NOW()");
$sth->execute();

# Fetch the result of the query (current tidbConnection.plme)
my $row = $sth->fetchrow_arrayref();
print("Current time in MySQL: $row->[0]\n");

# Finish the statement handle and disconnect
$sth->finish();
$dbh->disconnect();
print("Connection closed\n");
