%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);
print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";

%data1 = ('John Paul'=> 45, 'Lisa' => 30, 'Kumar'=>40);
print "$data1{'John Paul'}\n";

%data2 = (-JohnPaul=> 45, -Lisa => 30, -Kumar=>40);
@array = @data2{-JohnPaul,-Lisa};
print "Array : @array\n";
@names = keys %data2;
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";

if(exists($data1{'John Paul'})){
    print "Lisa is $data1{'Lisa'} Year old\n";
}else{
    print("not exists\n");
}

print("------------------\n");

%data3 = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data3;
$size = @keys;
print("hash size: $size\n");

# add
$data3{'Ali'}=50;
@keys = keys %data3;
$size = @keys;
print("Hash size: $size\n");

# delete
delete $data3{'Ali'};
@keys = keys %data3;
$size = @keys;
print("Hash size: $size\n");