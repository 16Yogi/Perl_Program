# use strict;
# use warnings;
# use DBI;

# my $host = "localhost";
# my $user = "root";
# my $db   = "db1";
# my $pass = "";

# # connection
# my $dsn = "DBI:mysql:database=$db;host=$host";

# my $dbh = DBI->connect($dsn, $user, $pass, { RaiseError => 1, AutoCommit => 1 })
#     or die "DB connection failed: " . DBI->errstr . "\n";

# print "DB connected\n";

# my $useremail = "yogendrameravis@gmail.com";
# my $username = "Yogendra Meravi";
# my $address = "Bhopal";
# # insert query
# my $sth = $dbh->prepare("INSERT INTO userinfo
#    (username, email, address)
#    values
#    ('$username','$useremail','$address')");

# # my $sth = $dbh->prepare("SELECT NOW()");
# $sth->execute();
# print("inserted...!\n");

# my $row = $sth->fetchrow_arrayref;

# if (defined $row) {
#     print("Current time in MySQL: $row->[0]\n");
# } else {
#     print("Failed to retrieve the current time from MySQL.\n");
# }

# # $sth->finish();
# # $dbh->disconnect();

# print "Connection closed\n";




# -------------------------


use strict;
use warnings;
use DBI;

# Database connection details
my $host = "localhost";
my $user = "root";
my $db   = "db1";
my $pass = "";

# Connect to the database
my $dsn = "DBI:mysql:database=$db;host=$host";

my $dbh = DBI->connect($dsn, $user, $pass, { RaiseError => 1, AutoCommit => 1 })
    or die "DB connection failed: " . DBI->errstr . "\n";

print "DB connected\n";

# User data to insert
my $useremail = 'yogendrameravi@gmail.com';  # Single quotes prevent interpolation
my $username  = "Yogendra";
my $address   = "Bhopal";

# Prepare the INSERT query using placeholders to prevent SQL injection
my $sth = $dbh->prepare("INSERT INTO userinfo (username, email, address) VALUES (?, ?, ?)");

# Bind values to the placeholders
$sth->bind_param(1, $username);
$sth->bind_param(2, $useremail);
$sth->bind_param(3, $address);

# Execute the INSERT query
$sth->execute();
print "Inserted...\n";

$sth->finish();  # Finish the statement handle

# Disconnect from the database
$dbh->disconnect();

print "Connection closed\n";
