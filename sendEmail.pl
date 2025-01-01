sub fun1{
    $to = 'yogimeravi1606@gmail.com';
    $from = 'singhnaru68@gmail.com';
    $subject = "Test";
    $message = "Test";
    
    open(MAIL,"/usr/sbin/sendmail -t");
    
    print MAIL "To: $to\n";
    print MAIL "From: $from\n";
    print MAIL "Subject: $subject\n\n";
    print MAIL $message;
    
    close(MAIL);
    print "Email send successfully\n";
}
fun1();

sub fun2{
    $to = 'abcd@gmail.com';
    $from = 'webmaster@yourdomain.com';
    $subject = 'Test Email';
    $message = 'This is test email sent by Perl Script';
     
    open(MAIL, "|/usr/sbin/sendmail -t");
     
    # Email Header
    print MAIL "To: $to\n";
    print MAIL "From: $from\n";
    print MAIL "Subject: $subject\n\n";
    # Email Body
    print MAIL $message;
    
    close(MAIL);
    print "Email Sent Successfully\n";
}
# fun2();