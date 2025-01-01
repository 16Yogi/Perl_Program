sub fun1{
    $dir = "/tmp/*";
    my @files = glob($dir);
    
    foreach (@files){
        print $_."\n";
    }
}
# fun1();

sub fun2{
    $dir = "test";
    mkdir($dir) or die "Couldn't create $dir,$!";
    print("Directory is created");
}

# fun2();

sub fun3{
    $dir = "test";
    rmdir($dir) or die "Couldn't Deleted $dir,$!";
    print("Directory is deleted");
}
# fun3();