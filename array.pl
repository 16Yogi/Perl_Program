# my $variable => $

@arr1 = (1,2,3,4);
print("@arr1 \n");

@arr2 = (1,2,'Hello');
print("@arr2\n");

@arr3 = qw/Monday
Tuesday
...
Sunday/;
print("@arr3\n");

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;
print("@days\n");

@var_10 = (1..10); #its an array , but while printing its space spreaded string
@var_20 = (10..20);
@var_abc = (a..z);
print("var_10-@var_10\n");
print("@var_20\n");
print("@var_abc\n");

print("size:",scalar @var_10,"\n");


print("--------------------------\n");
@simp = ("Hello","Hi","By","byebye");
print("@simp\n");
push(@simp,"hahaha"); #add last
print("@simp\n");
unshift(@simp,"hihihihi"); #add first
print("@simp\n");
pop(@simp); #remove last
print("@simp\n");
shift(@simp); #remove first
print("@simp\n"); 

@nums = (1..10);
print("Before - @nums\n");
splice(@nums,5,10,20..30);
print("After - @nums\n");

@foods = qw(pizza steak chicken burgers);
print("Before- @foods\n");
@foods = sort(@foods);
print("After- @foods\n");

@number = (1,2,3,4,(5,6,7));
print("number - @number\n");

# marge
@amar1 = (1,3,5);
@amar2 = (2,4,6);
@amarre = (@amar1,@amar2);
print("@amarre\n");

# selecting
$sel = (5,4,3,2,10)[4];
print "value of var = $sel\n";
@sel2 = (5,4,3,2,1)[1..3];
print("value - @sel2\n");


Today report:
    - Today I learned some perl topics
    - Directories
    - Error Handling
    - Regular expression
    - Sending email
    - Socket programming
    - Basic of OPPs 
