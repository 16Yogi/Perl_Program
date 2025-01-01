#!/usr/bin/perl

use DBI;
use strict;
use warnings;

# Database connection details
my $hostname = "localhost";
my $database = "db1";
my $user = "root";
my $password = "";

# DSN for MySQL
my $dsn = "DBI:mysql:database=$database;host=$hostname";

# Connect to the database
my $dbh = DBI->connect($dsn, $user, $password, {
    RaiseError => 1, AutoCommit => 1
}) or die "Could not connect to database: " . DBI->errstr;

# Check successful connection
print "Connected to the database successfully!\n";
print "Current time in MySQL: " . localtime() . "\n";

# Return the database handle to the calling script
return $dbh;



# ----------------------------------------------------------------



# #!/usr/bin/perl

# use DBI;
# use warnings;

# # Database connection parameters
# my $hostname = "localhost";
# my $database = "db1";
# my $user = "root";
# my $password = "";

# # DSN (Data Source Name) for connecting to the MySQL database
# my $dsn = "DBI:mysql:database=$database;host=$hostname";

# # Connect to the database
# my $dbh = DBI->connect($dsn, $user, $password, {
#     RaiseError => 1,
#     AutoCommit => 1,
#     mysql_enable_utf8 => 1,           # Enable UTF-8 encoding
#     mysql_connect_timeout => 10,      # Timeout after 10 seconds
# }) or die "Could not connect to database: " . DBI->errstr;


# print("Connected to the database successfully!\n");

# $dbh->do("USE $database") or die "Could not select database: " . $dbh->errstr;
