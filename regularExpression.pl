sub match{
    $bar = "Hello This is....";
    if($bar=~/is/){
        print("1\n");
    }else{
        print("2\n");
    }
}
# match();


sub fun1{
    $bar = "This is foo and again foo";
    if($bar =~ m[foo]){
        print("1\n");
    }else{
        print("2\n");
    }
}
# fun1();

sub fun2{
    $bar = "This is foo and again foo";
    if($bar =~ m{foo}){
        print("1\n");
    }else{
        print("2\n");
    }
}
# fun2();

sub fun3{
    @list = qw/food foosball subeo footnote terfoot canic footbrdige/;
    foreach(@list){
        $first = $1 if /(foo.*?)/;
        $last = $1 if /(foo.*)/;
    }
    print("First:$first, Last:$last\n");
}
# fun3();


sub fun4{
    $str1 = "Hello This is centOS like santoor";
    $str1 =~ m/o/;
    print "Before: $`\n";
    print "Matched: $&\n";
    print "After: $'\n";
}
fun4();