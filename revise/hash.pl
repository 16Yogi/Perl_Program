%data1 = ('mohan',20,'rohan',39, 'asha',50,'nirasha',60);
print "%data1\n";
print "\%data = $data1{'mohan'}\n";

%data2 = ('mohan'=>20,'rohan'=>39, 'asha'=>50,'nirasha'=>60);
print "\$data2 : $data2{'rohan'}\n";

%data3 = (-mohan=>20,-rohan=>39, -asha=>50,-nirasha=>60);
@array = @data3{-mohan,-asha};
print "\$array : @array\n"; 

@keys = keys %data3;
print "@keys\n";

@values = values %data3;
print "@values\n";

$size1 = @keys;
print "$size1\n";

$size2 = @values;
print "$size2\n";