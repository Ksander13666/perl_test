#!/usr/bin/perl
# use strict;
# print "0 0 0 0\n0 0 0 0\n0 0 0 0\n0 0 0 0\n";
my $x11=0; #переменные по координатам
my $x12=2;
my $x13=0;
my $x14=0;
my $x21=2;
my $x22=2;
my $x23=0;
my $x24=2;
my $x31=0;
my $x32=2;
my $x33=0;
my $x34=0;
my $x41=2;
my $x42=0;
my $x43=2;
my $x44=0;

my $mov;
my $MOV;

sub wasd { #ввод с клавиатуры
	my $key=<STDIN>;
	chomp $key;
	$mov = substr($key, 0, 1);
	$MOV =uc($mov); #клавиша ввода
	# print "$MOV\n";
}


#создаем начальную расстановку
my $a=1;
M1:
while ($a<3) {
	my $xrand = int rand(4) +1;
	my $yrand = int rand(4) +1;
	if ($a==1){
		my $one = "$xrand$yrand";
		if ($one==11) {
			$x11=2;
		} elsif ($one==12) {
			$x12=2;
		} elsif ($one==13) {
			$x13=2;
		} elsif ($one==14) {
			$x14=2;
		} elsif ($one==21) {
			$x21=2;
		} elsif ($one==22) {
			$x22=2;
		} elsif ($one==23) {
			$x23=2;
		} elsif ($one==24) {
			$x24=2;
		} elsif ($one==31) {
			$x31=2;
		} elsif ($one==32) {
			$x32=2
		} elsif ($one==33) {
			$x33=2;
		} elsif ($one==34) {
			$x34=2;
		} elsif ($one==41) {
			$x41=2;
		} elsif ($one==42) {
			$x42=2;
		} elsif ($one==43) {
			$x43=2;
		} elsif ($one==44) {
			$x44=2;
		}	
		#print "$one\n";
		} else {
			my $two = "$xrand$yrand";
			my $tworand = (int rand(2) + 1)*2;
		if ($two==11) {
			$x11=$tworand;
		} elsif ($two==12) {
			$x12=$tworand;
		} elsif ($two==13) {
			$x13=$tworand;
		} elsif ($two==14) {
			$x14=$tworand;
		} elsif ($two==21) {
			$x21=$tworand;
		} elsif ($two==22) {
			$x22=$tworand;
		} elsif ($two==23) {
			$x23=$tworand;
		} elsif ($two==24) {
			$x24=$tworand;
		} elsif ($two==31) {
			$x31=$tworand;
		} elsif ($two==32) {
			$x32=$tworand;
		} elsif ($two==33) {
			$x33=$tworand;
		} elsif ($two==34) {
			$x34=$tworand;
		} elsif ($two==41) {
			$x41=$tworand;
		} elsif ($two==42) {
			$x42=$tworand;
		} elsif ($two==43) {
			$x43=$tworand;
		} elsif ($two==44) {
			$x44=$tworand;
		}
			# print "$two\n$tworand\n";
		}
	++$a;
}
system(clear);
print "$x11 $x12 $x13 $x14\n$x21 $x22 $x23 $x24\n$x31 $x32 $x33 $x34\n$x41 $x42 $x43 $x44\n";
print "use key WASD\n";

# my @arrnew;
# my @arrx = ("$x11", "$x12", "$x13", "$x14", "$x21", "$x22", "$x23", "$x24", "$x31", "$x32", "$x33", "$x34", "$x41", "$x42", "$x43", "$x44" );
# foreach my $i (0 .. $#arrx) {
	# if ("$arrx[$i]" == 0 ) {
		# push @arrnew, $arrx[$i];
		# #delete $arrx[$i];
	# }
# my $rndx = int rand($#arrnew);
# $arrnew[$rndx]  = 64


