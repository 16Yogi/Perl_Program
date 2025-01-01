# @var1 = (12,23,25);
# @var2 = ("Mohan","raju","Manshi");
# print "\$var1[0] = $var1[0]\n";
# print "\$var1[1] = $var1[1]\n";
# print "\$var1[2] = $var1[2]\n";
# print "\$var2[0] = $var2[0]\n";
# print "\$var2[1] = $var2[1]\n";
# print "\$var2[2] = $var2[2]\n";



# @var1 = (1,"w2",123.2213);
# @var1 = qw/This is an array/;
# print "@var1\n";
# print "@var1[2]\n";


# sequential Number

# @var1 = (1..10);
# @var2 = (a..z);
# $size = scalar @var1;
# print "@var1\n";
# print "@var2\n";
# print "$var1[3]\n";
# print "$var2[2]\n";
# print "$size\n";


# 
# @coins = ("Quarter","Dime","Nickel","rupeeya");
# print "\@coins = @coins\n";
# push(@coins,"Doller");
# print "\@coins = @coins\n";
# pop(@coins);
# print "\@coins = @coins\n";
# unshift(@coins,"Doller");
# print "\@coins = @coins\n";
# shift(@coins);
# print "\@coins = @coins\n";


# slicing
@sen = qw/hello I am perl programming what about you/;
@wor1 = @sen[2,3,4];
@wor2 = @sen[2..6];

print "\@wor = @wor1 \n";
print "\@wor = @wor2 \n";

# transform string 
@tra1 = split('-',@sen);
print "@tra1[2] \n";

# sort
@short1 = sort(@sen);
print "@short1\n";

@mrg1 = (@wor1,@wor2);
print "@mrg1\n";