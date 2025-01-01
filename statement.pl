$name = "Ali";
$age = 20;

# $status = ($age>=18) ? "Seniour citizen\n" : "Not a seniour citizen \n";
# print("$name is $status \n");

# if($age>=18){
#     print("Adult\n");
#     if($age >= 25 || $age >= 30){
#         print("You are to adult\n")
#     }elsif($age>=18 || $age >= 25){
#         print("Good age\n");
#     }else{
#         print("hihihih\n");
#     }
# }else{
#     print("Your are not adult\n");
# }



# -------------------------------

# unless($age >= 30){
#     print("Now you are kids \n");
# }


# ---------------------

# unless($age == 30){
#     print("HiHiHi, this is false\n");
# }else{
#     print("HiHi, Now you understand \n");
# }

# $age = "";
# unless($age){
#     print("HihHi, false\n");
# }else{
#     print("hihi, true\n");
# }

# use Switch;

$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);

switch($var) {
   case 10           { print "number 100\n" }
   case "a"          { print "string a" }
   case [1..10,42]   { print "number in list" }
   case (\@array)    { print "number in list" }
   case (\%hash)     { print "entry in hash" }
   else              { print "previous case not true" }
}