my $play;
while ($play < 42) {
&wasd;
# print "$MOV\n";
if ("$MOV" eq "W") { #первый столбец
	if ("$x11" == 0 ) {  
		$x11 = "$x21";
		if ("$x11" == 0) {
			$x11 = "$x31";
			if ("$x11" == 0) { 
				$x11 = "$x41";
				$x21 = 0;
				$x31 = 0;
				$x41 = 0;
			} elsif ("$x11" == "$x41") {
				$x11 ="$x11"+"$x41";
				$x21 = 0;
				$x31 = 0;
				$x41 = 0;
			} else { 
				$x21 = "$x41";
				$x31 = 0;
				$x41 = 0;
			}
		} elsif ("$x11" == "$x31") {
			$x11 = "$x11"+"$x31";
			$x21 = "$x41";
			$x31 = 0;
			$x41 = 0;
		} elsif ("$x11" == "$x41" && "$x31" == 0 ) {
			$x11="$x11"+"$x41";
			$x21 = 0;
			$x31 = 0;
			$x41 = 0;
		} else {
			$x21="$x31";
			if ("$x21" == "$x41") {
				$x21 = "$x21"+"$x41";
				if ("$x11"=="$x21") {
					$x11 ="$x11"+"$x21";
					$x21 = 0;
					$x31 = 0;
					$x41 = 0;
				} else {
					$x31 = 0;
					$x41 = 0;
				}
			} else {
				$x31 = "$x41";
				$x41 = 0;
			}
		}
	} elsif ("$x11" == "$x21") {
		$x11 = "$x11"+"$x21";
		$x21 = "$x31";
		if ("$x21" == "$x41") {
		 $x21 = "$x21"+"$x41";
		 $x31=0;
		 $x41=0;
		 } else {
		 $x31 = "$x41";
		 $x41=0;
		 }	 
	 } else { #первое число не 0 и первые два не равны
	 	if ("$x21" == 0 ) {
			$x21 = "$x31";
			if ("$x21" ==  0 ) {
				$x21 = "$x41";
				$x31=0;
				$x41=0;
			} elsif ("$x21" ==  "$x41" && "$x31" == 0 ) {
				$x21 = "$x21" + "$x41";
				$x31=0;
				$x41=0;
			} else {
				$x31 = "$x41";
				$x41=0;
			}
	 	} elsif ("$x21" == "$x31") {
			$x21 = "$x21" + "$x31";
			$x31 = "$x41";
			$x41 = 0;
		} else {
			if ("$x31" == 0 ) {
			$x31 = "$x41";
			$x41=0;
			} elsif ("$x31" == "$x41") {
				$x31 ="$x31" + "$x41";
				$x41=0;
				}
			}
	
	 }
	 
	if ("$x12" == 0 ) {  #второй столбец
		$x12 = "$x22";
		if ("$x12" == 0) {
			$x12 = "$x32";
			if ("$x12" == 0) { 
				$x12 = "$x42";
				$x22 = 0;
				$x32 = 0;
				$x42 = 0;
			} elsif ("$x12" == "$x42") {
				$x12 ="$x12"+"$x42";
				$x22 = 0;
				$x32 = 0;
				$x42 = 0;
			} else { 
				$x22 = "$x42";
				$x32 = 0;
				$x42 = 0;
			}
		} elsif ("$x12" == "$x32") {
			$x12 = "$x12"+"$x32";
			$x22 = "$x42";
			$x32 = 0;
			$x42 = 0;
		} elsif ("$x12" == "$x42" && "$x32" == 0 ) {
			$x12="$x12"+"$x42";
			$x22 = 0;
			$x32 = 0;
			$x42 = 0;
		} else {
			$x22="$x32";
			if ("$x22" == "$x42") {
				$x22 = "$x22"+"$x42";
				if ("$x12"=="$x22") {
					$x12 ="$x12"+"$x22";
					$x22 = 0;
					$x32 = 0;
					$x42 = 0;
				} else {
					$x32 = 0;
					$x42 = 0;
				}
			} else {
				$x32 = "$x42";
				$x42 = 0;
			}
		}
	} elsif ("$x12" == "$x22") {
		$x12 = "$x12"+"$x22";
		$x22 = "$x32";
		if ("$x22" == "$x42") {
		 $x22 = "$x22"+"$x42";
		 $x32=0;
		 $x42=0;
		 } else {
		 $x32 = "$x42";
		 $x42=0;
		 }	 
	 } else { #первое число не 0 и первые два не равны
	 	if ("$x22" == 0 ) {
			$x22 = "$x32";
			if ("$x22" ==  0 ) {
				$x22 = "$x42";
				$x32=0;
				$x42=0;
			} elsif ("$x22" ==  "$x42" && "$x32" == 0 ) {
				$x22 = "$x22" + "$x42";
				$x32=0;
				$x42=0;
			} else {
				$x32 = "$x42";
				$x42=0;
			}
	 	} elsif ("$x22" == "$x32") {
			$x22 = "$x22" + "$x32";
			$x32 = "$x42";
			$x42 = 0;
		} else {
			if ("$x32" == 0 ) {
			$x31 = "$x42";
			$x42=0;
			} elsif ("$x32" == "$x42") {
				$x32 ="$x32" + "$x42";
				$x42=0;
				}
			}
	
	 }
 
	if ("$x13" == 0 ) {  #третий столбец
		$x13 = "$x23";
		if ("$x13" == 0) {
			$x13 = "$x33";
			if ("$x13" == 0) { 
				$x13 = "$x43";
				$x23 = 0;
				$x33 = 0;
				$x43 = 0;
			} elsif ("$x13" == "$x43") {
				$x13 ="$x13"+"$x43";
				$x23 = 0;
				$x33 = 0;
				$x43 = 0;
			} else { 
				$x23 = "$x43";
				$x33 = 0;
				$x43 = 0;
			}
		} elsif ("$x13" == "$x33") {
			$x13 = "$x13"+"$x33";
			$x23 = "$x43";
			$x33 = 0;
			$x43 = 0;
		} elsif ("$x13" == "$x43" && "$x33" == 0 ) {
			$x13="$x13"+"$x43";
			$x23 = 0;
			$x33 = 0;
			$x43 = 0;
		} else {
			$x23="$x33";
			if ("$x23" == "$x43") {
				$x23 = "$x23"+"$x43";
				if ("$x13"=="$x23") {
					$x13 ="$x13"+"$x23";
					$x23 = 0;
					$x33 = 0;
					$x43 = 0;
				} else {
					$x33 = 0;
					$x43 = 0;
				}
			} else {
				$x33 = "$x43";
				$x43 = 0;
			}
		}
	} elsif ("$x13" == "$x23") {
		$x13 = "$x13"+"$x23";
		$x23 = "$x33";
		if ("$x23" == "$x43") {
		 $x23 = "$x23"+"$x43";
		 $x33=0;
		 $x43=0;
		 } else {
		 $x33 = "$x43";
		 $x43=0;
		 }	 
	 } else { #первое число не 0 и первые два не равны
	 	if ("$x23" == 0 ) {
			$x23 = "$x33";
			if ("$x23" ==  0 ) {
				$x23 = "$x43";
				$x33=0;
				$x43=0;
			} elsif ("$x23" ==  "$x43" && "$x33" == 0 ) {
				$x23 = "$x23" + "$x43";
				$x33=0;
				$x43=0;
			} else {
				$x33 = "$x43";
				$x43=0;
			}
	 	} elsif ("$x23" == "$x33") {
			$x23 = "$x23" + "$x33";
			$x33 = "$x43";
			$x43 = 0;
		} else {
			if ("$x33" == 0 ) {
			$x33 = "$x43";
			$x43=0;
			} elsif ("$x33" == "$x43") {
				$x33 ="$x33" + "$x43";
				$x43=0;
				}
			}
	
	 }
 
	if ("$x14" == 0 ) {  #четвертый столбец
		$x14 = "$x24";
		if ("$x14" == 0) {
			$x14 = "$x34";
			if ("$x14" == 0) { 
				$x14 = "$x44";
				$x24 = 0;
				$x34 = 0;
				$x44 = 0;
			} elsif ("$x14" == "$x44") {
				$x14 ="$x14"+"$x44";
				$x24 = 0;
				$x34 = 0;
				$x44 = 0;
			} else { 
				$x24 = "$x44";
				$x34 = 0;
				$x44 = 0;
			}
		} elsif ("$x14" == "$x34") {
			$x14 = "$x14"+"$x34";
			$x24 = "$x44";
			$x34 = 0;
			$x44 = 0;
		} elsif ("$x14" == "$x44" && "$x34" == 0 ) {
			$x14="$x14"+"$x44";
			$x24 = 0;
			$x34 = 0;
			$x44 = 0;
		} else {
			$x24="$x34";
			if ("$x24" == "$x44") {
				$x24 = "$x24"+"$x44";
				if ("$x14"=="$x24") {
					$x14 ="$x14"+"$x24";
					$x24 = 0;
					$x34 = 0;
					$x44 = 0;
				} else {
					$x34 = 0;
					$x44 = 0;
				}
			} else {
				$x34 = "$x44";
				$x44 = 0;
			}
		}
	} elsif ("$x14" == "$x24") {
		$x14 = "$x14"+"$x24";
		$x24 = "$x34";
		if ("$x24" == "$x44") {
		 $x24 = "$x24"+"$x44";
		 $x34=0;
		 $x44=0;
		 } else {
		 $x34 = "$x44";
		 $x44=0;
		 }	 
	 } else { #первое число не 0 и первые два не равны
	 	if ("$x24" == 0 ) {
			$x24 = "$x34";
			if ("$x24" ==  0 ) {
				$x24 = "$x44";
				$x34=0;
				$x44=0;
			} elsif ("$x24" ==  "$x44" && "$x34" == 0 ) {
				$x24 = "$x24" + "$x44";
				$x34=0;
				$x44=0;
			} else {
				$x34 = "$x44";
				$x44=0;
			}
	 	} elsif ("$x24" == "$x34") {
			$x24 = "$x24" + "$x34";
			$x34 = "$x44";
			$x44 = 0;
		} else {
			if ("$x34" == 0 ) {
			$x34 = "$x44";
			$x44=0;
			} elsif ("$x34" == "$x44") {
				$x34 ="$x34" + "$x44";
				$x44=0;
				}
			}
	
	 }
 } elsif ("$MOV" eq "Q") {
	exit;
}
# } elsif ("$MOV" eq "S") {
	# print "3";
# } elsif ("$MOV" eq "D") {
	# print "4";
# }
#}
system(clear);
my @arrnew;
my @arrx = ('x11', 'x12', 'x13', 'x14', 'x21', 'x22', 'x23', 'x24', 'x31', 'x32', 'x33', 'x34', 'x41', 'x42', 'x43', 'x44');
my @arry = ("$x11", "$x12", "$x13", "$x14", "$x21", "$x22", "$x23", "$x24", "$x31", "$x32", "$x33", "$x34", "$x41", "$x42", "$x43", "$x44");
foreach my $i (0 .. $#arry) {
	if ("$arry[$i]" == 0 ) {
		push (@arrnew, $arrx[$i]);
		print "$i - $arry[$i]\n";
		print "$i - $arrx[$i]\n";
	}
}
my $randx1 = int rand($#arrnew);#выбираем случайный элемент массива
my $randx2 = int rand($#arrnew);#выбираем случайный элемент массива
# print "$randx\n";
my $first =$arrnew[$randx1];
my $second =$arrnew[$randx2];

my $dop1 = (int rand(2) + 1)*2;#случайное 2 или 4
my $dop2 = (int rand(2) + 1)*2;#случайное 2 или 4
#print "$first = $dop1\n$second = $dop2\n";
#print "@arrnew\n";
last M1 if $first eq "";
if ($first eq "x11") {
			$x11=$dop1;
		} elsif ($first eq "x12") {
			$x12=$dop1;
		} elsif ($first eq "x13") {
			$x13=$dop1;
		} elsif ($first eq "x14") {
			$x14=$dop1;
		} elsif ($first eq "x21") {
			$x21=$dop1;
		} elsif ($first eq "x22") {
			$x22=$dop1;
		} elsif ($first eq "x23") {
			$x23=$dop1;
		} elsif ($first eq "x24") {
			$x24=$dop1;
		} elsif ($first eq "x31") {
			$x31=$dop1;
		} elsif ($first eq "x32") {
			$x32=$dop1;
		} elsif ($first eq "x33") {
			$x33=$dop1;
		} elsif ($first eq "x34") {
			$x34=$dop1;
		} elsif ($first eq "x41") {
			$x41=$dop1;
		} elsif ($first eq "x42") {
			$x42=$dop1;
		} elsif ($first eq "x43") {
			$x43=$dop1;
		} elsif ($first eq "x44") {
			$x44=$dop1;
		} elsif ($first eq "") {
			print "YOU LOSE!";
			last M1;
		}
if ($second eq "x11") {
			$x11=$dop2;
		} elsif ($second eq "x12") {
			$x12=$dop2;
		} elsif ($second eq "x13") {
			$x13=$dop2;
		} elsif ($second eq "x14") {
			$x14=$dop2;
		} elsif ($second eq "x21") {
			$x21=$dop2;
		} elsif ($second eq "x22") {
			$x22=$dop2;
		} elsif ($second eq "x23") {
			$x23=$dop2;
		} elsif ($second eq "x24") {
			$x24=$dop2;
		} elsif ($second eq "x31") {
			$x31=$dop2;
		} elsif ($second eq "x32") {
			$x32=$dop2;
		} elsif ($second eq "x33") {
			$x33=$dop2;
		} elsif ($second eq "x34") {
			$x34=$dop2;
		} elsif ($second eq "x41") {
			$x41=$dop2;
		} elsif ($second eq "x42") {
			$x42=$dop2;
		} elsif ($second eq "x43") {
			$x43=$dop2;
		} elsif ($second eq "x44") {
			$x44=$dop2;
		}		

print "$x11 $x12 $x13 $x14\n$x21 $x22 $x23 $x24\n$x31 $x32 $x33 $x34\n$x41 $x42 $x43 $x44\n";
#print "\n$arrnew[$randx1]\n$arrnew[$randx2]";
}
