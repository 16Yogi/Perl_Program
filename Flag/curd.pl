# #!/usr/bin/perl

# use DBI;
# use strict;
# use warnings;
# use feature 'switch';  # Using 'switch' statement in Perl

# # Database connection details
# my $hostname = "localhost";
# my $database = "db1";
# my $user = "root";
# my $password = "";

# # DSN for MySQL
# my $dsn = "DBI:mysql:database=$database;host=$hostname";

# # Connect to the database
# my $dbh = DBI->connect($dsn, $user, $password, {
#     RaiseError => 1,
#     AutoCommit => 1
# }) or die "Could not connect to database: " . DBI->errstr;

# # Check successful connection
# print "Connected to the database successfully!\n";
# print "Current time in MySQL: " . localtime() . "\n";

# # Task selection
# my $task = 1;  # You can change this to test different cases
# print("------------- Start switch -------------\n\n");

# # Switch statement for different tasks
# given ($task) {
#     when (1) {
#         print("--------- Insert ----------\n");
#         my $name = 'ramlal';
#         my $mobile = '7896541230';
#         my $email = 'ramlal@gmail.com';
#         my $address = 'raipur';

#         # Prepare the insert query for the first table
#         my $sql1 = "INSERT INTO stu_info (name, mobile, email, address) VALUES (?, ?, ?, ?)";
#         my $sth1 = $dbh->prepare($sql1)
#             or die "Failed to prepare the insert query for stu_info: " . $dbh->errstr;

#         # Execute the first insert query
#         $sth1->execute($name, $mobile, $email, $address)
#             or die "Insert into stu_info failed: " . $dbh->errstr;
        
#         print "Record inserted into stu_info table successfully.\n";

#         # Wait for 10 minutes (600 seconds)
#         print "Waiting for 10 minutes before inserting into stu_info2...\n";
#         sleep(600);  # Sleep for 600 seconds (10 minutes)

#         # Now, prepare and execute the insert query for the second table
#         my $sql2 = "INSERT INTO stu_info2 (name, mobile, email, address) VALUES (?, ?, ?, ?)";
#         my $sth2 = $dbh->prepare($sql2)
#             or die "Failed to prepare the insert query for stu_info2: " . $dbh->errstr;
        
#         # Execute the second insert query after the delay
#         $sth2->execute($name, $mobile, $email, $address)
#             or die "Insert into stu_info2 failed: " . $dbh->errstr;

#         print "Record inserted into stu_info2 table successfully after 10 minutes.\n";
#     }

#     when (2) {
#         print("--------- Select ----------\n");

#         # Example SELECT query
#         my $sql = "SELECT id, name, mobile, email, address FROM stu_info";
#         my $sth = $dbh->prepare($sql);
#         $sth->execute() or die "Select failed: " . $dbh->errstr;

#         while (my $row = $sth->fetchrow_hashref) {
#             print "ID: $row->{id}, Name: $row->{name}, Mobile: $row->{mobile}, Email: $row->{email}, Address: $row->{address}\n";
#         }
#     }

#     when (3) {
#         print("--------- Update ----------\n");

#         # Example UPDATE query
#         my $sql = "UPDATE stu_info SET email = ? WHERE name = ?";
#         my $sth = $dbh->prepare($sql);
#         $sth->execute('new.email@example.com', 'ramlal') or die "Update failed: " . $dbh->errstr;

#         print "Record updated successfully.\n";
#     }

#     when (4) {
#         print("--------- Delete ----------\n");

#         # Example DELETE query
#         my $sql = "DELETE FROM stu_info WHERE name = ?";
#         my $sth = $dbh->prepare($sql);
#         $sth->execute('ramlal') or die "Delete failed: " . $dbh->errstr;

#         print "Record deleted successfully.\n";
#     }

#     default {
#         print "Invalid task!\n";
#     }
# }

# # Disconnect from the database
# $dbh->disconnect();





# using front end


#!/usr/bin/perl

use strict;
use warnings;
use CGI;
use DBI;
use JSON;

# Create a new CGI object
my $cgi = CGI->new();

# Set content-type to JSON (for the response)
print $cgi->header('application/json');

# Database connection details
my $hostname = "localhost";
my $database = "db1";    # Your database name
my $user = "root";       # Your DB username
my $password = "";       # Your DB password

# DSN for MySQL
my $dsn = "DBI:mysql:database=$database;host=$hostname";

# Connect to the database
my $dbh = DBI->connect($dsn, $user, $password, {
    RaiseError => 1,
    AutoCommit => 1
}) or die to_json({message => "Could not connect to database: " . DBI->errstr});

# Get the raw POST data (the data sent from the frontend)
my $json_text = $cgi->param('POSTDATA');  # Get POST data as a string

# Check if we have data
if (!$json_text) {
    print to_json({message => "No data received"});
    exit;
}

# Decode the incoming JSON data
my $data;
eval {
    $data = decode_json($json_text);  # Decode JSON
};
if ($@) {
    print to_json({message => "Invalid JSON data received: $@"});
    exit;
}

# Extract values from the decoded data
my $fname = $data->{fname};
my $lname = $data->{lname};
my $mobile = $data->{mobile};
my $email = $data->{email};
my $address = $data->{address};

# Check for missing fields
if (!$fname || !$lname || !$mobile || !$email || !$address) {
    print to_json({message => "Missing required fields"});
    exit;
}

# Prepare and execute the insert query for the first table (stu_info)
my $sql1 = "INSERT INTO stu_info (name, mobile, email, address) VALUES (?, ?, ?, ?)";
my $sth1 = $dbh->prepare($sql1) or die to_json({message => "Failed to prepare insert query for stu_info: " . $dbh->errstr});
$sth1->execute($fname, $mobile, $email, $address) or die to_json({message => "Insert into stu_info failed: " . $dbh->errstr});

# Prepare and execute the insert query for the second table (stu_info2)
my $sql2 = "INSERT INTO stu_info2 (name, mobile, email, address) VALUES (?, ?, ?, ?)";
my $sth2 = $dbh->prepare($sql2) or die to_json({message => "Failed to prepare insert query for stu_info2: " . $dbh->errstr});
$sth2->execute($fname, $mobile, $email, $address) or die to_json({message => "Insert into stu_info2 failed: " . $dbh->errstr});

# Close the database connection
$dbh->disconnect();

# Return success message in JSON format
print to_json({message => "inserted"});
