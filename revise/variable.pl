# scalar varibale
# $name = "ramu";
# $age = 20;
# $height = 5.6;

# print "$name\n";
# print "$age\n";
# print "$height\n";


# array variable
# in defined using @

#!/usr/bin/perl
# @stu1 = (11,12,124);
# print(@stu1,"\n");
# print(@stu1[1],"\n");
# print "\$name[0] = $stu1[0]\n";
# print "\$age[1] = $stu1[1]\n";
# print "\$height[2]= $stu1[2]\n";


# hash variable

#!/usr/bin/perl
# %data = ('Ramu',20,'manshi',45,'mohan',30);
# print "\$data{'ramu'} = $data{'Ramu'}\n";
# print "\$data{'manshi'} = $data{'manshi'}\n";
# print "\$data{'mohan'} = $data{'mohan'}\n"; 



# -----------------

#!usr/bin/perl

@names = ('ramu','manshi','mohan');

@copy = @names;
$size = @names;

print "@copy\n";
print "$size\n";