# @months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
# @days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);
# ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
# print "$mday $months[$mon] $days[$wday] $year[$year]\n";


# -----------------------------------

$datestring = gmtime();
print($datestring,"\n");

# -------------------------
print("----------------------\n");
$epoc = time();
print($epoc,"\n");