$arr1 = [1,2,3,["four","five","six"]];
print($arr1,"\n");

$arrayref = [1, 2, ['a', 'b', 'c']];
print($arrayref ,"\n");

$arr2 = {
    'name'=>'ramlal',
    'age'=>45
};
print($arr2,"\n");
$re1 = sub {print "helo\n"};
print($rel,"\n");



$var1 = 10;
$var2 = \$var1;
print "value of $var1 is : $$var2\n";


@var3 = (1,2,3);
$var4 = \@var3;
print "value of @var3 is : @$var4\n";

%var5 = ('key1' =>10, 'key2'=>20);
$var6 = \%var5;
print("Value of %var5 is:$var6\n");

sub fun{
    my (%hash) = @_;
    foreach $item (%hash){
        print "item : $item\n";
    }
}
%hash = ('name'=>'ramu kaka', 'age'=>50);
$cref = \&fun;

&$cref(%hash);