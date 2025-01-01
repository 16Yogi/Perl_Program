sub fun1{
    print("Hello I am test fun\n");
}

# fun1();

# ----------------------------------

# passing arugment
sub fun2{
    $n = scalar(@_);
    print("n value:", $n,"\n");
    $sum = 0;
    print("$sum \n");

    foreach $item(@_){
        $sum += $item;
        print("sum:$sum\n");
        print("item:$item\n");
    }

    $average = $sum / $n;
    
    print("average: $average \n");
}

# fun2(10,20,30,40);

sub fun3{
    $n = scalar(@_);
    $sum = 0;

    foreach $item(@_){
        $sum+=$item;
    }

    $average= $sum/$n;
    
    print("average:$average \n");
}
# fun3(10,20,30,40,50);


sub fun4{
    my @list = @_;
    print("Given list : @list \n");
}
$a = 10;
@b = (1, 2, 3, 4);

# fun4($a, @b);


sub fun5 {
    my (%hash) = @_ ;
    foreach my $key (keys %hash){
        my $value = $hash{$key};
        print "$key : $value \n";
    }
}
%hash = ('name'=>'Motichur','age'=>150,'add'=>'MP');
# fun5(%hash);

sub fun6 {
    my (%hash) = @_;
    foreach my $key (keys %hash){
        my $value = $hash{$key};
        print("$key : $value \n");
    }
}
%hash = ('name'=>'Lala lori','age'=>0.6,'add'=>'Dharti');
fun6(%hash);


