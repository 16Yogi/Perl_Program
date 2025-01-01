sub fun1{
    $num1 = 10;
    if($num1>=20){
        print("Ture\n");
    }else{
        print("False\n");
        die("False here \n");
    }
}
# fun1();


sub fun2{
    $num1 = 10;
    warn("Hello this is an error");
}
# fun2();

sub fun3{
    package T;
    require Exporter;
    @ISA = qw/Exporter/;
    @EXPORT = qw/function/;
    use Carp;
    sub function{
        warn "Error in module!";
    }
    function();
}
fun3();
