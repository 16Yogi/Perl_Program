#note- Loops are always executed when the condition is true, but when the condition is false loops going to exit.

$a = 10;

# while
# while($a<20){
    # print("value: $a\n");
    # $a++;
# }


# until loop- until loops executed when the condition is false but when the condition going to true than it automatically exit.

# until($a>=20){
#     print("Value:$a\n");
#     $a++;
# }


# for loop

# for($b=1;$b<=20;$b++){
#     print("Value:$b\n");
# }


# foreach

# @list = (1,2,3,4,5,6);
# foreach $c(@list){
#     print("value:$c\n");
# }



# do while loop
# $d = 10;
# do{
#     print("Value:$d\n");
#     $d++;
# }while($d<=20);


# nested while loop
# $e = 1;
# $f = 1;
# while($e<=10){
#     print("Table is : $e\n");
#     # $e++;
#     while($f<=10){
#         print("$e x $f =",$e*$f,"\n");
#         $f++;
#         # print($f++,"\n");
#         # $e++;
#     }
#     $e++;
    
# }

# (Not working)


# ----------

for(; ;){
    print("infinate\n");
}