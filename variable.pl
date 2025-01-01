$var1 = "This is variable str";
%var2 = ("hello",12,12.20);

@var3 = ("John Paul", "Lisa", "Kumar");

print($var1,"\n");
print(%var2,"\n");
print(@var3,"\n");


@copy = @var3;
@haha = @var3;

print(@copy,"\n");
print(@haha,"\n");

$size = @haha;
print($size,"\n");

