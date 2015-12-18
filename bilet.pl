#!/usr/bin/perl
use strict;
#use warnings;
use DBI;

my $event = "New year night 31.12.2015 19:00";
my $biletmarket;
my @allpartner;
#my $partner2;
my @all;



my $host      = 'localhost';  # имя сервера
my $dbname    = 'biletmarket';   # имя базы данных 
my $user_name = "root";   # имя пользователя
my $password  = "qwerty";     # пароль пользователя
my $dbh = DBI->connect(
      "dbi:mysql:dbname=$dbname;host=$host", # источник данных
      $user_name, $password);
my $sth = $dbh->prepare(
   'SELECT name FROM company');

$sth->execute;

while ( @allpartner = $sth->fetchrow_array) {
      push @all, @allpartner;
} 

#foreach my $element (@allpartner) {
#print "$element ";
#}

#print "$_ " foreach @allpartner;
#print " @all \n";

#for (my $i = 0; $i < scalar @all; $i++) {
#   print " $all[$i] \n";
#}

$biletmarket =  $all[0];

$dbh->disconnect;
$sth->finish;


my $a = 10;
my $b = 300;
my $c =5;
my @sum=($a);
my $q = $c*$b;
my @sum_prod=($c);
my @sum_bil=($q);

print "$event \n";
print "$biletmarket общее количество билетов - $a, проданных - $c на сумму $q \n";
for (my $i = 1; $i < scalar @all; $i++) {
   $a = int rand(20) + 5;
   $b = int rand(500) + 50;
   $c = int rand($a);
   push @sum, $a;
   push @sum_prod , $c;
   my $q = $c*$b;
   push @sum_bil, $q;
   print "$all[$i] общее количество билетов - $a, проданных - $c на сумму $q \n";
}

my $sum;
my $sum_prod;
my $sum_bil;

for (my $i = 0; $i < scalar @sum; $i++) {
   #print "@sum[$i] \n";
   $sum = $sum + @sum[$i];
   #print "$sum \n";
}
#print "$sum \n";

for (my $i = 0; $i < scalar @sum_prod; $i++) {
   $sum_prod = $sum_prod + @sum_prod[$i];
}

for (my $i = 0; $i < scalar @sum_bil; $i++) {
   $sum_bil = $sum_bil + @sum_bil[$i];
}
print "Общее количество билетов - $sum, продано - $sum_prod  на сумму - $sum_bil \n";
