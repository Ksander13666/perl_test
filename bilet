#!/usr/bin/perl -w
use strict;
use warnings;
use DBI;

my $event = "New year night 31.12.2015 19:00";
my $biletmarket = "Biletmarket";
my @allpartner;
my $partner2;
my @all;



my $host      = 'localhost';  # имя сервера
my $dbname    = 'biletmarket';   # имя базы данных 
my $user_name = "root";   # имя пользователя
my $password  = "qwerty";     # пароль пользователя
my $dbh = DBI->connect(
      "dbi:mysql:dbname=$dbname;host=$host", # источник данных
      $user_name, $password);
my $sth = $dbh->prepare(
   'SELECT * FROM company');

$sth->execute;

while ( @allpartner = $sth->fetchrow_array) {
      push @all, @allpartner;
} 

#foreach my $element (@allpartner) {
#print "$element ";
#}

#print "$_ " foreach @allpartner;
print " @all \n";

$dbh->disconnect;
$sth->finish;
#print "$event \n";
#print "$biletmarket общее количество билетов - 30, проданных - 35 на сумму 6000 \n";
#print "$partner1 общее количество билетов - 30, проданных - 15 на сумму 4000 \n";
#print "Общее количество битлетов - 60, продано - 50 на сумму - \n";
